	.text
	.globl	spiWaitReady                    // -- Begin function spiWaitReady
	.p2align	2
	.type	spiWaitReady,@function
spiWaitReady:                           // @spiWaitReady
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_5
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_5:
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	spiWaitReady, .Lfunc_end0-spiWaitReady
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig