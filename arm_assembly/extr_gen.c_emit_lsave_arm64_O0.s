	.text
	.p2align	2                               // -- Begin function emit_lsave
	.type	emit_lsave,@function
emit_lsave:                             // @emit_lsave
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, KIND_FLOAT
	ldr	x9, [x9, :lo12:KIND_FLOAT]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w1, [x29, #-12]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_6
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, KIND_DOUBLE
	ldr	x9, [x9, :lo12:KIND_DOUBLE]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w1, [x29, #-12]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_5
.LBB0_4:
	ldur	x0, [x29, #-8]
	bl	maybe_convert_bool
	ldur	x0, [x29, #-8]
	mov	w1, #97
	bl	get_int_reg
	str	x0, [sp, #8]
	ldur	w1, [x29, #-12]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	format
	str	x0, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp]
	bl	maybe_emit_bitshift_save
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_lsave, .Lfunc_end0-emit_lsave
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
	.p2align	3
KIND_FLOAT:
	.xword	0                               // 0x0
	.size	KIND_FLOAT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"movss #xmm0, %d(#rbp)"
	.size	.L.str, 22
	.type	KIND_DOUBLE,@object             // @KIND_DOUBLE
	.bss
	.globl	KIND_DOUBLE
	.p2align	3
KIND_DOUBLE:
	.xword	0                               // 0x0
	.size	KIND_DOUBLE, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"movsd #xmm0, %d(#rbp)"
	.size	.L.str.1, 22
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"%d(%%rbp)"
	.size	.L.str.2, 10
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"mov #%s, %s"
	.size	.L.str.3, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_lsave
	.addrsig_sym emit
	.addrsig_sym maybe_convert_bool
	.addrsig_sym get_int_reg
	.addrsig_sym format
	.addrsig_sym maybe_emit_bitshift_save
	.addrsig_sym SAVE
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_DOUBLE