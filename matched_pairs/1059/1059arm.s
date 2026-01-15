	.text
	.globl	heapinsert                      // -- Begin function heapinsert
	.p2align	2
	.type	heapinsert,@function
heapinsert:                             // @heapinsert
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x8, x8, #1
	lsl	x8, x8, #1
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	mov	x8, #8
	mul	x8, x8, x9
	mov	w0, w8
	bl	malloc
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_3:
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	x9, [x8]
	mov	x8, #8
	mul	x8, x8, x9
	mov	w2, w8
	bl	memcpy
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	free
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp]
	ldur	x9, [x29, #-16]
	ldr	x8, [x9]
	add	x8, x8, #1
	str	x8, [x9]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp]
	ldr	x2, [sp, #24]
	bl	set
	ldur	x0, [x29, #-16]
	ldr	x1, [sp]
	bl	siftdown
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	heapinsert, .Lfunc_end0-heapinsert
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym memcpy
	.addrsig_sym free
	.addrsig_sym set
	.addrsig_sym siftdown