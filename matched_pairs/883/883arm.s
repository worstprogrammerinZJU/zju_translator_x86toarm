	.text
	.p2align	2                               // -- Begin function make_closure
	.type	make_closure,@function
make_closure:                           // @make_closure
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-24]
	add	x9, x8, #4
	stur	x9, [x29, #-24]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]
	ldur	x8, [x29, #-24]
	add	x9, x8, #4
	stur	x9, [x29, #-24]
	ldr	w8, [x8]
	str	w8, [sp, #32]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-28]
	bl	frame_get_level
	str	w0, [sp, #28]
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #28]
	bl	stack_block
	str	x0, [sp, #16]
	ldr	w8, [sp, #32]
	adrp	x9, ARG_NEWCLOSURE
	ldr	w9, [x9, :lo12:ARG_NEWCLOSURE]
	and	w8, w8, w9
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #32]
	adrp	x9, ARG_NEWCLOSURE
	ldr	w9, [x9, :lo12:ARG_NEWCLOSURE]
	bic	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, lt
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	stur	w8, [x29, #-8]
	ldr	w8, [sp, #28]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #32]
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #0
	cset	w8, ge
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	cset	w8, lt
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #8]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	make_closure, .Lfunc_end0-make_closure
                                        // -- End function
	.type	ARG_NEWCLOSURE,@object          // @ARG_NEWCLOSURE
	.bss
	.globl	ARG_NEWCLOSURE
	.p2align	2
ARG_NEWCLOSURE:
	.word	0                               // 0x0
	.size	ARG_NEWCLOSURE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_closure
	.addrsig_sym frame_get_level
	.addrsig_sym stack_block
	.addrsig_sym assert
	.addrsig_sym ARG_NEWCLOSURE