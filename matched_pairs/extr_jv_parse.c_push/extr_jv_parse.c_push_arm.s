	.text
	.p2align	2                               // -- Begin function push
	.type	push,@function
push:                                   // @push
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	cset	w8, le
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	lsl	w8, w8, #1
	add	w8, w8, #10
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldrsw	x8, [x8, #4]
	lsl	x8, x8, #2
	mov	w1, w8
	bl	jv_mem_realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #8]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	cset	w8, lt
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	ldr	x12, [sp, #8]
	ldrsw	x10, [x12]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [x12]
	str	w8, [x9, x10, lsl #2]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	push, .Lfunc_end0-push
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push
	.addrsig_sym assert
	.addrsig_sym jv_mem_realloc