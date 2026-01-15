	.text
	.p2align	2                               // -- Begin function read_constexpr
	.type	read_constexpr,@function
read_constexpr:                         // @read_constexpr
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	read_intexpr_line
	bl	vec_reverse
	bl	token_buffer_stash
	bl	read_expr
	stur	x0, [x29, #-8]
	bl	lex
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TEOF
	ldr	x9, [x9, :lo12:TEOF]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	bl	token_buffer_unstash
	ldur	x0, [x29, #-8]
	mov	x1, xzr
	bl	eval_intexpr
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_constexpr, .Lfunc_end0-read_constexpr
                                        // -- End function
	.type	TEOF,@object                    // @TEOF
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.xword	0                               // 0x0
	.size	TEOF, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray token: %s"
	.size	.L.str, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_constexpr
	.addrsig_sym token_buffer_stash
	.addrsig_sym vec_reverse
	.addrsig_sym read_intexpr_line
	.addrsig_sym read_expr
	.addrsig_sym lex
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym token_buffer_unstash
	.addrsig_sym eval_intexpr
	.addrsig_sym TEOF