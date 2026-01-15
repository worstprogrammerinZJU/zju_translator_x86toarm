	.text
	.globl	jq_start                        // -- Begin function jq_start
	.p2align	2
	.type	jq_start,@function
jq_start:                               // @jq_start
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #20]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #16]
	bl	jv_nomem_handler
	ldur	x0, [x29, #-8]
	bl	jq_reset
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #32]
	mov	x8, #-1
	str	x8, [sp, #40]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #40]
	mov	w4, wzr
	mov	w3, w4
	bl	frame_push
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	str	xzr, [x8, #8]
	ldr	x8, [sp, #24]
	str	xzr, [x8]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	stack_push
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	stack_get_pos
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	stack_save
	ldur	w8, [x29, #-16]
	adrp	x9, JQ_DEBUG_TRACE_ALL
	ldr	w9, [x9, :lo12:JQ_DEBUG_TRACE_ALL]
	and	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9, #4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jq_start, .Lfunc_end0-jq_start
                                        // -- End function
	.type	JQ_DEBUG_TRACE_ALL,@object      // @JQ_DEBUG_TRACE_ALL
	.bss
	.globl	JQ_DEBUG_TRACE_ALL
	.p2align	2
JQ_DEBUG_TRACE_ALL:
	.word	0                               // 0x0
	.size	JQ_DEBUG_TRACE_ALL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_nomem_handler
	.addrsig_sym jq_reset
	.addrsig_sym frame_push
	.addrsig_sym stack_push
	.addrsig_sym stack_save
	.addrsig_sym stack_get_pos
	.addrsig_sym JQ_DEBUG_TRACE_ALL