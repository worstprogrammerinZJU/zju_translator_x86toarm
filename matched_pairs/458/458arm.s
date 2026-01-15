	.text
	.p2align	2                               // -- Begin function stringize
	.type	stringize,@function
stringize:                              // @stringize
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	bl	make_buffer
	stur	x0, [x29, #-24]
	stur	wzr, [x29, #-28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	vec_len
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-28]
	bl	vec_get
	str	x0, [sp, #24]
	ldur	x0, [x29, #-24]
	bl	buf_len
	cbz	x0, .LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-24]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	buf_printf
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	buf_printf
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_1
.LBB0_7:
	ldur	x0, [x29, #-24]
	mov	w1, wzr
	bl	buf_write
	ldur	x0, [x29, #-8]
	bl	copy_token
	str	x0, [sp, #16]
	adrp	x8, TSTRING
	ldr	w8, [x8, :lo12:TSTRING]
	ldr	x9, [sp, #16]
	str	w8, [x9, #20]
	ldur	x0, [x29, #-24]
	bl	buf_body
	ldr	x8, [sp, #16]
	str	w0, [x8, #16]
	ldur	x0, [x29, #-24]
	bl	buf_len
	ldr	x8, [sp, #16]
	str	x0, [x8, #8]
	adrp	x8, ENC_NONE
	ldr	w8, [x8, :lo12:ENC_NONE]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stringize, .Lfunc_end0-stringize
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" "
	.size	.L.str, 2
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	2
TSTRING:
	.word	0                               // 0x0
	.size	TSTRING, 4
	.type	ENC_NONE,@object                // @ENC_NONE
	.globl	ENC_NONE
	.p2align	2
ENC_NONE:
	.word	0                               // 0x0
	.size	ENC_NONE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stringize
	.addrsig_sym make_buffer
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym buf_len
	.addrsig_sym buf_printf
	.addrsig_sym tok2s
	.addrsig_sym buf_write
	.addrsig_sym copy_token
	.addrsig_sym buf_body
	.addrsig_sym TSTRING
	.addrsig_sym ENC_NONE