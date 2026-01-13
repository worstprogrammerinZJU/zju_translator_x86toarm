	.text
	.globl	gen_object_matcher              // -- Begin function gen_object_matcher
	.p2align	2
	.type	gen_object_matcher,@function
gen_object_matcher:                     // @gen_object_matcher
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	adrp	x8, DUP
	ldr	w0, [x8, :lo12:DUP]
	bl	gen_op_simple
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	gen_subexp
	str	w0, [sp]                        // 4-byte Folded Spill
	adrp	x8, INDEX
	ldr	w0, [x8, :lo12:INDEX]
	bl	gen_op_simple
	ldr	w1, [sp]                        // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w3, [sp, #8]
	bl	BLOCK
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	gen_object_matcher, .Lfunc_end0-gen_object_matcher
                                        // -- End function
	.type	DUP,@object                     // @DUP
	.bss
	.globl	DUP
	.p2align	2
DUP:
	.word	0                               // 0x0
	.size	DUP, 4
	.type	INDEX,@object                   // @INDEX
	.globl	INDEX
	.p2align	2
INDEX:
	.word	0                               // 0x0
	.size	INDEX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_subexp
	.addrsig_sym DUP
	.addrsig_sym INDEX