	.text
	.globl	elo_comparator                  // -- Begin function elo_comparator
	.p2align	2
	.type	elo_comparator,@function
elo_comparator:                         // @elo_comparator
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	adrp	x10, current_class
	ldr	x9, [x10, :lo12:current_class]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp, #8]
	ldr	x10, [x10, :lo12:current_class]
	ldr	x9, [x9, x10, lsl #3]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #44]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #16]
	adrp	x10, current_class
	ldr	x9, [x10, :lo12:current_class]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp, #8]
	ldr	x10, [x10, :lo12:current_class]
	ldr	x9, [x9, x10, lsl #3]
	subs	x8, x8, x9
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #-1
	str	w8, [sp, #44]
	b	.LBB0_5
.LBB0_4:
	mov	w8, #1
	str	w8, [sp, #44]
	b	.LBB0_5
.LBB0_5:
	ldr	w0, [sp, #44]
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	elo_comparator, .Lfunc_end0-elo_comparator
                                        // -- End function
	.type	current_class,@object           // @current_class
	.bss
	.globl	current_class
	.p2align	3
current_class:
	.xword	0                               // 0x0
	.size	current_class, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym current_class