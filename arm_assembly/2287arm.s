	.text
	.p2align	2                               // -- Begin function stbi__shiftsigned
	.type	stbi__shiftsigned,@function
stbi__shiftsigned:                      // @stbi__shiftsigned
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w9, [x29, #-8]
	mov	w8, wzr
	subs	w9, w8, w9
	ldur	w8, [x29, #-4]
	lsl	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldur	w9, [x29, #-8]
	ldur	w8, [x29, #-4]
	asr	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-4]
	mov	w9, #0
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	tbnz	w8, #31, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-4]
	subs	w8, w8, #256
	cset	w8, lt
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	ldur	w9, [x29, #-12]
	mov	w8, #8
	subs	w9, w8, w9
	ldur	w8, [x29, #-4]
	asr	w8, w8, w9
	stur	w8, [x29, #-4]
	ldur	w8, [x29, #-12]
	mov	w9, #0
	str	w9, [sp, #12]                   // 4-byte Folded Spill
	tbnz	w8, #31, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #8
	cset	w8, le
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	ldur	w8, [x29, #-4]
	ldursw	x10, [x29, #-12]
	adrp	x9, stbi__shiftsigned.mul_table
	add	x9, x9, :lo12:stbi__shiftsigned.mul_table
	ldr	w9, [x9, x10, lsl #2]
	mul	w8, w8, w9
	ldursw	x10, [x29, #-12]
	adrp	x9, stbi__shiftsigned.shift_table
	add	x9, x9, :lo12:stbi__shiftsigned.shift_table
	ldr	w9, [x9, x10, lsl #2]
	asr	w0, w8, w9
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__shiftsigned, .Lfunc_end0-stbi__shiftsigned
                                        // -- End function
	.type	stbi__shiftsigned.mul_table,@object // @stbi__shiftsigned.mul_table
	.data
	.p2align	2
stbi__shiftsigned.mul_table:
	.word	0                               // 0x0
	.word	255                             // 0xff
	.word	85                              // 0x55
	.word	73                              // 0x49
	.word	17                              // 0x11
	.word	33                              // 0x21
	.word	65                              // 0x41
	.word	129                             // 0x81
	.word	1                               // 0x1
	.size	stbi__shiftsigned.mul_table, 36
	.type	stbi__shiftsigned.shift_table,@object // @stbi__shiftsigned.shift_table
	.p2align	2
stbi__shiftsigned.shift_table:
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.word	1                               // 0x1
	.word	0                               // 0x0
	.word	2                               // 0x2
	.word	4                               // 0x4
	.word	6                               // 0x6
	.word	0                               // 0x0
	.size	stbi__shiftsigned.shift_table, 36
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__shiftsigned
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__shiftsigned.mul_table
	.addrsig_sym stbi__shiftsigned.shift_table