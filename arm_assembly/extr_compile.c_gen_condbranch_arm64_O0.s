	.text
	.globl	gen_condbranch                  // -- Begin function gen_condbranch
	.p2align	2
	.type	gen_condbranch,@function
gen_condbranch:                         // @gen_condbranch
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	adrp	x8, JUMP
	ldr	w0, [x8, :lo12:JUMP]
	ldr	w1, [sp, #8]
	bl	gen_op_target
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	BLOCK
	stur	w0, [x29, #-4]
	adrp	x8, JUMP_F
	ldr	w0, [x8, :lo12:JUMP_F]
	ldur	w1, [x29, #-4]
	bl	gen_op_target
	ldur	w1, [x29, #-4]
	ldr	w2, [sp, #8]
	bl	BLOCK
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	gen_condbranch, .Lfunc_end0-gen_condbranch
                                        // -- End function
	.type	JUMP,@object                    // @JUMP
	.bss
	.globl	JUMP
	.p2align	2
JUMP:
	.word	0                               // 0x0
	.size	JUMP, 4
	.type	JUMP_F,@object                  // @JUMP_F
	.globl	JUMP_F
	.p2align	2
JUMP_F:
	.word	0                               // 0x0
	.size	JUMP_F, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_target
	.addrsig_sym JUMP
	.addrsig_sym JUMP_F