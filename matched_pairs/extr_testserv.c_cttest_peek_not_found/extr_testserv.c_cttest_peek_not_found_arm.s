	.text
	.globl	cttest_peek_not_found           // -- Begin function cttest_peek_not_found
	.p2align	2
	.type	cttest_peek_not_found,@function
cttest_peek_not_found:                  // @cttest_peek_not_found
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
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	mustsend
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	w0, [sp, #8]
	bl	ckresp
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_peek_not_found, .Lfunc_end0-cttest_peek_not_found
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 1 1\r\n"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"a\r\n"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.2, 13
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"peek 2\r\n"
	.size	.L.str.3, 9
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"NOT_FOUND\r\n"
	.size	.L.str.4, 12
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"peek 18446744073709551615\r\n"
	.size	.L.str.5, 28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp