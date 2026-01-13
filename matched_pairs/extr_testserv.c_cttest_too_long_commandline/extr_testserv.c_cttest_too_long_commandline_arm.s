	.text
	.globl	cttest_too_long_commandline     // -- Begin function cttest_too_long_commandline
	.p2align	2
	.type	cttest_too_long_commandline,@function
cttest_too_long_commandline:            // @cttest_too_long_commandline
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	SERVER
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	str	w0, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #10
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	mustsend
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
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
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	ckresp
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_too_long_commandline, .Lfunc_end0-cttest_too_long_commandline
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	.size	.L.str, 51
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\r\n"
	.size	.L.str.1, 3
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"BAD_FORMAT\r\n"
	.size	.L.str.2, 13
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"put 0 0 1 1\r\n"
	.size	.L.str.3, 14
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"A\r\n"
	.size	.L.str.4, 4
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.5, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp