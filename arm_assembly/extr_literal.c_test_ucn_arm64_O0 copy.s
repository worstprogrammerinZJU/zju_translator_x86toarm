	.text
	.p2align	2                               // -- Begin function test_ucn
	.type	test_ucn,@function
test_ucn:                               // @test_ucn
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w1, #36
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	mov	x0, x1
	bl	expect_string
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x1
	bl	expect_string
	mov	w1, #88
	stur	w1, [x29, #-4]                  // 4-byte Folded Spill
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldur	w1, [x29, #-4]                  // 4-byte Folded Reload
	mov	w0, w1
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	test_ucn, .Lfunc_end0-test_ucn
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"$"
	.size	.L.str, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_ucn
	.addrsig_sym expect
	.addrsig_sym expect_string