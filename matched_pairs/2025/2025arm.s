	.text
	.p2align	2                               // -- Begin function bury_job
	.type	bury_job,@function
bury_job:                               // @bury_job
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	strb	w2, [sp, #7]
	ldrb	w8, [sp, #7]
	cbz	w8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	walresvupdate
	str	w0, [sp]
	ldr	w8, [sp]
	cbnz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_3:
	ldr	w10, [sp]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	add	x0, x8, #4
	ldr	x1, [sp, #8]
	bl	job_list_insert
	adrp	x9, global_stat
	ldr	w8, [x9, :lo12:global_stat]
	add	w8, w8, #1
	str	w8, [x9, :lo12:global_stat]
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #24]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	adrp	x8, Buried
	ldr	w8, [x8, :lo12:Buried]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #4]
	add	w8, w8, #1
	str	w8, [x9, #4]
	ldrb	w8, [sp, #7]
	cbz	w8, .LBB0_8
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	walwrite
	cbnz	w0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_7:
	ldr	x0, [sp, #16]
	bl	walmaint
	b	.LBB0_8
.LBB0_8:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	bury_job, .Lfunc_end0-bury_job
                                        // -- End function
	.type	global_stat,@object             // @global_stat
	.bss
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.size	global_stat, 4
	.type	Buried,@object                  // @Buried
	.globl	Buried
	.p2align	2
Buried:
	.word	0                               // 0x0
	.size	Buried, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bury_job
	.addrsig_sym walresvupdate
	.addrsig_sym job_list_insert
	.addrsig_sym walwrite
	.addrsig_sym walmaint
	.addrsig_sym global_stat
	.addrsig_sym Buried