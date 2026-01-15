	.text
	.globl	decNumberClassToString          // -- Begin function decNumberClassToString
	.p2align	2
	.type	decNumberClassToString,@function
decNumberClassToString:                 // @decNumberClassToString
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	adrp	x9, DEC_CLASS_POS_NORMAL
	ldr	w9, [x9, :lo12:DEC_CLASS_POS_NORMAL]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, DEC_ClassString_PN
	ldr	x8, [x8, :lo12:DEC_ClassString_PN]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_2:
	ldr	w8, [sp, #4]
	adrp	x9, DEC_CLASS_NEG_NORMAL
	ldr	w9, [x9, :lo12:DEC_CLASS_NEG_NORMAL]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, DEC_ClassString_NN
	ldr	x8, [x8, :lo12:DEC_ClassString_NN]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_4:
	ldr	w8, [sp, #4]
	adrp	x9, DEC_CLASS_POS_ZERO
	ldr	w9, [x9, :lo12:DEC_CLASS_POS_ZERO]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, DEC_ClassString_PZ
	ldr	x8, [x8, :lo12:DEC_ClassString_PZ]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_6:
	ldr	w8, [sp, #4]
	adrp	x9, DEC_CLASS_NEG_ZERO
	ldr	w9, [x9, :lo12:DEC_CLASS_NEG_ZERO]
	subs	w8, w8, w9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, DEC_ClassString_NZ
	ldr	x8, [x8, :lo12:DEC_ClassString_NZ]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_8:
	ldr	w8, [sp, #4]
	adrp	x9, DEC_CLASS_POS_SUBNORMAL
	ldr	w9, [x9, :lo12:DEC_CLASS_POS_SUBNORMAL]
	subs	w8, w8, w9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, DEC_ClassString_PS
	ldr	x8, [x8, :lo12:DEC_ClassString_PS]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_10:
	ldr	w8, [sp, #4]
	adrp	x9, DEC_CLASS_NEG_SUBNORMAL
	ldr	w9, [x9, :lo12:DEC_CLASS_NEG_SUBNORMAL]
	subs	w8, w8, w9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, DEC_ClassString_NS
	ldr	x8, [x8, :lo12:DEC_ClassString_NS]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_12:
	ldr	w8, [sp, #4]
	adrp	x9, DEC_CLASS_POS_INF
	ldr	w9, [x9, :lo12:DEC_CLASS_POS_INF]
	subs	w8, w8, w9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, DEC_ClassString_PI
	ldr	x8, [x8, :lo12:DEC_ClassString_PI]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_14:
	ldr	w8, [sp, #4]
	adrp	x9, DEC_CLASS_NEG_INF
	ldr	w9, [x9, :lo12:DEC_CLASS_NEG_INF]
	subs	w8, w8, w9
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	adrp	x8, DEC_ClassString_NI
	ldr	x8, [x8, :lo12:DEC_ClassString_NI]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_16:
	ldr	w8, [sp, #4]
	adrp	x9, DEC_CLASS_QNAN
	ldr	w9, [x9, :lo12:DEC_CLASS_QNAN]
	subs	w8, w8, w9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, DEC_ClassString_QN
	ldr	x8, [x8, :lo12:DEC_ClassString_QN]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_18:
	ldr	w8, [sp, #4]
	adrp	x9, DEC_CLASS_SNAN
	ldr	w9, [x9, :lo12:DEC_CLASS_SNAN]
	subs	w8, w8, w9
	b.ne	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	adrp	x8, DEC_ClassString_SN
	ldr	x8, [x8, :lo12:DEC_ClassString_SN]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_20:
	adrp	x8, DEC_ClassString_UN
	ldr	x8, [x8, :lo12:DEC_ClassString_UN]
	str	x8, [sp, #8]
	b	.LBB0_21
.LBB0_21:
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	decNumberClassToString, .Lfunc_end0-decNumberClassToString
                                        // -- End function
	.type	DEC_CLASS_POS_NORMAL,@object    // @DEC_CLASS_POS_NORMAL
	.bss
	.globl	DEC_CLASS_POS_NORMAL
	.p2align	2
DEC_CLASS_POS_NORMAL:
	.word	0                               // 0x0
	.size	DEC_CLASS_POS_NORMAL, 4
	.type	DEC_ClassString_PN,@object      // @DEC_ClassString_PN
	.globl	DEC_ClassString_PN
	.p2align	3
DEC_ClassString_PN:
	.xword	0
	.size	DEC_ClassString_PN, 8
	.type	DEC_CLASS_NEG_NORMAL,@object    // @DEC_CLASS_NEG_NORMAL
	.globl	DEC_CLASS_NEG_NORMAL
	.p2align	2
DEC_CLASS_NEG_NORMAL:
	.word	0                               // 0x0
	.size	DEC_CLASS_NEG_NORMAL, 4
	.type	DEC_ClassString_NN,@object      // @DEC_ClassString_NN
	.globl	DEC_ClassString_NN
	.p2align	3
DEC_ClassString_NN:
	.xword	0
	.size	DEC_ClassString_NN, 8
	.type	DEC_CLASS_POS_ZERO,@object      // @DEC_CLASS_POS_ZERO
	.globl	DEC_CLASS_POS_ZERO
	.p2align	2
DEC_CLASS_POS_ZERO:
	.word	0                               // 0x0
	.size	DEC_CLASS_POS_ZERO, 4
	.type	DEC_ClassString_PZ,@object      // @DEC_ClassString_PZ
	.globl	DEC_ClassString_PZ
	.p2align	3
DEC_ClassString_PZ:
	.xword	0
	.size	DEC_ClassString_PZ, 8
	.type	DEC_CLASS_NEG_ZERO,@object      // @DEC_CLASS_NEG_ZERO
	.globl	DEC_CLASS_NEG_ZERO
	.p2align	2
DEC_CLASS_NEG_ZERO:
	.word	0                               // 0x0
	.size	DEC_CLASS_NEG_ZERO, 4
	.type	DEC_ClassString_NZ,@object      // @DEC_ClassString_NZ
	.globl	DEC_ClassString_NZ
	.p2align	3
DEC_ClassString_NZ:
	.xword	0
	.size	DEC_ClassString_NZ, 8
	.type	DEC_CLASS_POS_SUBNORMAL,@object // @DEC_CLASS_POS_SUBNORMAL
	.globl	DEC_CLASS_POS_SUBNORMAL
	.p2align	2
DEC_CLASS_POS_SUBNORMAL:
	.word	0                               // 0x0
	.size	DEC_CLASS_POS_SUBNORMAL, 4
	.type	DEC_ClassString_PS,@object      // @DEC_ClassString_PS
	.globl	DEC_ClassString_PS
	.p2align	3
DEC_ClassString_PS:
	.xword	0
	.size	DEC_ClassString_PS, 8
	.type	DEC_CLASS_NEG_SUBNORMAL,@object // @DEC_CLASS_NEG_SUBNORMAL
	.globl	DEC_CLASS_NEG_SUBNORMAL
	.p2align	2
DEC_CLASS_NEG_SUBNORMAL:
	.word	0                               // 0x0
	.size	DEC_CLASS_NEG_SUBNORMAL, 4
	.type	DEC_ClassString_NS,@object      // @DEC_ClassString_NS
	.globl	DEC_ClassString_NS
	.p2align	3
DEC_ClassString_NS:
	.xword	0
	.size	DEC_ClassString_NS, 8
	.type	DEC_CLASS_POS_INF,@object       // @DEC_CLASS_POS_INF
	.globl	DEC_CLASS_POS_INF
	.p2align	2
DEC_CLASS_POS_INF:
	.word	0                               // 0x0
	.size	DEC_CLASS_POS_INF, 4
	.type	DEC_ClassString_PI,@object      // @DEC_ClassString_PI
	.globl	DEC_ClassString_PI
	.p2align	3
DEC_ClassString_PI:
	.xword	0
	.size	DEC_ClassString_PI, 8
	.type	DEC_CLASS_NEG_INF,@object       // @DEC_CLASS_NEG_INF
	.globl	DEC_CLASS_NEG_INF
	.p2align	2
DEC_CLASS_NEG_INF:
	.word	0                               // 0x0
	.size	DEC_CLASS_NEG_INF, 4
	.type	DEC_ClassString_NI,@object      // @DEC_ClassString_NI
	.globl	DEC_ClassString_NI
	.p2align	3
DEC_ClassString_NI:
	.xword	0
	.size	DEC_ClassString_NI, 8
	.type	DEC_CLASS_QNAN,@object          // @DEC_CLASS_QNAN
	.globl	DEC_CLASS_QNAN
	.p2align	2
DEC_CLASS_QNAN:
	.word	0                               // 0x0
	.size	DEC_CLASS_QNAN, 4
	.type	DEC_ClassString_QN,@object      // @DEC_ClassString_QN
	.globl	DEC_ClassString_QN
	.p2align	3
DEC_ClassString_QN:
	.xword	0
	.size	DEC_ClassString_QN, 8
	.type	DEC_CLASS_SNAN,@object          // @DEC_CLASS_SNAN
	.globl	DEC_CLASS_SNAN
	.p2align	2
DEC_CLASS_SNAN:
	.word	0                               // 0x0
	.size	DEC_CLASS_SNAN, 4
	.type	DEC_ClassString_SN,@object      // @DEC_ClassString_SN
	.globl	DEC_ClassString_SN
	.p2align	3
DEC_ClassString_SN:
	.xword	0
	.size	DEC_ClassString_SN, 8
	.type	DEC_ClassString_UN,@object      // @DEC_ClassString_UN
	.globl	DEC_ClassString_UN
	.p2align	3
DEC_ClassString_UN:
	.xword	0
	.size	DEC_ClassString_UN, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DEC_CLASS_POS_NORMAL
	.addrsig_sym DEC_ClassString_PN
	.addrsig_sym DEC_CLASS_NEG_NORMAL
	.addrsig_sym DEC_ClassString_NN
	.addrsig_sym DEC_CLASS_POS_ZERO
	.addrsig_sym DEC_ClassString_PZ
	.addrsig_sym DEC_CLASS_NEG_ZERO
	.addrsig_sym DEC_ClassString_NZ
	.addrsig_sym DEC_CLASS_POS_SUBNORMAL
	.addrsig_sym DEC_ClassString_PS
	.addrsig_sym DEC_CLASS_NEG_SUBNORMAL
	.addrsig_sym DEC_ClassString_NS
	.addrsig_sym DEC_CLASS_POS_INF
	.addrsig_sym DEC_ClassString_PI
	.addrsig_sym DEC_CLASS_NEG_INF
	.addrsig_sym DEC_ClassString_NI
	.addrsig_sym DEC_CLASS_QNAN
	.addrsig_sym DEC_ClassString_QN
	.addrsig_sym DEC_CLASS_SNAN
	.addrsig_sym DEC_ClassString_SN
	.addrsig_sym DEC_ClassString_UN