	.text
	.p2align	2                               // -- Begin function test_string
	.type	test_string,@function
test_string:                            // @test_string
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, .L__const.test_string.s
	add	x8, x8, :lo12:.L__const.test_string.s
	ldr	w8, [x8]
	sub	x1, x29, #4
	stur	w8, [x29, #-4]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	expect_string
	adrp	x8, .L__const.test_string.t
	add	x8, x8, :lo12:.L__const.test_string.t
	ldr	w8, [x8]
	add	x1, sp, #8
	str	w8, [sp, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	expect_string
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	test_string, .Lfunc_end0-test_string
                                        // -- End function
	.type	.L__const.test_string.s,@object // @__const.test_string.s
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.test_string.s:
	.asciz	"abc"
	.size	.L__const.test_string.s, 4
	.type	.L.str,@object                  // @.str
.L.str:
	.asciz	"abc"
	.size	.L.str, 4
	.type	.L__const.test_string.t,@object // @__const.test_string.t
.L__const.test_string.t:
	.asciz	"def"
	.size	.L__const.test_string.t, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"def"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_string
	.addrsig_sym expect_string