	.text
	.p2align	2                               // -- Begin function read_number
	.type	read_number,@function
read_number:                            // @read_number
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	sturb	w0, [x29, #-1]
	bl	make_buffer
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldurb	w1, [x29, #-1]
	bl	buf_write
	ldurb	w8, [x29, #-1]
	strb	w8, [sp, #15]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	readc
	str	w0, [sp, #8]
	ldrb	w1, [sp, #15]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	strchr
	mov	w8, #0
	str	w8, [sp]                        // 4-byte Folded Spill
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp, #8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	strchr
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #4]
	ldr	w0, [sp, #8]
	bl	isdigit
	cbnz	w0, .LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w0, [sp, #8]
	bl	isalpha
	cbnz	w0, .LBB0_8
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #46
	b.eq	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #8]
	bl	unreadc
	ldr	x0, [sp, #16]
	mov	w1, wzr
	bl	buf_write
	ldr	x0, [sp, #16]
	bl	buf_body
	bl	make_number
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #8]
	bl	buf_write
	ldr	w8, [sp, #8]
	strb	w8, [sp, #15]
	b	.LBB0_1
.Lfunc_end0:
	.size	read_number, .Lfunc_end0-read_number
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"eEpP"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"+-"
	.size	.L.str.1, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_number
	.addrsig_sym make_buffer
	.addrsig_sym buf_write
	.addrsig_sym readc
	.addrsig_sym strchr
	.addrsig_sym isdigit
	.addrsig_sym isalpha
	.addrsig_sym unreadc
	.addrsig_sym make_number
	.addrsig_sym buf_body