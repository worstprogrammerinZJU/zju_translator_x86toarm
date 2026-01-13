	.text
	.p2align	2                               // -- Begin function stbi__jpeg_decode_block_prog_dc
	.type	stbi__jpeg_decode_block_prog_dc,@function
stbi__jpeg_decode_block_prog_dc:        // @stbi__jpeg_decode_block_prog_dc
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	w3, [sp, #28]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_13
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #16
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	stbi__grow_buffer_unsafe
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	cbnz	x8, .LBB0_9
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-24]
	mov	w1, wzr
	mov	w2, #128
	bl	memset
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #32]
	bl	stbi__jpeg_huff_decode
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #16]
	bl	stbi__extend_receive
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_7:
	mov	w8, wzr
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	str	w8, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #24]
	add	w8, w8, w9
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldrsw	x10, [sp, #28]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #20]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #24]
	lsl	w8, w8, w9
	ldur	x9, [x29, #-24]
	strh	w8, [x9]
	b	.LBB0_12
.LBB0_9:
	ldur	x0, [x29, #-16]
	bl	stbi__jpeg_get_bit
	cbz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-16]
	ldr	w9, [x8, #24]
	mov	w8, #1
	lsl	w10, w8, w9
	ldur	x9, [x29, #-24]
	ldrsh	w8, [x9]
	add	w8, w8, w10, sxth
	strh	w8, [x9]
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_13
.LBB0_13:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__jpeg_decode_block_prog_dc, .Lfunc_end0-stbi__jpeg_decode_block_prog_dc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"can't merge dc and ac"
	.size	.L.str, 22
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt JPEG"
	.size	.L.str.1, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__jpeg_decode_block_prog_dc
	.addrsig_sym stbi__err
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym memset
	.addrsig_sym stbi__jpeg_huff_decode
	.addrsig_sym stbi__extend_receive
	.addrsig_sym stbi__jpeg_get_bit