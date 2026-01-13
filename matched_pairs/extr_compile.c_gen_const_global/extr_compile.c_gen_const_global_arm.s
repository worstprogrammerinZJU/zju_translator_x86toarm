	.text
	.globl	gen_const_global                // -- Begin function gen_const_global
	.p2align	2
	.type	gen_const_global,@function
gen_const_global:                       // @gen_const_global
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	adrp	x8, STORE_GLOBAL
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	w0, [x8, :lo12:STORE_GLOBAL]
	bl	opcode_describe
	ldr	w8, [x0]
	adrp	x9, OP_HAS_CONSTANT
	ldr	w10, [x9, :lo12:OP_HAS_CONSTANT]
	adrp	x11, OP_HAS_VARIABLE
	ldr	w12, [x11, :lo12:OP_HAS_VARIABLE]
	orr	w12, w10, w12
	adrp	x10, OP_HAS_BINDING
	ldr	w13, [x10, :lo12:OP_HAS_BINDING]
	orr	w12, w12, w13
	and	w8, w8, w12
	ldr	w9, [x9, :lo12:OP_HAS_CONSTANT]
	ldr	w11, [x11, :lo12:OP_HAS_VARIABLE]
	orr	w9, w9, w11
	ldr	w10, [x10, :lo12:OP_HAS_BINDING]
	orr	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w0, [x8, :lo12:STORE_GLOBAL]
	bl	inst_new
	str	x0, [sp, #8]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp, #8]
	str	w8, [x9, #12]
	ldr	x0, [sp, #16]
	bl	strdup
	ldr	x8, [sp, #8]
	str	w0, [x8, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	ldr	x0, [sp, #8]
	bl	inst_block
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	gen_const_global, .Lfunc_end0-gen_const_global
                                        // -- End function
	.type	STORE_GLOBAL,@object            // @STORE_GLOBAL
	.bss
	.globl	STORE_GLOBAL
	.p2align	2
STORE_GLOBAL:
	.word	0                               // 0x0
	.size	STORE_GLOBAL, 4
	.type	OP_HAS_CONSTANT,@object         // @OP_HAS_CONSTANT
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.word	0                               // 0x0
	.size	OP_HAS_CONSTANT, 4
	.type	OP_HAS_VARIABLE,@object         // @OP_HAS_VARIABLE
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.word	0                               // 0x0
	.size	OP_HAS_VARIABLE, 4
	.type	OP_HAS_BINDING,@object          // @OP_HAS_BINDING
	.globl	OP_HAS_BINDING
	.p2align	2
OP_HAS_BINDING:
	.word	0                               // 0x0
	.size	OP_HAS_BINDING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym inst_new
	.addrsig_sym strdup
	.addrsig_sym inst_block
	.addrsig_sym STORE_GLOBAL
	.addrsig_sym OP_HAS_CONSTANT
	.addrsig_sym OP_HAS_VARIABLE
	.addrsig_sym OP_HAS_BINDING