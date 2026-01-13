	.text
	.p2align	2                               // -- Begin function stbi__mul2sizes_valid
	.type	stbi__mul2sizes_valid,@function
stbi__mul2sizes_valid:                  // @stbi__mul2sizes_valid
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #8]
	tbnz	w8, #31, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #12]
	b	.LBB0_6
.LBB0_3:
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #1
	str	w8, [sp, #12]
	b	.LBB0_6
.LBB0_5:
	ldr	w8, [sp, #8]
	adrp	x9, INT_MAX
	ldr	w9, [x9, :lo12:INT_MAX]
	ldr	w10, [sp, #4]
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, le
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	b	.LBB0_6
.LBB0_6:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__mul2sizes_valid, .Lfunc_end0-stbi__mul2sizes_valid
                                        // -- End function
	.type	INT_MAX,@object                 // @INT_MAX
	.bss
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.word	0                               // 0x0
	.size	INT_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__mul2sizes_valid
	.addrsig_sym INT_MAX