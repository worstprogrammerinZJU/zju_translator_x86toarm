	.text
	.p2align	2                               // -- Begin function stbi__hdr_info
	.type	stbi__hdr_info,@function
stbi__hdr_info:                         // @stbi__hdr_info
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	adrp	x8, STBI__HDR_BUFLEN
	ldr	w8, [x8, :lo12:STBI__HDR_BUFLEN]
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-48]
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-88]                 // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-56]
	stur	wzr, [x29, #-68]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	sub	x8, x29, #72
	stur	x8, [x29, #-24]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	sub	x8, x29, #72
	stur	x8, [x29, #-32]
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-40]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	sub	x8, x29, #72
	stur	x8, [x29, #-40]
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	bl	stbi__hdr_test
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_24
.LBB0_8:
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldur	x1, [x29, #-88]                 // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	stbi__hdr_gettoken
	stur	x0, [x29, #-64]
	ldur	x8, [x29, #-64]
	ldrb	w8, [x8]
	cbnz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_14
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	x0, [x29, #-64]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	x0, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=1
	mov	w8, #1
	stur	w8, [x29, #-68]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_9
.LBB0_14:
	ldur	w8, [x29, #-68]
	cbnz	w8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_24
.LBB0_16:
	ldur	x1, [x29, #-88]                 // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	stbi__hdr_gettoken
	stur	x0, [x29, #-64]
	ldur	x0, [x29, #-64]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	mov	w2, #3
	bl	strncmp
	cbz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_24
.LBB0_18:
	sub	x1, x29, #64
	ldur	x8, [x29, #-64]
	add	x8, x8, #3
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	mov	w2, #10
	bl	strtol
	ldur	x9, [x29, #-32]
	mov	w8, w0
	str	w8, [x9]
	b	.LBB0_19
.LBB0_19:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-64]
	ldrb	w8, [x8]
	subs	w8, w8, #32
	b.ne	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_19 Depth=1
	ldur	x8, [x29, #-64]
	add	x8, x8, #1
	stur	x8, [x29, #-64]
	b	.LBB0_19
.LBB0_21:
	ldur	x0, [x29, #-64]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	mov	w2, #3
	bl	strncmp
	cbz	x0, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldur	x0, [x29, #-16]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	mov	w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_24
.LBB0_23:
	ldur	x8, [x29, #-64]
	add	x8, x8, #3
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	mov	x1, xzr
	mov	w2, #10
	bl	strtol
	ldur	x9, [x29, #-24]
	mov	w8, w0
	str	w8, [x9]
	ldur	x9, [x29, #-40]
	mov	w8, #3
	str	w8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-4]
	stur	w8, [x29, #-76]
	b	.LBB0_24
.LBB0_24:
	ldur	x8, [x29, #-48]
	mov	sp, x8
	ldur	w0, [x29, #-4]
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	stbi__hdr_info, .Lfunc_end0-stbi__hdr_info
                                        // -- End function
	.type	STBI__HDR_BUFLEN,@object        // @STBI__HDR_BUFLEN
	.bss
	.globl	STBI__HDR_BUFLEN
	.p2align	2
STBI__HDR_BUFLEN:
	.word	0                               // 0x0
	.size	STBI__HDR_BUFLEN, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FORMAT=32-bit_rle_rgbe"
	.size	.L.str, 23
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"-Y "
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"+X "
	.size	.L.str.2, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_info
	.addrsig_sym stbi__hdr_test
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__hdr_gettoken
	.addrsig_sym strcmp
	.addrsig_sym strncmp
	.addrsig_sym strtol
	.addrsig_sym STBI__HDR_BUFLEN