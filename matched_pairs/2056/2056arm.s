	.text
	.p2align	2                               // -- Begin function read_duration
	.type	read_duration,@function
read_duration:                          // @read_duration
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp, #16]
	mov	x0, sp
	bl	read_u32
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp]
                                        // kill: def $w8 killed $w8 killed $x8
	mov	w9, #51712
	movk	w9, #15258, lsl #16
	mul	w8, w8, w9
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_duration, .Lfunc_end0-read_duration
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_duration
	.addrsig_sym read_u32