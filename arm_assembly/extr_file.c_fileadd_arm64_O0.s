	.text
	.globl	fileadd                         // -- Begin function fileadd
	.p2align	2
	.type	fileadd,@function
fileadd:                                // @fileadd
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	ldr	x9, [x9, #16]
	str	x8, [x9]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #16]
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	b	.LBB0_4
.LBB0_4:
	ldr	x9, [sp]
	ldr	w8, [x9]
	add	w8, w8, #1
	str	w8, [x9]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	fileadd, .Lfunc_end0-fileadd
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig