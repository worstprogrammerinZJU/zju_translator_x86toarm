	.text
	.p2align	2                               // -- Begin function stbi__convert_8_to_16
	.type	stbi__convert_8_to_16,@function
stbi__convert_8_to_16:                  // @stbi__convert_8_to_16
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	w2, [sp, #24]
	str	w3, [sp, #20]
	ldur	w8, [x29, #-20]
	ldr	w9, [sp, #24]
	mul	w8, w8, w9
	ldr	w9, [sp, #20]
	mul	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	lsl	w0, w8, #1
	bl	stbi__malloc
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_7
.LBB0_2:
	str	wzr, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #16]
	ldr	w9, [x8, x9, lsl #2]
	ldur	x8, [x29, #-16]
	ldrsw	x10, [sp, #16]
	ldr	w8, [x8, x10, lsl #2]
	add	w9, w8, w9, lsl #8
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	ldr	x9, [sp]
	ldrsw	x10, [sp, #16]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_3
.LBB0_6:
	ldur	x0, [x29, #-16]
	bl	STBI_FREE
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__convert_8_to_16, .Lfunc_end0-stbi__convert_8_to_16
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"outofmem"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Out of memory"
	.size	.L.str.1, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__convert_8_to_16
	.addrsig_sym stbi__malloc
	.addrsig_sym stbi__errpuc
	.addrsig_sym STBI_FREE