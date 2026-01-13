	.text
	.p2align	2                               // -- Begin function stbi__float_postprocess
	.type	stbi__float_postprocess,@function
stbi__float_postprocess:                // @stbi__float_postprocess
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	w4, [sp, #12]
	adrp	x8, stbi__vertically_flip_on_load
	ldr	x8, [x8, :lo12:stbi__vertically_flip_on_load]
	cbz	x8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	cbz	x8, .LBB0_6
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	w8, [sp, #8]
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8]
	ldr	x8, [sp, #24]
	ldr	w2, [x8]
	ldrsw	x8, [sp, #8]
	lsl	x8, x8, #2
	mov	w3, w8
	bl	stbi__vertical_flip
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__float_postprocess, .Lfunc_end0-stbi__float_postprocess
                                        // -- End function
	.type	stbi__vertically_flip_on_load,@object // @stbi__vertically_flip_on_load
	.bss
	.globl	stbi__vertically_flip_on_load
	.p2align	3
stbi__vertically_flip_on_load:
	.xword	0                               // 0x0
	.size	stbi__vertically_flip_on_load, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__float_postprocess
	.addrsig_sym stbi__vertical_flip
	.addrsig_sym stbi__vertically_flip_on_load