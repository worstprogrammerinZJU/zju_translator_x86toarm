	.text
	.p2align	2                               // -- Begin function stbi__hdr_test
	.type	stbi__hdr_test,@function
stbi__hdr_test:                         // @stbi__hdr_test
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	stbi__hdr_test_core
	str	w0, [sp, #4]
	ldr	x0, [sp, #8]
	bl	stbi__rewind
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__hdr_test_core
	str	w0, [sp, #4]
	ldr	x0, [sp, #8]
	bl	stbi__rewind
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__hdr_test, .Lfunc_end0-stbi__hdr_test
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"#?RADIANCE\n"
	.size	.L.str, 12
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"#?RGBE\n"
	.size	.L.str.1, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_test
	.addrsig_sym stbi__hdr_test_core
	.addrsig_sym stbi__rewind