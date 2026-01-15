	.text
	.globl	cttest_peek_ok_unix             // -- Begin function cttest_peek_ok_unix
	.p2align	2
	.type	cttest_peek_ok_unix,@function
cttest_peek_ok_unix:                    // @cttest_peek_ok_unix
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	SERVER_UNIX
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	mustdialunix
	stur	w0, [x29, #-12]
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	mustsend
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	ckresp
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	mustsend
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	ckresp
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-12]
	bl	ckresp
	ldur	x0, [x29, #-8]
	bl	unlink
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_peek_ok_unix, .Lfunc_end0-cttest_peek_ok_unix
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
	.asciz	"peek 1\r\n"
	.size	.L.str.3, 9
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"FOUND 1 1\r\n"
	.size	.L.str.4, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER_UNIX
	.addrsig_sym mustdialunix
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym unlink