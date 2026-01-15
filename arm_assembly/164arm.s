	.text
	.p2align	2                               // -- Begin function f_less
	.type	f_less,@function
f_less:                                 // @f_less
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
	adrp	x8, CMP_OP_LESS
	ldr	w3, [x8, :lo12:CMP_OP_LESS]
	bl	order_cmp
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	f_less, .Lfunc_end0-f_less
                                        // -- End function
	.type	CMP_OP_LESS,@object             // @CMP_OP_LESS
	.bss
	.globl	CMP_OP_LESS
	.p2align	2
CMP_OP_LESS:
	.word	0                               // 0x0
	.size	CMP_OP_LESS, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_less
	.addrsig_sym order_cmp
	.addrsig_sym CMP_OP_LESS