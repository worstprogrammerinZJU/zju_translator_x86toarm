	.text
	.p2align	2                               // -- Begin function remove_buried_job
	.type	remove_buried_job,@function
remove_buried_job:                      // @remove_buried_job
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
	adrp	x9, Buried
	ldr	x9, [x9, :lo12:Buried]
	subs	x8, x8, x9
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_6
.LBB0_3:
	ldr	x0, [sp]
	bl	job_list_remove
	str	x0, [sp]
	ldr	x8, [sp]
	cbz	x8, .LBB0_5
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
	.size	remove_buried_job, .Lfunc_end0-remove_buried_job
                                        // -- End function
	.type	Buried,@object                  // @Buried
	.bss
	.globl	Buried
	.p2align	3
Buried:
	.xword	0                               // 0x0
	.size	Buried, 8
	.type	global_stat,@object             // @global_stat
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.size	global_stat, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remove_buried_job
	.addrsig_sym job_list_remove
	.addrsig_sym Buried
	.addrsig_sym global_stat