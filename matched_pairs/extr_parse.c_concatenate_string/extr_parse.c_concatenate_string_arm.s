	.text
	.p2align	2                               // -- Begin function concatenate_string
	.type	concatenate_string,@function
concatenate_string:                     // @concatenate_string
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	bl	make_buffer
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	subs	x2, x8, #1
	bl	buf_append
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	peek
	ldr	x8, [x0]
	adrp	x9, TSTRING
	ldr	x9, [x9, :lo12:TSTRING]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	bl	read_token
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	subs	x2, x8, #1
	bl	buf_append
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldur	w8, [x29, #-12]
	adrp	x9, ENC_NONE
	ldr	w9, [x9, :lo12:ENC_NONE]
	subs	w8, w8, w9
	b.eq	.LBB0_6
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	adrp	x9, ENC_NONE
	ldr	w9, [x9, :lo12:ENC_NONE]
	subs	w8, w8, w9
	b.eq	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	adrp	x9, ENC_NONE
	ldr	w9, [x9, :lo12:ENC_NONE]
	subs	w8, w8, w9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-12]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_9:
	ldr	x0, [sp, #24]
	mov	w1, wzr
	bl	buf_write
	ldr	x0, [sp, #24]
	bl	buf_body
	ldur	x8, [x29, #-8]
	str	w0, [x8, #16]
	ldr	x0, [sp, #24]
	bl	buf_len
	ldur	x8, [x29, #-8]
	str	x0, [x8, #8]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	concatenate_string, .Lfunc_end0-concatenate_string
                                        // -- End function
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.xword	0                               // 0x0
	.size	TSTRING, 8
	.type	ENC_NONE,@object                // @ENC_NONE
	.globl	ENC_NONE
	.p2align	2
ENC_NONE:
	.word	0                               // 0x0
	.size	ENC_NONE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unsupported non-standard concatenation of string literals: %s"
	.size	.L.str, 62
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym concatenate_string
	.addrsig_sym make_buffer
	.addrsig_sym buf_append
	.addrsig_sym peek
	.addrsig_sym read_token
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym buf_write
	.addrsig_sym buf_body
	.addrsig_sym buf_len
	.addrsig_sym TSTRING
	.addrsig_sym ENC_NONE