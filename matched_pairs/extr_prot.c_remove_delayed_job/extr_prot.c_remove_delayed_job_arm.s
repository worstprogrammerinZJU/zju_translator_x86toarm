	.text
	.p2align	2                               // -- Begin function remove_delayed_job
	.type	remove_delayed_job,@function
remove_delayed_job:                     // @remove_delayed_job
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
	ldr	x8, [x8, #16]
	adrp	x9, Delayed
	ldr	x9, [x9, :lo12:Delayed]
	subs	x8, x8, x9
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_4
.LBB0_3:
	ldr	x8, [sp]
	ldr	x0, [x8, #8]
	ldr	x8, [sp]
	ldr	w1, [x8]
	bl	heapremove
	ldr	x8, [sp]
	str	x8, [sp, #8]
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	remove_delayed_job, .Lfunc_end0-remove_delayed_job
                                        // -- End function
	.type	Delayed,@object                 // @Delayed
	.bss
	.globl	Delayed
	.p2align	3
Delayed:
	.xword	0                               // 0x0
	.size	Delayed, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remove_delayed_job
	.addrsig_sym heapremove
	.addrsig_sym Delayed