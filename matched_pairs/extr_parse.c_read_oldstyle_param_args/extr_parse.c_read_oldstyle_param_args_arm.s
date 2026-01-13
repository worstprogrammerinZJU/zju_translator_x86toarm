	.text
	.p2align	2                               // -- Begin function read_oldstyle_param_args
	.type	read_oldstyle_param_args,@function
read_oldstyle_param_args:               // @read_oldstyle_param_args
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, localenv
	ldr	x9, [x8, :lo12:localenv]
	stur	x9, [x29, #-8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, :lo12:localenv]
	bl	make_vector
	str	x0, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	peek
	mov	w1, #123
	bl	is_keyword
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_6
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	bl	is_type
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	bl	peek
	bl	tok2s
	mov	w2, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	mov	w1, wzr
	bl	read_decl
	b	.LBB0_1
.LBB0_6:
	ldur	x8, [x29, #-8]
	adrp	x9, localenv
	str	x8, [x9, :lo12:localenv]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_oldstyle_param_args, .Lfunc_end0-read_oldstyle_param_args
                                        // -- End function
	.type	localenv,@object                // @localenv
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.xword	0
	.size	localenv, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"K&R-style declarator expected, but got %s"
	.size	.L.str, 42
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_oldstyle_param_args
	.addrsig_sym make_vector
	.addrsig_sym is_keyword
	.addrsig_sym peek
	.addrsig_sym is_type
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym read_decl
	.addrsig_sym localenv