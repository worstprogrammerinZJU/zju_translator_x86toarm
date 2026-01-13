	.text
	.globl	ctbench_heap_insert             // -- Begin function ctbench_heap_insert
	.p2align	2
	.type	ctbench_heap_insert,@function
ctbench_heap_insert:                    // @ctbench_heap_insert
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	mov	w1, #8
	bl	calloc
	stur	x0, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w2, #1
	mov	w0, w2
	mov	w4, wzr
	str	w4, [sp, #4]                    // 4-byte Folded Spill
	mov	w1, w4
	mov	w3, w4
	bl	make_job
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	str	x0, [x8, x9, lsl #3]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	ldr	x0, [x8, x9, lsl #3]
	bl	assert
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldursw	x10, [x29, #-20]
	ldr	x9, [x9, x10, lsl #3]
	ldr	w9, [x9]
	subs	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldursw	x10, [x29, #-20]
	ldr	x9, [x9, x10, lsl #3]
	str	w8, [x9, #4]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_4:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	adrp	x8, job_setpos
	ldr	w8, [x8, :lo12:job_setpos]
	str	w8, [sp, #16]
	adrp	x8, job_pri_less
	ldr	w8, [x8, :lo12:job_pri_less]
	str	w8, [sp, #20]
	bl	ctresettimer
	stur	wzr, [x29, #-20]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	ldr	x1, [x8, x9, lsl #3]
	add	x0, sp, #8
	bl	heapinsert
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_5
.LBB0_8:
	bl	ctstoptimer
	stur	wzr, [x29, #-20]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	add	x0, sp, #8
	mov	w1, wzr
	bl	heapremove
	bl	job_free
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_9
.LBB0_12:
	ldr	x0, [sp, #8]
	bl	free
	ldur	x0, [x29, #-16]
	bl	free
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	ctbench_heap_insert, .Lfunc_end0-ctbench_heap_insert
                                        // -- End function
	.type	job_setpos,@object              // @job_setpos
	.bss
	.globl	job_setpos
	.p2align	2
job_setpos:
	.word	0                               // 0x0
	.size	job_setpos, 4
	.type	job_pri_less,@object            // @job_pri_less
	.globl	job_pri_less
	.p2align	2
job_pri_less:
	.word	0                               // 0x0
	.size	job_pri_less, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym make_job
	.addrsig_sym assert
	.addrsig_sym ctresettimer
	.addrsig_sym heapinsert
	.addrsig_sym ctstoptimer
	.addrsig_sym job_free
	.addrsig_sym heapremove
	.addrsig_sym free
	.addrsig_sym job_setpos
	.addrsig_sym job_pri_less