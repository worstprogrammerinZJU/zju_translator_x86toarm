	.text
	.globl	vec_head                        // -- Begin function vec_head
	.p2align	2
	.type	vec_head,@function
vec_head:                               // @vec_head
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, gt
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	vec_head, .Lfunc_end0-vec_head
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert