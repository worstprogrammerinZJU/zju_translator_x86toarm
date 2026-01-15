	.text
	.globl	ledcSetup                       // -- Begin function ledcSetup
	.p2align	2
	.type	ledcSetup,@function
ledcSetup:                              // @ledcSetup
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-12]
	str	d0, [sp, #24]
	str	w1, [sp, #20]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #15
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	movi	d0, #0000000000000000
	stur	d0, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldur	w0, [x29, #-12]
	ldr	d0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	_ledcSetupTimerFreq
	str	d0, [sp, #8]
	ldur	w0, [x29, #-12]
	adrp	x8, LOW
	ldr	w1, [x8, :lo12:LOW]
	bl	_ledcSetupChannel
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	ledcSetup, .Lfunc_end0-ledcSetup
                                        // -- End function
	.type	LOW,@object                     // @LOW
	.bss
	.globl	LOW
	.p2align	2
LOW:
	.word	0                               // 0x0
	.size	LOW, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ledcSetupTimerFreq
	.addrsig_sym _ledcSetupChannel
	.addrsig_sym LOW