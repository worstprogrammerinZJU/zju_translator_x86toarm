	.text
	.globl	job_free                        // -- Begin function job_free
	.p2align	2
	.type	job_free,@function
job_free:                               // @job_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	mov	x1, xzr
	bl	TUBE_ASSIGN
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, Copy
	ldr	x9, [x9, :lo12:Copy]
	subs	x8, x8, x9
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	job_hash_free
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #8]
	bl	free
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	job_free, .Lfunc_end0-job_free
                                        // -- End function
	.type	Copy,@object                    // @Copy
	.bss
	.globl	Copy
	.p2align	3
Copy:
	.xword	0                               // 0x0
	.size	Copy, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym job_hash_free
	.addrsig_sym free
	.addrsig_sym Copy