	.text
	.p2align	2                               // -- Begin function test_va_list
	.type	test_va_list,@function
test_va_list:                           // @test_va_list
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp]                        // 8-byte Folded Spill
	bl	fmt
	mov	w1, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	expect_string
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	mov	w1, #3
	stur	w1, [x29, #-4]                  // 4-byte Folded Spill
	bl	fmt
	mov	w1, w0
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	expect_string
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	fmov	d0, #1.00000000
	mov	w2, #6
	fmov	d1, #2.00000000
	adrp	x3, .L.str.5
	add	x3, x3, :lo12:.L.str.5
	bl	fmt
	mov	w1, w0
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	expect_string
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_va_list, .Lfunc_end0-test_va_list
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"3"
	.size	.L.str.1, 2
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"3,1.0,6,2.0,abc"
	.size	.L.str.3, 16
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"%d,%.1f,%d,%.1f,%s"
	.size	.L.str.4, 19
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"abc"
	.size	.L.str.5, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_va_list
	.addrsig_sym expect_string
	.addrsig_sym fmt