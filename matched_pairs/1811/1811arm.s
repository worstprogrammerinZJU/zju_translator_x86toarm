	.text
	.p2align	2                               // -- Begin function conv
	.type	conv,@function
conv:                                   // @conv
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_11
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	subs	x8, x8, #5
	b.hi	.LBB0_10
// %bb.3:
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_4:
	adrp	x8, AST_CONV
	ldr	w8, [x8, :lo12:AST_CONV]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x8, [sp, #24]
	ldr	x0, [x8, #8]
	bl	make_ptr_type
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldur	x2, [x29, #-16]
	bl	ast_uop
	stur	x0, [x29, #-8]
	b	.LBB0_11
.LBB0_5:
	adrp	x8, AST_ADDR
	ldr	w8, [x8, :lo12:AST_ADDR]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	ldr	x0, [sp, #24]
	bl	make_ptr_type
	mov	w1, w0
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldur	x2, [x29, #-16]
	bl	ast_uop
	stur	x0, [x29, #-8]
	b	.LBB0_11
.LBB0_6:
	adrp	x8, type_int
	ldr	w0, [x8, :lo12:type_int]
	ldur	x1, [x29, #-16]
	bl	ast_conv
	stur	x0, [x29, #-8]
	b	.LBB0_11
.LBB0_7:
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #4]
	subs	w8, w8, #0
	b.le	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x8, type_int
	ldr	w0, [x8, :lo12:type_int]
	ldur	x1, [x29, #-16]
	bl	ast_conv
	stur	x0, [x29, #-8]
	b	.LBB0_11
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	conv, .Lfunc_end0-conv
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_4-.Ltmp0
                                        // -- End function
	.type	AST_CONV,@object                // @AST_CONV
	.bss
	.globl	AST_CONV
	.p2align	2
AST_CONV:
	.word	0                               // 0x0
	.size	AST_CONV, 4
	.type	AST_ADDR,@object                // @AST_ADDR
	.globl	AST_ADDR
	.p2align	2
AST_ADDR:
	.word	0                               // 0x0
	.size	AST_ADDR, 4
	.type	type_int,@object                // @type_int
	.globl	type_int
	.p2align	2
type_int:
	.word	0                               // 0x0
	.size	type_int, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conv
	.addrsig_sym ast_uop
	.addrsig_sym make_ptr_type
	.addrsig_sym ast_conv
	.addrsig_sym AST_CONV
	.addrsig_sym AST_ADDR
	.addrsig_sym type_int