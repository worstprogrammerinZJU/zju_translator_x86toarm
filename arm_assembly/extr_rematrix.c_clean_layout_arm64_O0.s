	.text
	.p2align	2                               // -- Begin function clean_layout
	.type	clean_layout,@function
clean_layout:                           // @clean_layout
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	sub	x8, x29, #16
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x0, [x8]
	stur	w1, [x29, #-20]
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	adrp	x9, AV_CH_FRONT_CENTER
	ldr	w9, [x9, :lo12:AV_CH_FRONT_CENTER]
	subs	w8, w8, w9
	b.eq	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-20]
	subs	w9, w9, #1
	and	w8, w8, w9
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w3, [x29, #-20]
	add	x0, sp, #28
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	w1, #128
	mov	w2, #-1
	bl	av_get_channel_layout_string
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x3, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x8, AV_LOG_VERBOSE
	ldr	w1, [x8, :lo12:AV_LOG_VERBOSE]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	av_log
	adrp	x8, AV_CH_FRONT_CENTER
	ldr	w8, [x8, :lo12:AV_CH_FRONT_CENTER]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	clean_layout, .Lfunc_end0-clean_layout
                                        // -- End function
	.type	AV_CH_FRONT_CENTER,@object      // @AV_CH_FRONT_CENTER
	.bss
	.globl	AV_CH_FRONT_CENTER
	.p2align	2
AV_CH_FRONT_CENTER:
	.word	0                               // 0x0
	.size	AV_CH_FRONT_CENTER, 4
	.type	AV_LOG_VERBOSE,@object          // @AV_LOG_VERBOSE
	.globl	AV_LOG_VERBOSE
	.p2align	2
AV_LOG_VERBOSE:
	.word	0                               // 0x0
	.size	AV_LOG_VERBOSE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Treating %s as mono\n"
	.size	.L.str, 21
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clean_layout
	.addrsig_sym av_get_channel_layout_string
	.addrsig_sym av_log
	.addrsig_sym AV_CH_FRONT_CENTER
	.addrsig_sym AV_LOG_VERBOSE