	.text
	.globl	expect_newline                  // -- Begin function expect_newline
	.p2align	2
	.type	expect_newline,@function
expect_newline:                         // @expect_newline
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	lex
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #8]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	expect_newline, .Lfunc_end0-expect_newline
                                        // -- End function
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"newline expected, but got %s"
	.size	.L.str, 29
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lex
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym TNEWLINE