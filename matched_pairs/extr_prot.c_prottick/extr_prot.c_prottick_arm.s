	.text
	.globl	prottick                        // -- Begin function prottick
	.p2align	2
	.type	prottick,@function
prottick:                               // @prottick
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	adrp	x8, tubes
	add	x8, x8, :lo12:tubes
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	mov	x8, #40960
	movk	x8, #12472, lsl #16
	movk	x8, #838, lsl #32
	str	x8, [sp, #40]
	bl	nanoseconds
	stur	x0, [x29, #-24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	soonest_delayed_job
	stur	x0, [x29, #-16]
	cbz	x0, .LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #32]
	bl	min
	str	x0, [sp, #40]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8]
	bl	heapremove
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	mov	w3, wzr
	mov	w2, w3
	bl	enqueue_job
	str	w0, [sp, #28]
	ldr	w8, [sp, #28]
	subs	w8, w8, #1
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	mov	w2, wzr
	bl	bury_job
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_7:
	str	xzr, [sp, #16]
	b	.LBB0_8
.LBB0_8:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	adrp	x9, tubes
	ldr	x9, [x9, :lo12:tubes]
	subs	x8, x8, x9
	b.hs	.LBB0_17
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #32]
	ldur	x8, [x29, #-32]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	b.gt	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=1
	ldur	x8, [x29, #-32]
	str	xzr, [x8, #8]
	bl	process_queue
	b	.LBB0_15
.LBB0_12:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	b.le	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #32]
	bl	min
	str	x0, [sp, #40]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_8 Depth=1
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_8 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_8
.LBB0_17:
	b	.LBB0_18
.LBB0_18:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_22
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_18 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	b.le	.LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #32]
	bl	min
	str	x0, [sp, #40]
	b	.LBB0_22
.LBB0_21:                               //   in Loop: Header=BB0_18 Depth=1
	ldur	x0, [x29, #-8]
	mov	w1, wzr
	bl	heapremove
	ldr	x8, [sp, #8]
	str	xzr, [x8, #8]
	ldr	x0, [sp, #8]
	bl	conn_timeout
	b	.LBB0_18
.LBB0_22:
	bl	epollq_apply
	ldr	x0, [sp, #40]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	prottick, .Lfunc_end0-prottick
                                        // -- End function
	.type	tubes,@object                   // @tubes
	.bss
	.globl	tubes
	.p2align	3
tubes:
	.zero	16
	.size	tubes, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym nanoseconds
	.addrsig_sym soonest_delayed_job
	.addrsig_sym min
	.addrsig_sym heapremove
	.addrsig_sym enqueue_job
	.addrsig_sym bury_job
	.addrsig_sym process_queue
	.addrsig_sym conn_timeout
	.addrsig_sym epollq_apply
	.addrsig_sym tubes