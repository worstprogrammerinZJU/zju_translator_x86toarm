	.text
	.p2align	2                               // -- Begin function stbi__gif_header
	.type	stbi__gif_header,@function
stbi__gif_header:                       // @stbi__gif_header
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	w3, [sp, #12]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #71
	b.ne	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #73
	b.ne	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #70
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #56
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_5:
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	strb	w0, [sp, #11]
	ldrb	w8, [sp, #11]
	subs	w8, w8, #55
	b.eq	.LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldrb	w8, [sp, #11]
	subs	w8, w8, #57
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_8:
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #97
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_10:
	adrp	x9, stbi__g_failure_reason
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	str	x8, [x9, :lo12:stbi__g_failure_reason]
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	ldr	x8, [sp, #24]
	str	x0, [x8, #24]
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	ldr	x8, [sp, #24]
	str	x0, [x8, #16]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	ldr	x8, [sp, #24]
	strb	w0, [x8]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	ldr	x8, [sp, #24]
	strb	w0, [x8, #1]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	ldr	x8, [sp, #24]
	strb	w0, [x8, #2]
	ldr	x9, [sp, #24]
	mov	w8, #-1
	str	w8, [x9, #4]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x9, [sp, #16]
	mov	w8, #4
	str	w8, [x9]
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_14:
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	tbz	w8, #7, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-16]
	ldr	x8, [sp, #24]
	ldr	w1, [x8, #8]
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	and	w9, w8, #0x7
	mov	w8, #2
	lsl	w2, w8, w9
	mov	w3, #-1
	bl	stbi__gif_parse_colortable
	b	.LBB0_16
.LBB0_16:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_17:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__gif_header, .Lfunc_end0-stbi__gif_header
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"not GIF"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt GIF"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1
	.type	stbi__g_failure_reason,@object  // @stbi__g_failure_reason
	.bss
	.globl	stbi__g_failure_reason
	.p2align	3
stbi__g_failure_reason:
	.xword	0
	.size	stbi__g_failure_reason, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_header
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__err
	.addrsig_sym stbi__get16le
	.addrsig_sym stbi__gif_parse_colortable
	.addrsig_sym stbi__g_failure_reason