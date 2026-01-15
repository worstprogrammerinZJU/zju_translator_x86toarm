	.text
	.p2align	2                               // -- Begin function read_static_local_var
	.type	read_static_local_var,@function
read_static_local_var:                  // @read_static_local_var
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	ast_static_lvar
	stur	x0, [x29, #-24]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #32]
	mov	w0, #61
	bl	next_token
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, localenv
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	x9, [x8, :lo12:localenv]
	str	x9, [sp, #24]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, :lo12:localenv]
	ldur	x0, [x29, #-8]
	bl	read_decl_init
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [sp, #32]
	ldr	x8, [sp, #24]
	str	x8, [x9, :lo12:localenv]
	b	.LBB0_2
.LBB0_2:
	adrp	x8, toplevels
	ldr	w8, [x8, :lo12:toplevels]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	ast_decl
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	vec_push
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_static_local_var, .Lfunc_end0-read_static_local_var
                                        // -- End function
	.type	localenv,@object                // @localenv
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.xword	0
	.size	localenv, 8
	.type	toplevels,@object               // @toplevels
	.globl	toplevels
	.p2align	2
toplevels:
	.word	0                               // 0x0
	.size	toplevels, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_static_local_var
	.addrsig_sym ast_static_lvar
	.addrsig_sym next_token
	.addrsig_sym read_decl_init
	.addrsig_sym vec_push
	.addrsig_sym ast_decl
	.addrsig_sym localenv
	.addrsig_sym toplevels