	.text
	.p2align	2                               // -- Begin function remove_ready_job
	.type	remove_ready_job,@function
remove_ready_job:                       // @remove_ready_job
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	adrp	x9, Ready
	ldr	x9, [x9, :lo12:Ready]
	subs	x8, x8, x9
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_6
.LBB0_3:
	ldr	x8, [sp]
	ldr	x8, [x8]
	add	x0, x8, #4
	ldr	x8, [sp]
	ldr	w1, [x8, #24]
	bl	heapremove
	adrp	x9, ready_ct
	ldr	w8, [x9, :lo12:ready_ct]
	subs	w8, w8, #1
	str	w8, [x9, :lo12:ready_ct]
	ldr	x8, [sp]
	ldr	x8, [x8, #16]
	adrp	x9, URGENT_THRESHOLD
	ldr	x9, [x9, :lo12:URGENT_THRESHOLD]
	subs	x8, x8, x9
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x9, global_stat
	ldr	w8, [x9, :lo12:global_stat]
	subs	w8, w8, #1
	str	w8, [x9, :lo12:global_stat]
	ldr	x8, [sp]
	ldr	x9, [x8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp]
	str	x8, [sp, #8]
	b	.LBB0_6
.LBB0_6:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	remove_ready_job, .Lfunc_end0-remove_ready_job
                                        // -- End function
	.type	Ready,@object                   // @Ready
	.bss
	.globl	Ready
	.p2align	3
Ready:
	.xword	0                               // 0x0
	.size	Ready, 8
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
	.addrsig_sym remove_ready_job
	.addrsig_sym heapremove
	.addrsig_sym Ready
	.addrsig_sym ready_ct
	.addrsig_sym URGENT_THRESHOLD
	.addrsig_sym global_stat