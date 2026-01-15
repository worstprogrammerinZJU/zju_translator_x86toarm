	.text
	.p2align	2                               // -- Begin function order_cmp
	.type	order_cmp,@function
order_cmp:                              // @order_cmp
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	str	w3, [sp, #16]
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	jv_cmp
	str	w0, [sp, #12]
	ldr	w8, [sp, #16]
	adrp	x9, CMP_OP_LESS
	ldr	w9, [x9, :lo12:CMP_OP_LESS]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	mov	w9, #1
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	tbnz	w8, #31, .LBB0_9
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #16]
	adrp	x9, CMP_OP_LESSEQ
	ldr	w9, [x9, :lo12:CMP_OP_LESSEQ]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w9, [sp, #12]
	mov	w8, #1
	subs	w9, w9, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.le	.LBB0_9
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #16]
	adrp	x9, CMP_OP_GREATEREQ
	ldr	w9, [x9, :lo12:CMP_OP_GREATEREQ]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w9, [sp, #12]
	mov	w8, #1
	subs	w9, w9, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.ge	.LBB0_9
	b	.LBB0_6
.LBB0_6:
	ldr	w9, [sp, #16]
	adrp	x8, CMP_OP_GREATER
	ldr	w10, [x8, :lo12:CMP_OP_GREATER]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, gt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	jv_bool
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	order_cmp, .Lfunc_end0-order_cmp
                                        // -- End function
	.type	CMP_OP_LESS,@object             // @CMP_OP_LESS
	.bss
	.globl	CMP_OP_LESS
	.p2align	2
CMP_OP_LESS:
	.word	0                               // 0x0
	.size	CMP_OP_LESS, 4
	.type	CMP_OP_LESSEQ,@object           // @CMP_OP_LESSEQ
	.globl	CMP_OP_LESSEQ
	.p2align	2
CMP_OP_LESSEQ:
	.word	0                               // 0x0
	.size	CMP_OP_LESSEQ, 4
	.type	CMP_OP_GREATEREQ,@object        // @CMP_OP_GREATEREQ
	.globl	CMP_OP_GREATEREQ
	.p2align	2
CMP_OP_GREATEREQ:
	.word	0                               // 0x0
	.size	CMP_OP_GREATEREQ, 4
	.type	CMP_OP_GREATER,@object          // @CMP_OP_GREATER
	.globl	CMP_OP_GREATER
	.p2align	2
CMP_OP_GREATER:
	.word	0                               // 0x0
	.size	CMP_OP_GREATER, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym order_cmp
	.addrsig_sym jv_free
	.addrsig_sym jv_cmp
	.addrsig_sym jv_bool
	.addrsig_sym CMP_OP_LESS
	.addrsig_sym CMP_OP_LESSEQ
	.addrsig_sym CMP_OP_GREATEREQ
	.addrsig_sym CMP_OP_GREATER