	.text
	.p2align	2                               // -- Begin function stbi__pnm_load
	.type	stbi__pnm_load,@function
stbi__pnm_load:                         // @stbi__pnm_load
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #24]
	str	w4, [sp, #20]
	str	x5, [sp, #8]
	ldr	x0, [sp, #8]
	bl	STBI_NOTUSED
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	add	x2, x8, #4
	ldur	x8, [x29, #-16]
	add	x3, x8, #8
	bl	stbi__pnm_info
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_14
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #32]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #4]
	mov	w3, wzr
	bl	stbi__mad3sizes_valid
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_14
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #8]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #4]
	mov	w3, wzr
	bl	stbi__malloc_mad3
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_14
.LBB0_8:
	ldur	x0, [x29, #-16]
	ldr	x1, [sp]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	mul	w8, w8, w9
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	mul	w2, w8, w9
	bl	stbi__getn
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_13
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.eq	.LBB0_13
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp]
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #8]
	ldr	w2, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	w3, [x8]
	ldur	x8, [x29, #-16]
	ldr	w4, [x8, #4]
	bl	stbi__convert_format
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__pnm_load, .Lfunc_end0-stbi__pnm_load
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too large"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"PNM too large"
	.size	.L.str.1, 14
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"outofmem"
	.size	.L.str.2, 9
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Out of memory"
	.size	.L.str.3, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_load
	.addrsig_sym STBI_NOTUSED
	.addrsig_sym stbi__pnm_info
	.addrsig_sym stbi__mad3sizes_valid
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__malloc_mad3
	.addrsig_sym stbi__getn
	.addrsig_sym stbi__convert_format