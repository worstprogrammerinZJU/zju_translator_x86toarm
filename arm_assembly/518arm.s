	.text
	.globl	get_data_part                   // -- Begin function get_data_part
	.p2align	2
	.type	get_data_part,@function
get_data_part:                          // @get_data_part
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	w2, [x29, #-8]
	mov	w1, wzr
	mov	x2, #64
	bl	memset
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	w8, #1
	str	w8, [x9]
	ldr	w8, [x0, #32]
	ldur	w10, [x29, #-4]
	add	w10, w10, #1
	mul	w8, w8, w10
	ldur	w10, [x29, #-8]
	sdiv	w8, w8, w10
	ldr	w10, [x0, #32]
	ldur	w11, [x29, #-4]
	mul	w10, w10, w11
	ldur	w11, [x29, #-8]
	sdiv	w10, w10, w11
	subs	w8, w8, w10
	str	w8, [x9, #32]
	ldr	w8, [x0, #8]
	ldur	w10, [x29, #-4]
	add	w10, w10, #1
	mul	w8, w8, w10
	ldur	w10, [x29, #-8]
	sdiv	w8, w8, w10
	ldr	w10, [x0, #8]
	ldur	w11, [x29, #-4]
	mul	w10, w10, w11
	ldur	w11, [x29, #-8]
	sdiv	w10, w10, w11
	subs	w8, w8, w10
	str	w8, [x9, #8]
	ldr	w8, [x0, #48]
	str	w8, [x9, #48]
	ldr	w8, [x0, #24]
	str	w8, [x9, #24]
	ldr	x8, [x0, #40]
	ldr	w10, [x0, #32]
	ldur	w11, [x29, #-4]
	mul	w10, w10, w11
	ldur	w11, [x29, #-8]
	sdiv	w10, w10, w11
	add	x8, x8, w10, sxtw
	str	x8, [x9, #40]
	ldr	x8, [x0, #16]
	ldr	w10, [x0, #8]
	ldur	w11, [x29, #-4]
	mul	w10, w10, w11
	ldur	w11, [x29, #-8]
	sdiv	w10, w10, w11
	add	x8, x8, w10, sxtw
	str	x8, [x9, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_data_part, .Lfunc_end0-get_data_part
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig