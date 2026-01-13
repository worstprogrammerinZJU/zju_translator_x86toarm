	.text
	.p2align	2                               // -- Begin function read_funcall
	.type	read_funcall,@function
read_funcall:                           // @read_funcall
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	adrp	x9, AST_ADDR
	ldr	x9, [x9, :lo12:AST_ADDR]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	adrp	x9, AST_FUNCDESG
	ldr	x9, [x9, :lo12:AST_FUNCDESG]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldr	w0, [x8, #8]
	bl	read_func_args
	str	x0, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #24]
	ldr	w1, [x8, #16]
	ldr	x2, [sp, #16]
	bl	ast_funcall
	stur	x0, [x29, #-8]
	b	.LBB0_4
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	ldr	w0, [x8]
	bl	read_func_args
	str	x0, [sp, #8]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #8]
	bl	ast_funcptr_call
	stur	x0, [x29, #-8]
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_funcall, .Lfunc_end0-read_funcall
                                        // -- End function
	.type	AST_ADDR,@object                // @AST_ADDR
	.bss
	.globl	AST_ADDR
	.p2align	3
AST_ADDR:
	.xword	0                               // 0x0
	.size	AST_ADDR, 8
	.type	AST_FUNCDESG,@object            // @AST_FUNCDESG
	.globl	AST_FUNCDESG
	.p2align	3
AST_FUNCDESG:
	.xword	0                               // 0x0
	.size	AST_FUNCDESG, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_funcall
	.addrsig_sym read_func_args
	.addrsig_sym ast_funcall
	.addrsig_sym ast_funcptr_call
	.addrsig_sym AST_ADDR
	.addrsig_sym AST_FUNCDESG