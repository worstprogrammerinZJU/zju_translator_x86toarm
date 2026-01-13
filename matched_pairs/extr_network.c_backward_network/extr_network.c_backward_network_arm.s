	.text
	.globl	backward_network                // -- Begin function backward_network
	.p2align	2
	.type	backward_network,@function
backward_network:                       // @backward_network
// %bb.0:
	sub	sp, sp, #240
	stp	x29, x30, [sp, #224]            // 16-byte Folded Spill
	add	x29, sp, #224
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	q0, [x8]
	stur	q0, [x29, #-48]
	ldr	q0, [x8, #16]
	stur	q0, [x29, #-32]
	ldur	q0, [x29, #-48]
	stur	q0, [x29, #-96]
	ldur	q0, [x29, #-32]
	stur	q0, [x29, #-80]
	ldur	w8, [x29, #-40]
	subs	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-52]
	tbnz	w8, #31, .LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	mov	x10, #24
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-52]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	q0, [x8]
	str	q0, [sp, #96]
	ldr	x8, [x8, #16]
	str	x8, [sp, #112]
	ldr	x8, [sp, #112]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_9
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	q0, [x29, #-96]
	stur	q0, [x29, #-48]
	ldur	q0, [x29, #-80]
	stur	q0, [x29, #-32]
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x10, [x29, #-24]
	ldur	w8, [x29, #-52]
	subs	w8, w8, #1
	mov	w9, #24
	smaddl	x8, w8, w9, x10
	ldr	q0, [x8]
	str	q0, [sp, #64]
	ldr	x8, [x8, #16]
	str	x8, [sp, #80]
	ldr	w8, [sp, #76]
	stur	w8, [x29, #-28]
	ldr	w8, [sp, #72]
	stur	w8, [x29, #-32]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-52]
	stur	w8, [x29, #-36]
	ldr	x8, [sp, #96]
	ldr	q0, [sp, #96]
	add	x0, sp, #32
	str	q0, [sp, #32]
	ldr	x9, [sp, #112]
	str	x9, [sp, #48]
	ldur	q0, [x29, #-48]
	mov	x1, sp
	str	q0, [sp]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	blr	x8
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-52]
	subs	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_1
.LBB0_9:
	ldp	x29, x30, [sp, #224]            // 16-byte Folded Reload
	add	sp, sp, #240
	ret
.Lfunc_end0:
	.size	backward_network, .Lfunc_end0-backward_network
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig