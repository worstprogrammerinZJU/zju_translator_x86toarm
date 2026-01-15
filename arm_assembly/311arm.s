	.text
	.globl	gen_try                         // -- Begin function gen_try
	.p2align	2
	.type	gen_try,@function
gen_try:                                // @gen_try
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-24]
	cbnz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, DUP
	ldr	w0, [x8, :lo12:DUP]
	bl	gen_op_simple
	str	x0, [sp, #40]
	adrp	x8, POP
	ldr	w0, [x8, :lo12:POP]
	bl	gen_op_simple
	str	x0, [sp, #32]
	ldr	x0, [sp, #40]
	ldr	x1, [sp, #32]
	ldur	x2, [x29, #-24]
	bl	BLOCK
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-24]
	b	.LBB0_3
.LBB0_3:
	adrp	x8, JUMP
	ldr	w0, [x8, :lo12:JUMP]
	ldur	x1, [x29, #-24]
	bl	gen_op_target
	str	x0, [sp, #16]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	bl	BLOCK
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-16]
	adrp	x8, FORK_OPT
	ldr	w0, [x8, :lo12:FORK_OPT]
	ldur	x1, [x29, #-16]
	bl	gen_op_target
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	bl	BLOCK
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	gen_try, .Lfunc_end0-gen_try
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
	.type	JUMP,@object                    // @JUMP
	.globl	JUMP
	.p2align	2
JUMP:
	.word	0                               // 0x0
	.size	JUMP, 4
	.type	FORK_OPT,@object                // @FORK_OPT
	.globl	FORK_OPT
	.p2align	2
FORK_OPT:
	.word	0                               // 0x0
	.size	FORK_OPT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_op_target
	.addrsig_sym DUP
	.addrsig_sym POP
	.addrsig_sym JUMP
	.addrsig_sym FORK_OPT