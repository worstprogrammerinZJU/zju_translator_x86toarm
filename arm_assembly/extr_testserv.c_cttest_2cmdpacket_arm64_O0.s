	.text
	.globl	cttest_2cmdpacket               // -- Begin function cttest_2cmdpacket
	.p2align	2
	.type	cttest_2cmdpacket,@function
cttest_2cmdpacket:                      // @cttest_2cmdpacket
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
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	ckresp
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_2cmdpacket, .Lfunc_end0-cttest_2cmdpacket
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"use a\r\nuse b\r\n"
	.size	.L.str, 15
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"USING a\r\n"
	.size	.L.str.1, 10
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"USING b\r\n"
	.size	.L.str.2, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp