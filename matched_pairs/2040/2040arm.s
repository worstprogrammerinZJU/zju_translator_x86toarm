	.text
	.p2align	2                               // -- Begin function fmt_stats_tube
	.type	fmt_stats_tube,@function
fmt_stats_tube:                         // @fmt_stats_tube
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	subs	w8, w8, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #4]
	stur	w8, [x29, #-32]                 // 4-byte Folded Spill
	bl	nanoseconds
	ldur	w8, [x29, #-32]                 // 4-byte Folded Reload
	subs	w8, w8, w0
	mov	w9, #51712
	movk	w9, #15258, lsl #16
	sdiv	w8, w8, w9
	stur	w8, [x29, #-28]
	b	.LBB0_3
.LBB0_2:
	stur	wzr, [x29, #-28]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	adrp	x8, STATS_TUBE_FMT
	ldr	x2, [x8, :lo12:STATS_TUBE_FMT]
	ldur	x8, [x29, #-24]
	ldr	w3, [x8, #52]
	ldur	x8, [x29, #-24]
	ldr	w4, [x8, #32]
	ldur	x8, [x29, #-24]
	ldr	w5, [x8, #48]
	ldur	x8, [x29, #-24]
	ldr	w6, [x8, #28]
	ldur	x8, [x29, #-24]
	ldr	w7, [x8, #44]
	ldur	x8, [x29, #-24]
	ldr	w17, [x8, #24]
	ldur	x8, [x29, #-24]
	ldr	w16, [x8, #20]
	ldur	x8, [x29, #-24]
	ldr	w15, [x8, #40]
	ldur	x8, [x29, #-24]
	ldr	w14, [x8, #36]
	ldur	x8, [x29, #-24]
	ldr	w13, [x8, #16]
	ldur	x8, [x29, #-24]
	ldr	w12, [x8, #12]
	ldur	x8, [x29, #-24]
	ldr	w11, [x8, #8]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	mov	w9, #51712
	movk	w9, #15258, lsl #16
	sdiv	w10, w8, w9
	ldur	w8, [x29, #-28]
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
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	fmt_stats_tube, .Lfunc_end0-fmt_stats_tube
                                        // -- End function
	.type	STATS_TUBE_FMT,@object          // @STATS_TUBE_FMT
	.bss
	.globl	STATS_TUBE_FMT
	.p2align	3
STATS_TUBE_FMT:
	.xword	0
	.size	STATS_TUBE_FMT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmt_stats_tube
	.addrsig_sym nanoseconds
	.addrsig_sym snprintf
	.addrsig_sym STATS_TUBE_FMT