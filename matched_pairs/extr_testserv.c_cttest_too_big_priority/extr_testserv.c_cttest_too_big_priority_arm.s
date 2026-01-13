	.text
	.globl	cttest_too_big_priority         // -- Begin function cttest_too_big_priority
	.p2align	2
	.type	cttest_too_big_priority,@function
cttest_too_big_priority:                // @cttest_too_big_priority
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
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_too_big_priority, .Lfunc_end0-cttest_too_big_priority
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 4294967296 0 100 1\r\n"
	.size	.L.str, 25
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"a\r\n"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"BAD_FORMAT\r\n"
	.size	.L.str.2, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp