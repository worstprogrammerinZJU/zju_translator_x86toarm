	.text
	.p2align	2                               // -- Begin function stbi__pic_load
	.type	stbi__pic_load,@function
stbi__pic_load:                         // @stbi__pic_load
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	str	w4, [sp, #36]
	str	x5, [sp, #24]
	ldr	x0, [sp, #24]
	bl	STBI_NOTUSED
	ldr	x8, [sp, #40]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	x8, sp
	str	x8, [sp, #40]
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #92
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_6:
	ldur	x0, [x29, #-16]
	bl	stbi__get16be
	str	w0, [sp, #8]
	ldur	x0, [x29, #-16]
	bl	stbi__get16be
	str	w0, [sp, #4]
	ldur	x0, [x29, #-16]
	bl	stbi__at_eof
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_15
.LBB0_8:
	ldr	w0, [sp, #8]
	ldr	w1, [sp, #4]
	mov	w2, #4
	mov	w3, wzr
	bl	stbi__mad3sizes_valid
	cbnz	w0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_15
.LBB0_10:
	ldur	x0, [x29, #-16]
	bl	stbi__get32be
	ldur	x0, [x29, #-16]
	bl	stbi__get16be
	ldur	x0, [x29, #-16]
	bl	stbi__get16be
	ldr	w0, [sp, #8]
	ldr	w1, [sp, #4]
	mov	w2, #4
	mov	w3, wzr
	bl	stbi__malloc_mad3
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	mul	w8, w8, w9
	lsl	w2, w8, #2
	mov	w1, #255
	bl	memset
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #8]
	ldr	w2, [sp, #4]
	ldr	x3, [sp, #40]
	ldr	x4, [sp, #16]
	bl	stbi__pic_load_core
	cbnz	w0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x0, [sp, #16]
	bl	STBI_FREE
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #16]
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldr	w8, [sp, #4]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	ldr	w8, [sp, #36]
	cbnz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	b	.LBB0_14
.LBB0_14:
	ldr	x0, [sp, #16]
	ldr	w2, [sp, #36]
	ldr	w3, [sp, #8]
	ldr	w4, [sp, #4]
	mov	w1, #4
	bl	stbi__convert_format
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	stbi__pic_load, .Lfunc_end0-stbi__pic_load
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad file"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"file too short (pic header)"
	.size	.L.str.1, 28
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"too large"
	.size	.L.str.2, 10
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"PIC image too large to decode"
	.size	.L.str.3, 30
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pic_load
	.addrsig_sym STBI_NOTUSED
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__mad3sizes_valid
	.addrsig_sym stbi__get32be
	.addrsig_sym stbi__malloc_mad3
	.addrsig_sym memset
	.addrsig_sym stbi__pic_load_core
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__convert_format