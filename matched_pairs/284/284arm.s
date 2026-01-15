	.text
	.globl	gen_cond                        // -- Begin function gen_cond
	.p2align	2
	.type	gen_cond,@function
gen_cond:                               // @gen_cond
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	adrp	x8, DUP
	ldr	w0, [x8, :lo12:DUP]
	bl	gen_op_simple
	stur	w0, [x29, #-16]                 // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	gen_subexp
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	adrp	x8, POP
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:POP]
	bl	gen_op_simple
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	BLOCK
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	stur	w0, [x29, #-20]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:POP]
	bl	gen_op_simple
	ldur	w1, [x29, #-8]
	bl	BLOCK
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	w0, [sp, #24]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:POP]
	bl	gen_op_simple
	ldur	w1, [x29, #-12]
	bl	BLOCK
	mov	w1, w0
	ldr	w0, [sp, #24]                   // 4-byte Folded Reload
	bl	gen_condbranch
	ldur	w1, [x29, #-20]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-16]                 // 4-byte Folded Reload
	bl	BLOCK
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	gen_cond, .Lfunc_end0-gen_cond
                                        // -- End function
	.type	DUP,@object                     // @DUP
	.bss
	.globl	DUP
	.p2align	2
DUP:
	.word	0                               // 0x0
	.size	DUP, 4
	.type	POP,@object                     // @POP
	.globl	POP
	.p2align	2
POP:
	.word	0                               // 0x0
	.size	POP, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_subexp
	.addrsig_sym gen_condbranch
	.addrsig_sym DUP
	.addrsig_sym POP