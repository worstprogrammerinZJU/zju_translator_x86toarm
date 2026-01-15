	.text
	.p2align	2                               // -- Begin function emit_toint
	.type	emit_toint,@function
emit_toint:                             // @emit_toint
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_FLOAT
	ldr	x9, [x9, :lo12:KIND_FLOAT]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_DOUBLE
	ldr	x9, [x9, :lo12:KIND_DOUBLE]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_toint, .Lfunc_end0-emit_toint
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
	.asciz	"cvttss2si #xmm0, #eax"
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
	.asciz	"cvttsd2si #xmm0, #eax"
	.size	.L.str.1, 22
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_toint
	.addrsig_sym emit
	.addrsig_sym SAVE
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_DOUBLE