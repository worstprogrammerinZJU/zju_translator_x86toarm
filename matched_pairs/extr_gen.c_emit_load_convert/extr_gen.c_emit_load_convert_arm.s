	.text
	.p2align	2                               // -- Begin function emit_load_convert
	.type	emit_load_convert,@function
emit_load_convert:                      // @emit_load_convert
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	is_inttype
	cbz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_FLOAT
	ldr	x9, [x9, :lo12:KIND_FLOAT]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	b	.LBB0_26
.LBB0_3:
	ldr	x0, [sp]
	bl	is_inttype
	cbz	x0, .LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_DOUBLE
	ldr	x9, [x9, :lo12:KIND_DOUBLE]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	b	.LBB0_25
.LBB0_6:
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, KIND_FLOAT
	ldr	x9, [x9, :lo12:KIND_FLOAT]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_DOUBLE
	ldr	x9, [x9, :lo12:KIND_DOUBLE]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	b	.LBB0_24
.LBB0_9:
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, KIND_DOUBLE
	ldr	x9, [x9, :lo12:KIND_DOUBLE]
	subs	x8, x8, x9
	b.eq	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, KIND_LDOUBLE
	ldr	x9, [x9, :lo12:KIND_LDOUBLE]
	subs	x8, x8, x9
	b.ne	.LBB0_13
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_FLOAT
	ldr	x9, [x9, :lo12:KIND_FLOAT]
	subs	x8, x8, x9
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	b	.LBB0_23
.LBB0_13:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, KIND_BOOL
	ldr	x9, [x9, :lo12:KIND_BOOL]
	subs	x8, x8, x9
	b.ne	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldr	x0, [sp]
	bl	emit_to_bool
	b	.LBB0_22
.LBB0_15:
	ldr	x0, [sp]
	bl	is_inttype
	cbz	x0, .LBB0_18
	b	.LBB0_16
.LBB0_16:
	ldr	x0, [sp, #8]
	bl	is_inttype
	cbz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	x0, [sp]
	bl	emit_intcast
	b	.LBB0_21
.LBB0_18:
	ldr	x0, [sp, #8]
	bl	is_inttype
	cbz	x0, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	x0, [sp]
	bl	emit_toint
	b	.LBB0_20
.LBB0_20:
	b	.LBB0_21
.LBB0_21:
	b	.LBB0_22
.LBB0_22:
	b	.LBB0_23
.LBB0_23:
	b	.LBB0_24
.LBB0_24:
	b	.LBB0_25
.LBB0_25:
	b	.LBB0_26
.LBB0_26:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_load_convert, .Lfunc_end0-emit_load_convert
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
	.asciz	"cvtsi2ss #eax, #xmm0"
	.size	.L.str, 21
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
	.asciz	"cvtsi2sd #eax, #xmm0"
	.size	.L.str.1, 21
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"cvtps2pd #xmm0, #xmm0"
	.size	.L.str.2, 22
	.type	KIND_LDOUBLE,@object            // @KIND_LDOUBLE
	.bss
	.globl	KIND_LDOUBLE
	.p2align	3
KIND_LDOUBLE:
	.xword	0                               // 0x0
	.size	KIND_LDOUBLE, 8
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"cvtpd2ps #xmm0, #xmm0"
	.size	.L.str.3, 22
	.type	KIND_BOOL,@object               // @KIND_BOOL
	.bss
	.globl	KIND_BOOL
	.p2align	3
KIND_BOOL:
	.xword	0                               // 0x0
	.size	KIND_BOOL, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_load_convert
	.addrsig_sym is_inttype
	.addrsig_sym emit
	.addrsig_sym emit_to_bool
	.addrsig_sym emit_intcast
	.addrsig_sym emit_toint
	.addrsig_sym SAVE
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_DOUBLE
	.addrsig_sym KIND_LDOUBLE
	.addrsig_sym KIND_BOOL