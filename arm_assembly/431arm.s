	.text
	.p2align	2                               // -- Begin function read_elif
	.type	read_elif,@function
read_elif:                              // @read_elif
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x8, cond_incl_stack
	ldr	w0, [x8, :lo12:cond_incl_stack]
	bl	vec_len
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	adrp	x8, cond_incl_stack
	ldr	w0, [x8, :lo12:cond_incl_stack]
	bl	vec_tail
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, IN_ELSE
	ldr	x9, [x9, :lo12:IN_ELSE]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_4
.LBB0_4:
	adrp	x8, IN_ELIF
	ldr	x8, [x8, :lo12:IN_ELIF]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x8, [sp]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	ldr	x8, [sp]
	ldr	w8, [x8, #8]
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	bl	read_constexpr
	cbnz	w0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	bl	skip_cond_incl
	b	.LBB0_8
.LBB0_7:
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_elif, .Lfunc_end0-read_elif
                                        // -- End function
	.type	cond_incl_stack,@object         // @cond_incl_stack
	.bss
	.globl	cond_incl_stack
	.p2align	2
cond_incl_stack:
	.word	0                               // 0x0
	.size	cond_incl_stack, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray #elif"
	.size	.L.str, 12
	.type	IN_ELSE,@object                 // @IN_ELSE
	.bss
	.globl	IN_ELSE
	.p2align	3
IN_ELSE:
	.xword	0                               // 0x0
	.size	IN_ELSE, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"#elif after #else"
	.size	.L.str.1, 18
	.type	IN_ELIF,@object                 // @IN_ELIF
	.bss
	.globl	IN_ELIF
	.p2align	3
IN_ELIF:
	.xword	0                               // 0x0
	.size	IN_ELIF, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_elif
	.addrsig_sym vec_len
	.addrsig_sym errort
	.addrsig_sym vec_tail
	.addrsig_sym read_constexpr
	.addrsig_sym skip_cond_incl
	.addrsig_sym cond_incl_stack
	.addrsig_sym IN_ELSE
	.addrsig_sym IN_ELIF