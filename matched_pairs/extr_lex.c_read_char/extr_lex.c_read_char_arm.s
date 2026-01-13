	.text
	.p2align	2                               // -- Begin function read_char
	.type	read_char,@function
read_char:                              // @read_char
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-12]
	bl	readc
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #92
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	read_escaped_char
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #16]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #12]
	bl	readc
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #39
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, pos
	ldr	w0, [x8, :lo12:pos]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errorp
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-12]
	adrp	x9, ENC_NONE
	ldr	w9, [x9, :lo12:ENC_NONE]
	subs	w8, w8, w9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #12]
	and	w0, w8, #0xff
	ldur	w1, [x29, #-12]
	bl	make_char
	stur	x0, [x29, #-8]
	b	.LBB0_8
.LBB0_7:
	ldr	w0, [sp, #12]
	ldur	w1, [x29, #-12]
	bl	make_char
	stur	x0, [x29, #-8]
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_char, .Lfunc_end0-read_char
                                        // -- End function
	.type	pos,@object                     // @pos
	.bss
	.globl	pos
	.p2align	2
pos:
	.word	0                               // 0x0
	.size	pos, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unterminated char"
	.size	.L.str, 18
	.type	ENC_NONE,@object                // @ENC_NONE
	.bss
	.globl	ENC_NONE
	.p2align	2
ENC_NONE:
	.word	0                               // 0x0
	.size	ENC_NONE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_char
	.addrsig_sym readc
	.addrsig_sym read_escaped_char
	.addrsig_sym errorp
	.addrsig_sym make_char
	.addrsig_sym pos
	.addrsig_sym ENC_NONE