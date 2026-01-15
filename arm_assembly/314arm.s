	.text
	.p2align	2                               // -- Begin function gen_wildvar_binding
	.type	gen_wildvar_binding,@function
gen_wildvar_binding:                    // @gen_wildvar_binding
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	adrp	x8, DUP
	ldr	w0, [x8, :lo12:DUP]
	bl	gen_op_simple
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	ldur	w8, [x29, #-4]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	adrp	x8, STOREV
	ldr	w0, [x8, :lo12:STOREV]
	ldr	x1, [sp, #16]
	bl	gen_op_unbound
	ldr	w1, [sp, #12]
	adrp	x8, OP_HAS_VARIABLE
	ldr	w8, [x8, :lo12:OP_HAS_VARIABLE]
	adrp	x9, OP_BIND_WILDCARD
	ldr	w9, [x9, :lo12:OP_BIND_WILDCARD]
	orr	w2, w8, w9
	bl	block_bind
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	bl	BLOCK
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_wildvar_binding, .Lfunc_end0-gen_wildvar_binding
                                        // -- End function
	.type	DUP,@object                     // @DUP
	.bss
	.globl	DUP
	.p2align	2
DUP:
	.word	0                               // 0x0
	.size	DUP, 4
	.type	STOREV,@object                  // @STOREV
	.globl	STOREV
	.p2align	2
STOREV:
	.word	0                               // 0x0
	.size	STOREV, 4
	.type	OP_HAS_VARIABLE,@object         // @OP_HAS_VARIABLE
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.word	0                               // 0x0
	.size	OP_HAS_VARIABLE, 4
	.type	OP_BIND_WILDCARD,@object        // @OP_BIND_WILDCARD
	.globl	OP_BIND_WILDCARD
	.p2align	2
OP_BIND_WILDCARD:
	.word	0                               // 0x0
	.size	OP_BIND_WILDCARD, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_wildvar_binding
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym block_bind
	.addrsig_sym gen_op_unbound
	.addrsig_sym DUP
	.addrsig_sym STOREV
	.addrsig_sym OP_HAS_VARIABLE
	.addrsig_sym OP_BIND_WILDCARD