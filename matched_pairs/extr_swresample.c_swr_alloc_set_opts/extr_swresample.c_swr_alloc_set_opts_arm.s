	.text
	.globl	swr_alloc_set_opts              // -- Begin function swr_alloc_set_opts
	.p2align	2
	.type	swr_alloc_set_opts,@function
swr_alloc_set_opts:                     // @swr_alloc_set_opts
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	ldr	x8, [x29, #16]
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	stur	w3, [x29, #-28]
	stur	w4, [x29, #-32]
	stur	w5, [x29, #-36]
	str	w6, [sp, #40]
	str	w7, [sp, #36]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	swr_alloc
	stur	x0, [x29, #-16]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_22
.LBB0_4:
	ldr	w8, [sp, #36]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #16]
	ldur	x0, [x29, #-16]
	ldur	w2, [x29, #-20]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_21
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldur	w2, [x29, #-24]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_21
.LBB0_8:
	ldur	x0, [x29, #-16]
	ldur	w2, [x29, #-28]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_21
.LBB0_10:
	ldur	x0, [x29, #-16]
	ldur	w2, [x29, #-32]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_21
.LBB0_12:
	ldur	x0, [x29, #-16]
	ldur	w2, [x29, #-36]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_21
.LBB0_14:
	ldur	x0, [x29, #-16]
	ldr	w2, [sp, #40]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_21
.LBB0_16:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #8]
	bl	av_get_channel_layout_nb_channels
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_21
.LBB0_18:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #4]
	bl	av_get_channel_layout_nb_channels
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	b	.LBB0_21
.LBB0_20:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	mov	w3, wzr
	mov	w2, w3
	bl	av_opt_set_int
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_22
.LBB0_21:
	sub	x8, x29, #16
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	adrp	x8, AV_LOG_ERROR
	ldr	w1, [x8, :lo12:AV_LOG_ERROR]
	adrp	x2, .L.str.9
	add	x2, x2, :lo12:.L.str.9
	bl	av_log
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	swr_free
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_22
.LBB0_22:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	swr_alloc_set_opts, .Lfunc_end0-swr_alloc_set_opts
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ocl"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"osf"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"osr"
	.size	.L.str.2, 4
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"icl"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"isf"
	.size	.L.str.4, 4
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"isr"
	.size	.L.str.5, 4
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"ich"
	.size	.L.str.6, 4
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"och"
	.size	.L.str.7, 4
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"uch"
	.size	.L.str.8, 4
	.type	AV_LOG_ERROR,@object            // @AV_LOG_ERROR
	.bss
	.globl	AV_LOG_ERROR
	.p2align	2
AV_LOG_ERROR:
	.word	0                               // 0x0
	.size	AV_LOG_ERROR, 4
	.type	.L.str.9,@object                // @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"Failed to set option\n"
	.size	.L.str.9, 22
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swr_alloc
	.addrsig_sym av_opt_set_int
	.addrsig_sym av_get_channel_layout_nb_channels
	.addrsig_sym av_log
	.addrsig_sym swr_free
	.addrsig_sym AV_LOG_ERROR