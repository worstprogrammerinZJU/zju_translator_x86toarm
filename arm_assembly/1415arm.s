	.text
	.globl	lex                             // -- Begin function lex
	.p2align	2
	.type	lex,@function
lex:                                    // @lex
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, buffers
	ldr	x0, [x8, :lo12:buffers]
	bl	vec_tail
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	vec_len
	subs	w8, w0, #0
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	vec_pop
	stur	x0, [x29, #-8]
	b	.LBB0_8
.LBB0_2:
	adrp	x8, buffers
	ldr	x0, [x8, :lo12:buffers]
	bl	vec_len
	subs	w8, w0, #1
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, eof_token
	ldr	x8, [x8, :lo12:eof_token]
	stur	x8, [x29, #-8]
	b	.LBB0_8
.LBB0_4:
	bl	current_file
	ldr	w8, [x0]
	subs	w8, w8, #1
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	bl	do_read_token
	str	x0, [sp]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, TSPACE
	ldr	x9, [x9, :lo12:TSPACE]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	bl	do_read_token
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_5
.LBB0_7:
	ldr	w8, [sp, #12]
	ldr	x9, [sp]
	str	w8, [x9, #12]
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	lex, .Lfunc_end0-lex
                                        // -- End function
	.type	buffers,@object                 // @buffers
	.bss
	.globl	buffers
	.p2align	3
buffers:
	.xword	0
	.size	buffers, 8
	.type	eof_token,@object               // @eof_token
	.globl	eof_token
	.p2align	3
eof_token:
	.xword	0
	.size	eof_token, 8
	.type	TSPACE,@object                  // @TSPACE
	.globl	TSPACE
	.p2align	3
TSPACE:
	.xword	0                               // 0x0
	.size	TSPACE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_tail
	.addrsig_sym vec_len
	.addrsig_sym vec_pop
	.addrsig_sym current_file
	.addrsig_sym do_read_token
	.addrsig_sym buffers
	.addrsig_sym eof_token
	.addrsig_sym TSPACE