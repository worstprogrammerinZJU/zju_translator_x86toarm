	.text
	.globl	get_base_args                   // -- Begin function get_base_args
	.p2align	2
	.type	get_base_args,@function
get_base_args:                          // @get_base_args
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x8, [sp]                        // 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	str	x8, [sp, #8]
	mov	w1, wzr
	mov	x2, #48
	bl	memset
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #32]
	str	w8, [x9, #40]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #36]
	str	w8, [x9, #36]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #32]
	str	w8, [x9, #32]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #28]
	str	w8, [x9, #28]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #24]
	str	w8, [x9, #24]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #20]
	str	w8, [x9, #20]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #16]
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #12]
	str	w8, [x9, #12]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	str	w8, [x9, #4]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	str	w8, [x9]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_base_args, .Lfunc_end0-get_base_args
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig