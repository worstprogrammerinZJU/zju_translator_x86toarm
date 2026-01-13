	.text
	.p2align	2                               // -- Begin function emit_args
	.type	emit_args,@function
emit_args:                              // @emit_args
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	vec_len
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	w1, [sp, #16]
	bl	vec_get
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	emit_addr
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w0, [x8, #8]
	bl	push_struct
	ldursw	x8, [x29, #-12]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-12]
	b	.LBB0_8
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	is_flotype
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	emit_expr
	mov	w0, wzr
	bl	push_xmm
	ldur	w8, [x29, #-12]
	add	w8, w8, #8
	stur	w8, [x29, #-12]
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	bl	emit_expr
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	push
	ldur	w8, [x29, #-12]
	add	w8, w8, #8
	stur	w8, [x29, #-12]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_10:
	ldur	w0, [x29, #-12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_args, .Lfunc_end0-emit_args
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	KIND_STRUCT,@object             // @KIND_STRUCT
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.xword	0                               // 0x0
	.size	KIND_STRUCT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rax"
	.size	.L.str, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_args
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym emit_addr
	.addrsig_sym push_struct
	.addrsig_sym is_flotype
	.addrsig_sym emit_expr
	.addrsig_sym push_xmm
	.addrsig_sym push
	.addrsig_sym SAVE
	.addrsig_sym KIND_STRUCT