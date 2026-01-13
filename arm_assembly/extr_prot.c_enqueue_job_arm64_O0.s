	.text
	.p2align	2                               // -- Begin function enqueue_job
	.type	enqueue_job,@function
enqueue_job:                            // @enqueue_job
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	strb	w3, [sp, #15]
	ldr	x8, [sp, #24]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #32]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	bl	nanoseconds
	ldr	x8, [sp, #16]
	add	x8, x0, x8
	ldr	x9, [sp, #24]
	str	x8, [x9, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	add	x0, x8, #8
	ldr	x1, [sp, #24]
	bl	heapinsert
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_14
.LBB0_3:
	adrp	x8, Delayed
	ldr	w8, [x8, :lo12:Delayed]
	ldr	x9, [sp, #24]
	str	w8, [x9, #16]
	b	.LBB0_9
.LBB0_4:
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	add	x0, x8, #4
	ldr	x1, [sp, #24]
	bl	heapinsert
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_14
.LBB0_6:
	adrp	x8, Ready
	ldr	w8, [x8, :lo12:Ready]
	ldr	x9, [sp, #24]
	str	w8, [x9, #16]
	adrp	x9, ready_ct
	ldr	w8, [x9, :lo12:ready_ct]
	add	w8, w8, #1
	str	w8, [x9, :lo12:ready_ct]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	adrp	x9, URGENT_THRESHOLD
	ldr	x9, [x9, :lo12:URGENT_THRESHOLD]
	subs	x8, x8, x9
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x9, global_stat
	ldr	w8, [x9, :lo12:global_stat]
	add	w8, w8, #1
	str	w8, [x9, :lo12:global_stat]
	ldr	x8, [sp, #24]
	ldr	x9, [x8]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldrb	w8, [sp, #15]
	cbz	w8, .LBB0_13
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	walwrite
	cbnz	w0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	stur	wzr, [x29, #-4]
	b	.LBB0_14
.LBB0_12:
	ldur	x0, [x29, #-16]
	bl	walmaint
	b	.LBB0_13
.LBB0_13:
	bl	process_queue
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_14
.LBB0_14:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	enqueue_job, .Lfunc_end0-enqueue_job
                                        // -- End function
	.type	Delayed,@object                 // @Delayed
	.bss
	.globl	Delayed
	.p2align	2
Delayed:
	.word	0                               // 0x0
	.size	Delayed, 4
	.type	Ready,@object                   // @Ready
	.globl	Ready
	.p2align	2
Ready:
	.word	0                               // 0x0
	.size	Ready, 4
	.type	ready_ct,@object                // @ready_ct
	.globl	ready_ct
	.p2align	2
ready_ct:
	.word	0                               // 0x0
	.size	ready_ct, 4
	.type	URGENT_THRESHOLD,@object        // @URGENT_THRESHOLD
	.globl	URGENT_THRESHOLD
	.p2align	3
URGENT_THRESHOLD:
	.xword	0                               // 0x0
	.size	URGENT_THRESHOLD, 8
	.type	global_stat,@object             // @global_stat
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.size	global_stat, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym enqueue_job
	.addrsig_sym nanoseconds
	.addrsig_sym heapinsert
	.addrsig_sym walwrite
	.addrsig_sym walmaint
	.addrsig_sym process_queue
	.addrsig_sym Delayed
	.addrsig_sym Ready
	.addrsig_sym ready_ct
	.addrsig_sym URGENT_THRESHOLD
	.addrsig_sym global_stat