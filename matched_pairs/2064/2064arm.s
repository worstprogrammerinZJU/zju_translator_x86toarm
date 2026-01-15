	.text
	.p2align	2                               // -- Begin function remove_this_reserved_job
	.type	remove_this_reserved_job,@function
remove_this_reserved_job:               // @remove_this_reserved_job
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	job_list_remove
	str	x0, [sp]
	ldr	x8, [sp]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x9, global_stat
	ldr	w8, [x9, :lo12:global_stat]
	subs	w8, w8, #1
	str	w8, [x9, :lo12:global_stat]
	ldr	x8, [sp]
	ldr	x9, [x8, #8]
	ldr	w8, [x9]
	subs	w8, w8, #1
	str	w8, [x9]
	ldr	x8, [sp]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	remove_this_reserved_job, .Lfunc_end0-remove_this_reserved_job
                                        // -- End function
	.type	global_stat,@object             // @global_stat
	.bss
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.size	global_stat, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remove_this_reserved_job
	.addrsig_sym job_list_remove
	.addrsig_sym global_stat