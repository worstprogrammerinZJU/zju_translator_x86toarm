	.text
	.globl	cttest_put_in_drain             // -- Begin function cttest_put_in_drain
	.p2align	2
	.type	cttest_put_in_drain,@function
cttest_put_in_drain:                    // @cttest_put_in_drain
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, SIGUSR1
	ldr	w0, [x8, :lo12:SIGUSR1]
	bl	enter_drain_mode
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
	.size	cttest_put_in_drain, .Lfunc_end0-cttest_put_in_drain
                                        // -- End function
	.type	SIGUSR1,@object                 // @SIGUSR1
	.bss
	.globl	SIGUSR1
	.p2align	2
SIGUSR1:
	.word	0                               // 0x0
	.size	SIGUSR1, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 1 1\r\n"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"x\r\n"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"DRAINING\r\n"
	.size	.L.str.2, 11
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym enter_drain_mode
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym SIGUSR1