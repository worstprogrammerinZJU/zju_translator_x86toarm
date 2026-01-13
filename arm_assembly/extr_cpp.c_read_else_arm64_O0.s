	.text
	.p2align	2                               // -- Begin function read_else
	.type	read_else,@function
read_else:                              // @read_else
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
	bl	expect_newline
	adrp	x8, IN_ELSE
	ldr	x8, [x8, :lo12:IN_ELSE]
	ldr	x9, [sp]
	str	x8, [x9]
	ldr	x8, [sp]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	ldr	x8, [sp]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	bl	skip_cond_incl
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_else, .Lfunc_end0-read_else
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
	.asciz	"stray #else"
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
	.asciz	"#else appears in #else"
	.size	.L.str.1, 23
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_else
	.addrsig_sym vec_len
	.addrsig_sym errort
	.addrsig_sym vec_tail
	.addrsig_sym expect_newline
	.addrsig_sym skip_cond_incl
	.addrsig_sym cond_incl_stack
	.addrsig_sym IN_ELSE