	.text
	.p2align	2                               // -- Begin function emit_comp
	.type	emit_comp,@function
emit_comp:                              // @emit_comp
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	is_flotype
	cbz	x0, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	emit_expr
	mov	w0, wzr
	bl	push_xmm
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	emit_expr
	mov	w0, #1
	bl	pop_xmm
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	adrp	x9, KIND_FLOAT
	ldr	w9, [x9, :lo12:KIND_FLOAT]
	subs	w8, w8, w9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_4
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_10
.LBB0_5:
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	emit_expr
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	push
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	bl	emit_expr
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	pop
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	adrp	x9, KIND_LONG
	ldr	w9, [x9, :lo12:KIND_LONG]
	subs	w8, w8, w9
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #4]
	adrp	x9, KIND_LLONG
	ldr	w9, [x9, :lo12:KIND_LLONG]
	subs	w8, w8, w9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	emit
	b	.LBB0_9
.LBB0_8:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	emit
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x0, [x8]
	bl	is_flotype
	cbnz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	x1, [sp, #16]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	b	.LBB0_14
.LBB0_13:
	ldur	x1, [x29, #-8]
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	emit
	b	.LBB0_14
.LBB0_14:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	emit
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_comp, .Lfunc_end0-emit_comp
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	KIND_FLOAT,@object              // @KIND_FLOAT
	.globl	KIND_FLOAT
	.p2align	2
KIND_FLOAT:
	.word	0                               // 0x0
	.size	KIND_FLOAT, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ucomiss #xmm0, #xmm1"
	.size	.L.str, 21
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"ucomisd #xmm0, #xmm1"
	.size	.L.str.1, 21
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"rax"
	.size	.L.str.2, 4
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"rcx"
	.size	.L.str.3, 4
	.type	KIND_LONG,@object               // @KIND_LONG
	.bss
	.globl	KIND_LONG
	.p2align	2
KIND_LONG:
	.word	0                               // 0x0
	.size	KIND_LONG, 4
	.type	KIND_LLONG,@object              // @KIND_LLONG
	.globl	KIND_LLONG
	.p2align	2
KIND_LLONG:
	.word	0                               // 0x0
	.size	KIND_LLONG, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"cmp #rax, #rcx"
	.size	.L.str.4, 15
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"cmp #eax, #ecx"
	.size	.L.str.5, 15
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"%s #al"
	.size	.L.str.6, 7
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"movzb #al, #eax"
	.size	.L.str.7, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_comp
	.addrsig_sym is_flotype
	.addrsig_sym emit_expr
	.addrsig_sym push_xmm
	.addrsig_sym pop_xmm
	.addrsig_sym emit
	.addrsig_sym push
	.addrsig_sym pop
	.addrsig_sym SAVE
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_LONG
	.addrsig_sym KIND_LLONG