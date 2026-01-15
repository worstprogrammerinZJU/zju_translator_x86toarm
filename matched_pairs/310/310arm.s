	.text
	.globl	gen_subexp                      // -- Begin function gen_subexp
	.p2align	2
	.type	gen_subexp,@function
gen_subexp:                             // @gen_subexp
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	block_is_noop
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, DUP
	ldr	w0, [x8, :lo12:DUP]
	bl	gen_op_simple
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_2:
	ldur	x0, [x29, #-16]
	bl	block_is_single
	cbz	x0, .LBB0_5
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, LOADK
	ldr	x9, [x9, :lo12:LOADK]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	block_const
	stur	w0, [x29, #-20]
	ldur	x0, [x29, #-16]
	bl	block_free
	ldur	w0, [x29, #-20]
	bl	gen_op_pushk_under
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_5:
	adrp	x8, SUBEXP_BEGIN
	ldr	w0, [x8, :lo12:SUBEXP_BEGIN]
	bl	gen_op_simple
	str	x0, [sp, #16]
	adrp	x8, SUBEXP_END
	ldr	w0, [x8, :lo12:SUBEXP_END]
	bl	gen_op_simple
	str	x0, [sp, #8]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #8]
	bl	BLOCK
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	gen_subexp, .Lfunc_end0-gen_subexp
                                        // -- End function
	.type	DUP,@object                     // @DUP
	.bss
	.globl	DUP
	.p2align	2
DUP:
	.word	0                               // 0x0
	.size	DUP, 4
	.type	LOADK,@object                   // @LOADK
	.globl	LOADK
	.p2align	3
LOADK:
	.xword	0                               // 0x0
	.size	LOADK, 8
	.type	SUBEXP_BEGIN,@object            // @SUBEXP_BEGIN
	.globl	SUBEXP_BEGIN
	.p2align	2
SUBEXP_BEGIN:
	.word	0                               // 0x0
	.size	SUBEXP_BEGIN, 4
	.type	SUBEXP_END,@object              // @SUBEXP_END
	.globl	SUBEXP_END
	.p2align	2
SUBEXP_END:
	.word	0                               // 0x0
	.size	SUBEXP_END, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_is_noop
	.addrsig_sym gen_op_simple
	.addrsig_sym block_is_single
	.addrsig_sym block_const
	.addrsig_sym block_free
	.addrsig_sym gen_op_pushk_under
	.addrsig_sym BLOCK
	.addrsig_sym DUP
	.addrsig_sym LOADK
	.addrsig_sym SUBEXP_BEGIN
	.addrsig_sym SUBEXP_END