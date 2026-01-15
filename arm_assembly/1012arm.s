	.text
	.p2align	2                               // -- Begin function emit_pointer_arith
	.type	emit_pointer_arith,@function
emit_pointer_arith:                     // @emit_pointer_arith
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	sturb	w0, [x29, #-1]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	bl	emit_expr
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	push
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	push
	ldr	x0, [sp, #8]
	bl	emit_expr
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w1, [sp, #4]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	pop
	ldurb	w8, [x29, #-1]
	str	w8, [sp]                        // 4-byte Folded Spill
	subs	w8, w8, #43
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	subs	w8, w8, #45
	b.eq	.LBB0_5
	b	.LBB0_6
.LBB0_4:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	b	.LBB0_7
.LBB0_5:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	b	.LBB0_7
.LBB0_6:
	ldurb	w1, [x29, #-1]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	error
	b	.LBB0_7
.LBB0_7:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	pop
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_pointer_arith, .Lfunc_end0-emit_pointer_arith
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rcx"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"rax"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"imul $%d, #rax"
	.size	.L.str.2, 15
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"mov #rax, #rcx"
	.size	.L.str.3, 15
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"add #rcx, #rax"
	.size	.L.str.4, 15
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"sub #rcx, #rax"
	.size	.L.str.5, 15
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"invalid operator '%d'"
	.size	.L.str.6, 22
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_pointer_arith
	.addrsig_sym emit_expr
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym pop
	.addrsig_sym error
	.addrsig_sym SAVE