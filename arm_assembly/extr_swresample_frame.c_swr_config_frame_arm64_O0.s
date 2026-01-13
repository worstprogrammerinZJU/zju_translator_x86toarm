	.text
	.globl	swr_config_frame                // -- Begin function swr_config_frame
	.p2align	2
	.type	swr_config_frame,@function
swr_config_frame:                       // @swr_config_frame
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	x2, [sp]
	ldr	x0, [sp, #16]
	bl	swr_close
	ldr	x8, [sp]
	cbz	x8, .LBB0_8
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	ldr	x8, [sp]
	ldr	w2, [x8, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_17
.LBB0_3:
	ldr	x0, [sp, #16]
	ldr	x8, [sp]
	ldr	w2, [x8, #4]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_17
.LBB0_5:
	ldr	x0, [sp, #16]
	ldr	x8, [sp]
	ldr	w2, [x8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_17
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_16
	b	.LBB0_9
.LBB0_9:
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	w2, [x8, #8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_17
.LBB0_11:
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	w2, [x8, #4]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_17
.LBB0_13:
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	ldr	w2, [x8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	mov	w3, wzr
	bl	av_opt_set_int
	subs	x8, x0, #0
	b.ge	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_17
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	stur	wzr, [x29, #-4]
	b	.LBB0_18
.LBB0_17:
	ldr	x0, [sp, #16]
	adrp	x8, AV_LOG_ERROR
	ldr	w1, [x8, :lo12:AV_LOG_ERROR]
	adrp	x2, .L.str.6
	add	x2, x2, :lo12:.L.str.6
	bl	av_log
	adrp	x8, EINVAL
	ldr	w0, [x8, :lo12:EINVAL]
	bl	AVERROR
	stur	w0, [x29, #-4]
	b	.LBB0_18
.LBB0_18:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	swr_config_frame, .Lfunc_end0-swr_config_frame
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"icl"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"isf"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"isr"
	.size	.L.str.2, 4
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"ocl"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"osf"
	.size	.L.str.4, 4
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"osr"
	.size	.L.str.5, 4
	.type	AV_LOG_ERROR,@object            // @AV_LOG_ERROR
	.bss
	.globl	AV_LOG_ERROR
	.p2align	2
AV_LOG_ERROR:
	.word	0                               // 0x0
	.size	AV_LOG_ERROR, 4
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"Failed to set option\n"
	.size	.L.str.6, 22
	.type	EINVAL,@object                  // @EINVAL
	.bss
	.globl	EINVAL
	.p2align	2
EINVAL:
	.word	0                               // 0x0
	.size	EINVAL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swr_close
	.addrsig_sym av_opt_set_int
	.addrsig_sym av_log
	.addrsig_sym AVERROR
	.addrsig_sym AV_LOG_ERROR
	.addrsig_sym EINVAL