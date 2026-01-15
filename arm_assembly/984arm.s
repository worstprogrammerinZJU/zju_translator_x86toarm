	.text
	.p2align	2                               // -- Begin function emit_data_primtype
	.type	emit_data_primtype,@function
emit_data_primtype:                     // @emit_data_primtype
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	subs	x8, x8, #8
	b.hi	.LBB0_26
// %bb.1:
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-24]
	ldur	w1, [x29, #-24]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_27
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	w1, [x8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_27
.LBB0_4:
	ldur	x0, [x29, #-16]
	mov	x1, xzr
	bl	eval_intexpr
	subs	w8, w0, #0
	cset	w8, ne
	and	w1, w8, #0x1
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	b	.LBB0_27
.LBB0_5:
	ldur	x0, [x29, #-16]
	mov	x1, xzr
	bl	eval_intexpr
	mov	w1, w0
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	b	.LBB0_27
.LBB0_6:
	ldur	x0, [x29, #-16]
	mov	x1, xzr
	bl	eval_intexpr
	mov	w1, w0
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	b	.LBB0_27
.LBB0_7:
	ldur	x0, [x29, #-16]
	mov	x1, xzr
	bl	eval_intexpr
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_27
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	adrp	x9, OP_LABEL_ADDR
	ldr	w9, [x9, :lo12:OP_LABEL_ADDR]
	subs	w8, w8, w9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #36]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	b	.LBB0_27
.LBB0_10:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x8, [x8, #24]
	ldr	w9, [x8]
	adrp	x8, KIND_ARRAY
	ldr	w10, [x8, :lo12:KIND_ARRAY]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x8, [x8, #24]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	subs	w8, w8, #135
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	cbz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	w0, [x8, #32]
	ldur	w1, [x29, #-20]
	bl	emit_data_charptr
	b	.LBB0_25
.LBB0_14:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	adrp	x9, AST_GVAR
	ldr	w9, [x9, :lo12:AST_GVAR]
	subs	w8, w8, w9
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x8, [x29, #-16]
	ldr	w1, [x8, #4]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	b	.LBB0_24
.LBB0_16:
	add	x1, sp, #40
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #40]
	ldur	x0, [x29, #-16]
	bl	eval_intexpr
	str	w0, [sp, #36]
	ldr	x8, [sp, #40]
	cbnz	x8, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	w1, [sp, #36]
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	b	.LBB0_27
.LBB0_18:
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #24]
	str	x8, [sp, #24]
	ldr	x8, [sp, #40]
	ldr	w8, [x8, #8]
	adrp	x9, AST_CONV
	ldr	w9, [x9, :lo12:AST_CONV]
	subs	w8, w8, w9
	b.eq	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	x8, [sp, #40]
	ldr	w8, [x8, #8]
	adrp	x9, AST_ADDR
	ldr	w9, [x9, :lo12:AST_ADDR]
	subs	w8, w8, w9
	b.ne	.LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #16]
	str	x8, [sp, #40]
	b	.LBB0_21
.LBB0_21:
	ldr	x8, [sp, #40]
	ldr	w8, [x8, #8]
	adrp	x9, AST_GVAR
	ldr	w9, [x9, :lo12:AST_GVAR]
	subs	w8, w8, w9
	b.eq	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldr	x0, [sp, #40]
	bl	node2s
	mov	x1, x0
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	error
	b	.LBB0_23
.LBB0_23:
	ldr	x8, [sp, #24]
	ldr	x0, [x8, #8]
	bl	assert
	ldr	x8, [sp, #40]
	ldr	w1, [x8, #4]
	ldr	w8, [sp, #36]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #8]
	ldr	w9, [x9, #4]
	mul	w2, w8, w9
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	emit
	b	.LBB0_24
.LBB0_24:
	b	.LBB0_25
.LBB0_25:
	b	.LBB0_27
.LBB0_26:
	ldur	x0, [x29, #-8]
	bl	ty2s
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x0, w8
	str	x0, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	node2s
	ldr	x1, [sp]                        // 8-byte Folded Reload
	mov	x2, x0
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	error
	b	.LBB0_27
.LBB0_27:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	emit_data_primtype, .Lfunc_end0-emit_data_primtype
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_4-.Ltmp0
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".long %d"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	".quad %ld"
	.size	.L.str.1, 10
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	".byte %d"
	.size	.L.str.2, 9
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	".short %d"
	.size	.L.str.3, 10
	.type	OP_LABEL_ADDR,@object           // @OP_LABEL_ADDR
	.bss
	.globl	OP_LABEL_ADDR
	.p2align	2
OP_LABEL_ADDR:
	.word	0                               // 0x0
	.size	OP_LABEL_ADDR, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	".quad %s"
	.size	.L.str.4, 9
	.type	KIND_ARRAY,@object              // @KIND_ARRAY
	.bss
	.globl	KIND_ARRAY
	.p2align	2
KIND_ARRAY:
	.word	0                               // 0x0
	.size	KIND_ARRAY, 4
	.type	AST_GVAR,@object                // @AST_GVAR
	.globl	AST_GVAR
	.p2align	2
AST_GVAR:
	.word	0                               // 0x0
	.size	AST_GVAR, 4
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	".quad %u"
	.size	.L.str.5, 9
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
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"global variable expected, but got %s"
	.size	.L.str.6, 37
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	".quad %s+%u"
	.size	.L.str.7, 12
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"don't know how to handle\n  <%s>\n  <%s>"
	.size	.L.str.8, 39
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_data_primtype
	.addrsig_sym emit
	.addrsig_sym eval_intexpr
	.addrsig_sym emit_data_charptr
	.addrsig_sym error
	.addrsig_sym node2s
	.addrsig_sym assert
	.addrsig_sym ty2s
	.addrsig_sym OP_LABEL_ADDR
	.addrsig_sym KIND_ARRAY
	.addrsig_sym AST_GVAR
	.addrsig_sym AST_CONV
	.addrsig_sym AST_ADDR