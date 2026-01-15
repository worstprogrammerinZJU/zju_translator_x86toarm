	.text
	.p2align	2                               // -- Begin function f_greatereq
	.type	f_greatereq,@function
f_greatereq:                            // @f_greatereq
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	str	w3, [sp, #12]
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #16]
	ldr	w2, [sp, #12]
	adrp	x8, CMP_OP_GREATEREQ
	ldr	w3, [x8, :lo12:CMP_OP_GREATEREQ]
	bl	order_cmp
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_greatereq, .Lfunc_end0-f_greatereq
                                        // -- End function
	.type	CMP_OP_GREATEREQ,@object        // @CMP_OP_GREATEREQ
	.bss
	.globl	CMP_OP_GREATEREQ
	.p2align	2
CMP_OP_GREATEREQ:
	.word	0                               // 0x0
	.size	CMP_OP_GREATEREQ, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_greatereq
	.addrsig_sym order_cmp
	.addrsig_sym CMP_OP_GREATEREQ