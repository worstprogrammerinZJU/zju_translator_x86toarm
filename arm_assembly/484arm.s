	.text
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	str	x1, [sp, #16]
	bl	readtokens
	str	w0, [sp, #12]
	adrp	x8, ctmaintest
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:ctmaintest]
	ldr	w1, [sp, #12]
	bl	runalltest
	ldr	w0, [sp, #12]
	bl	writetokens
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:ctmaintest]
	bl	report
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_2:
	ldur	w8, [x29, #-8]
	subs	w8, w8, #2
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]
	ldr	x0, [x8, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, ctmainbench
	ldr	w0, [x8, :lo12:ctmainbench]
	bl	runallbench
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	ctmaintest,@object              // @ctmaintest
	.bss
	.globl	ctmaintest
	.p2align	2
ctmaintest:
	.word	0                               // 0x0
	.size	ctmaintest, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-b"
	.size	.L.str, 3
	.type	ctmainbench,@object             // @ctmainbench
	.bss
	.globl	ctmainbench
	.p2align	2
ctmainbench:
	.word	0                               // 0x0
	.size	ctmainbench, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readtokens
	.addrsig_sym runalltest
	.addrsig_sym writetokens
	.addrsig_sym report
	.addrsig_sym strcmp
	.addrsig_sym runallbench
	.addrsig_sym ctmaintest
	.addrsig_sym ctmainbench