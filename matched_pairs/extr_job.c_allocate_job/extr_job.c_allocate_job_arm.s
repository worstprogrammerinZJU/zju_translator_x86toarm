	.text
	.globl	allocate_job                    // -- Begin function allocate_job
	.p2align	2
	.type	allocate_job,@function
allocate_job:                           // @allocate_job
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-12]
	ldursw	x8, [x29, #-12]
	add	x8, x8, #16
	mov	w0, w8
	bl	malloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x0, [sp, #8]
	mov	w1, wzr
	mov	w2, #16
	bl	memset
	bl	nanoseconds
	ldr	x8, [sp, #8]
	str	w0, [x8, #12]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
	add	x8, x8, #16
	ldr	x9, [sp, #8]
	str	x8, [x9]
	ldr	x0, [sp, #8]
	bl	job_list_reset
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	allocate_job, .Lfunc_end0-allocate_job
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OOM"
	.size	.L.str, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym twarnx
	.addrsig_sym memset
	.addrsig_sym nanoseconds
	.addrsig_sym job_list_reset