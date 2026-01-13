	.text
	.p2align	2                               // -- Begin function fmt_job_stats
	.type	fmt_job_stats,@function
fmt_job_stats:                          // @fmt_job_stats
// %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	wzr, [x29, #-36]
	bl	nanoseconds
	stur	w0, [x29, #-28]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	adrp	x9, Reserved
	ldr	x9, [x9, :lo12:Reserved]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	adrp	x9, Delayed
	ldr	x9, [x9, :lo12:Delayed]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	mov	w9, #51712
	movk	w9, #15258, lsl #16
	sdiv	w8, w8, w9
	stur	w8, [x29, #-32]
	b	.LBB0_4
.LBB0_3:
	stur	wzr, [x29, #-32]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #64]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #64]
	ldr	w8, [x8]
	stur	w8, [x29, #-36]
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-48]                 // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #72]                   // 8-byte Folded Spill
	adrp	x8, STATS_JOB_FMT
	ldr	x8, [x8, :lo12:STATS_JOB_FMT]
	stur	x8, [x29, #-64]                 // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #48]
	stur	w8, [x29, #-56]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #56]
	ldr	w8, [x8]
	stur	w8, [x29, #-52]                 // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	job_state
	ldr	x1, [sp, #72]                   // 8-byte Folded Reload
	ldur	x2, [x29, #-64]                 // 8-byte Folded Reload
	ldur	w3, [x29, #-56]                 // 4-byte Folded Reload
	ldur	w4, [x29, #-52]                 // 4-byte Folded Reload
	mov	w5, w0
	ldur	x0, [x29, #-48]                 // 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	w6, [x8, #44]
	ldur	w8, [x29, #-28]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	mov	w9, #51712
	movk	w9, #15258, lsl #16
	sdiv	w7, w8, w9
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #16]
	sdiv	w17, w8, w9
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #20]
	sdiv	w16, w8, w9
	ldur	w15, [x29, #-32]
	ldur	w14, [x29, #-36]
	ldur	x8, [x29, #-24]
	ldr	w13, [x8, #40]
	ldur	x8, [x29, #-24]
	ldr	w12, [x8, #36]
	ldur	x8, [x29, #-24]
	ldr	w11, [x8, #32]
	ldur	x8, [x29, #-24]
	ldr	w10, [x8, #28]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #24]
	mov	x9, sp
	str	w17, [x9]
	str	w16, [x9, #8]
	str	w15, [x9, #16]
	str	w14, [x9, #24]
	str	w13, [x9, #32]
	str	w12, [x9, #40]
	str	w11, [x9, #48]
	str	w10, [x9, #56]
	str	w8, [x9, #64]
	bl	snprintf
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	ret
.Lfunc_end0:
	.size	fmt_job_stats, .Lfunc_end0-fmt_job_stats
                                        // -- End function
	.type	Reserved,@object                // @Reserved
	.bss
	.globl	Reserved
	.p2align	3
Reserved:
	.xword	0                               // 0x0
	.size	Reserved, 8
	.type	Delayed,@object                 // @Delayed
	.globl	Delayed
	.p2align	3
Delayed:
	.xword	0                               // 0x0
	.size	Delayed, 8
	.type	STATS_JOB_FMT,@object           // @STATS_JOB_FMT
	.globl	STATS_JOB_FMT
	.p2align	3
STATS_JOB_FMT:
	.xword	0
	.size	STATS_JOB_FMT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmt_job_stats
	.addrsig_sym nanoseconds
	.addrsig_sym snprintf
	.addrsig_sym job_state
	.addrsig_sym Reserved
	.addrsig_sym Delayed
	.addrsig_sym STATS_JOB_FMT