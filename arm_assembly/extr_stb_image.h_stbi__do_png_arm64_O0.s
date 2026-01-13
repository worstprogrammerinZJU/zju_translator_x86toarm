	.text
	.p2align	2                               // -- Begin function stbi__do_png
	.type	stbi__do_png,@function
stbi__do_png:                           // @stbi__do_png
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
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp]
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #20]
	subs	w8, w8, #4
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_19
.LBB0_3:
	ldur	x0, [x29, #-16]
	adrp	x8, STBI__SCAN_load
	ldr	w1, [x8, :lo12:STBI__SCAN_load]
	ldr	w2, [sp, #20]
	bl	stbi__parse_png_file
	cbz	x0, .LBB0_18
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #8
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x9, [sp, #8]
	mov	w8, #8
	str	w8, [x9]
	b	.LBB0_7
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	str	x8, [sp]
	ldur	x8, [x29, #-16]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #24]
	ldr	w8, [sp, #20]
	cbz	w8, .LBB0_15
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.eq	.LBB0_15
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #8
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x0, [sp]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w1, [x8]
	ldr	w2, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w3, [x8, #4]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w4, [x8, #8]
	bl	stbi__convert_format
	str	x0, [sp]
	b	.LBB0_12
.LBB0_11:
	ldr	x0, [sp]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w1, [x8]
	ldr	w2, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w3, [x8, #4]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w4, [x8, #8]
	bl	stbi__convert_format16
	str	x0, [sp]
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	str	w8, [x9]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_19
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #32]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8, #12]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_18
.LBB0_18:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #24]
	bl	STBI_FREE
	ldur	x8, [x29, #-16]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #24]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	STBI_FREE
	ldur	x8, [x29, #-16]
	str	xzr, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	STBI_FREE
	ldur	x8, [x29, #-16]
	str	xzr, [x8, #8]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_19
.LBB0_19:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__do_png, .Lfunc_end0-stbi__do_png
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad req_comp"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Internal error"
	.size	.L.str.1, 15
	.type	STBI__SCAN_load,@object         // @STBI__SCAN_load
	.bss
	.globl	STBI__SCAN_load
	.p2align	2
STBI__SCAN_load:
	.word	0                               // 0x0
	.size	STBI__SCAN_load, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__do_png
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__parse_png_file
	.addrsig_sym stbi__convert_format
	.addrsig_sym stbi__convert_format16
	.addrsig_sym STBI_FREE
	.addrsig_sym STBI__SCAN_load