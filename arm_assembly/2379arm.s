	.text
	.globl	ctbench_heap_remove             // -- Begin function ctbench_heap_remove
	.p2align	2
	.type	ctbench_heap_remove,@function
ctbench_heap_remove:                    // @ctbench_heap_remove
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	adrp	x8, job_setpos
	ldr	w8, [x8, :lo12:job_setpos]
	str	w8, [sp, #32]
	adrp	x8, job_pri_less
	ldr	w8, [x8, :lo12:job_pri_less]
	str	w8, [sp, #36]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w2, #1
	mov	w0, w2
	mov	w4, wzr
	mov	w1, w4
	mov	w3, w4
	bl	make_job
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	assertf
	ldr	x1, [sp, #8]
	add	x0, sp, #24
	bl	heapinsert
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	ldur	w0, [x29, #-4]
	mov	w1, #8
	bl	calloc
	str	x0, [sp]
	bl	ctresettimer
	str	wzr, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	add	x0, sp, #24
	mov	w1, wzr
	bl	heapremove
	ldr	x8, [sp]
	ldrsw	x9, [sp, #20]
	str	x0, [x8, x9, lsl #3]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_8:
	bl	ctstoptimer
	ldr	x0, [sp, #24]
	bl	free
	str	wzr, [sp, #20]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp]
	ldrsw	x9, [sp, #20]
	ldr	x0, [x8, x9, lsl #3]
	bl	job_free
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_9
.LBB0_12:
	ldr	x0, [sp]
	bl	free
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	ctbench_heap_remove, .Lfunc_end0-ctbench_heap_remove
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
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"allocate job"
	.size	.L.str, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_job
	.addrsig_sym assertf
	.addrsig_sym heapinsert
	.addrsig_sym calloc
	.addrsig_sym ctresettimer
	.addrsig_sym heapremove
	.addrsig_sym ctstoptimer
	.addrsig_sym free
	.addrsig_sym job_free
	.addrsig_sym job_setpos
	.addrsig_sym job_pri_less