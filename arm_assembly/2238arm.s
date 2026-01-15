	.text
	.p2align	2                               // -- Begin function stbi__load_and_postprocess_8bit
	.type	stbi__load_and_postprocess_8bit,@function
stbi__load_and_postprocess_8bit:        // @stbi__load_and_postprocess_8bit
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	w4, [x29, #-44]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	ldur	w4, [x29, #-44]
	add	x5, sp, #48
	mov	w6, #8
	bl	stbi__load_main
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_13
.LBB0_2:
	ldr	w8, [sp, #48]
	subs	w8, w8, #8
	b.eq	.LBB0_7
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #48]
	subs	w8, w8, #16
	cset	w8, eq
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	ldr	x8, [sp, #40]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w8, [x8]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	ldur	w8, [x29, #-44]
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_5:
	ldur	w8, [x29, #-44]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	w2, [sp, #32]                   // 4-byte Folded Reload
	ldr	w1, [sp, #28]                   // 4-byte Folded Reload
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #12]                   // 4-byte Folded Reload
	bl	stbi__convert_16_to_8
	str	x0, [sp, #40]
	mov	w8, #8
	str	w8, [sp, #48]
	b	.LBB0_7
.LBB0_7:
	adrp	x8, stbi__vertically_flip_on_load
	ldr	x8, [x8, :lo12:stbi__vertically_flip_on_load]
	cbz	x8, .LBB0_12
	b	.LBB0_8
.LBB0_8:
	ldur	w8, [x29, #-44]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-44]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_10:
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #36]
	ldr	x0, [sp, #40]
	ldur	x8, [x29, #-24]
	ldr	w1, [x8]
	ldur	x8, [x29, #-32]
	ldr	w2, [x8]
	ldrsw	x8, [sp, #36]
	lsl	x8, x8, #2
	mov	w3, w8
	bl	stbi__vertical_flip
	b	.LBB0_12
.LBB0_12:
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	stbi__load_and_postprocess_8bit, .Lfunc_end0-stbi__load_and_postprocess_8bit
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
	.addrsig_sym stbi__load_and_postprocess_8bit
	.addrsig_sym stbi__load_main
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__convert_16_to_8
	.addrsig_sym stbi__vertical_flip
	.addrsig_sym stbi__vertically_flip_on_load