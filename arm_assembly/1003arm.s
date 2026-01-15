	.text
	.p2align	2                               // -- Begin function emit_lload
	.type	emit_lload,@function
emit_lload:                             // @emit_lload
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, KIND_ARRAY
	ldr	x9, [x9, :lo12:KIND_ARRAY]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w1, [sp, #12]
	ldr	x2, [sp, #16]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_10
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, KIND_FLOAT
	ldr	x9, [x9, :lo12:KIND_FLOAT]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w1, [sp, #12]
	ldr	x2, [sp, #16]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_9
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, KIND_DOUBLE
	ldr	x9, [x9, :lo12:KIND_DOUBLE]
	subs	x8, x8, x9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, KIND_LDOUBLE
	ldr	x9, [x9, :lo12:KIND_LDOUBLE]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w1, [sp, #12]
	ldr	x2, [sp, #16]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	b	.LBB0_8
.LBB0_7:
	ldur	x0, [x29, #-8]
	bl	get_load_inst
	str	x0, [sp]
	ldr	x1, [sp]
	ldr	w2, [sp, #12]
	ldr	x3, [sp, #16]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	ldur	x0, [x29, #-8]
	bl	maybe_emit_bitshift_load
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_lload, .Lfunc_end0-emit_lload
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	KIND_ARRAY,@object              // @KIND_ARRAY
	.globl	KIND_ARRAY
	.p2align	3
KIND_ARRAY:
	.xword	0                               // 0x0
	.size	KIND_ARRAY, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lea %d(#%s), #rax"
	.size	.L.str, 18
	.type	KIND_FLOAT,@object              // @KIND_FLOAT
	.bss
	.globl	KIND_FLOAT
	.p2align	3
KIND_FLOAT:
	.xword	0                               // 0x0
	.size	KIND_FLOAT, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"movss %d(#%s), #xmm0"
	.size	.L.str.1, 21
	.type	KIND_DOUBLE,@object             // @KIND_DOUBLE
	.bss
	.globl	KIND_DOUBLE
	.p2align	3
KIND_DOUBLE:
	.xword	0                               // 0x0
	.size	KIND_DOUBLE, 8
	.type	KIND_LDOUBLE,@object            // @KIND_LDOUBLE
	.globl	KIND_LDOUBLE
	.p2align	3
KIND_LDOUBLE:
	.xword	0                               // 0x0
	.size	KIND_LDOUBLE, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"movsd %d(#%s), #xmm0"
	.size	.L.str.2, 21
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"%s %d(#%s), #rax"
	.size	.L.str.3, 17
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_lload
	.addrsig_sym emit
	.addrsig_sym get_load_inst
	.addrsig_sym maybe_emit_bitshift_load
	.addrsig_sym SAVE
	.addrsig_sym KIND_ARRAY
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_DOUBLE
	.addrsig_sym KIND_LDOUBLE