	.text
	.p2align	2                               // -- Begin function stbi__addsizes_valid
	.type	stbi__addsizes_valid,@function
stbi__addsizes_valid:                   // @stbi__addsizes_valid
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #8]
	adrp	x9, INT_MAX
	ldr	w9, [x9, :lo12:INT_MAX]
	ldr	w10, [sp, #4]
	subs	w9, w9, w10
	subs	w8, w8, w9
	cset	w8, le
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__addsizes_valid, .Lfunc_end0-stbi__addsizes_valid
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
	.addrsig_sym stbi__addsizes_valid
	.addrsig_sym INT_MAX