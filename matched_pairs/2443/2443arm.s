	.text
	.globl	cttest_peek_bad_format          // -- Begin function cttest_peek_bad_format
	.p2align	2
	.type	cttest_peek_bad_format,@function
cttest_peek_bad_format:                 // @cttest_peek_bad_format
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	SERVER
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	mustsend
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	w0, [sp, #8]
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	mustsend
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	w0, [sp, #8]
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	mustsend
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	w0, [sp, #8]
	bl	ckresp
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_peek_bad_format, .Lfunc_end0-cttest_peek_bad_format
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"peek 18446744073709551616\r\n"
	.size	.L.str, 28
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"BAD_FORMAT\r\n"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"peek 184467440737095516160000000000000000000000000000\r\n"
	.size	.L.str.2, 56
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"peek foo111\r\n"
	.size	.L.str.3, 14
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"peek 111foo\r\n"
	.size	.L.str.4, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp