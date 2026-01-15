	.text
	.globl	read_int                        // -- Begin function read_int
	.p2align	2
	.type	read_int,@function
read_int:                               // @read_int
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	w0, [sp, #8]
	add	x1, sp, #4
	str	wzr, [sp, #4]
	ldr	w0, [sp, #8]
	mov	w2, #4
	bl	read
	str	w0, [sp]
	ldr	w8, [sp]
	subs	w8, w8, #0
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_int, .Lfunc_end0-read_int
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read