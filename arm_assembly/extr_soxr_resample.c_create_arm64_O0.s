	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function create
.LCPI0_0:
	.xword	0x3fe999999999999a              // double 0.80000000000000004
.LCPI0_1:
	.xword	0x3fefd70a3d70a3d7              // double 0.99499999999999999
	.text
	.p2align	2
	.type	create,@function
create:                                 // @create
// %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	ldr	w9, [x29, #16]
	ldr	w8, [x29, #24]
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	stur	w5, [x29, #-28]
	stur	d0, [x29, #-40]
	stur	w6, [x29, #-44]
	stur	w7, [x29, #-48]
	stur	d1, [x29, #-56]
	stur	d2, [x29, #-64]
	stur	w9, [x29, #-68]
	stur	w8, [x29, #-72]
	ldur	w8, [x29, #-44]
	adrp	x9, AV_SAMPLE_FMT_S16P
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_S16P]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, SOXR_INT16_S
	ldr	w8, [x8, :lo12:SOXR_INT16_S]
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	b	.LBB0_24
.LBB0_2:
	ldur	w8, [x29, #-44]
	adrp	x9, AV_SAMPLE_FMT_S16
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_S16]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, SOXR_INT16_I
	ldr	w8, [x8, :lo12:SOXR_INT16_I]
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	b	.LBB0_23
.LBB0_4:
	ldur	w8, [x29, #-44]
	adrp	x9, AV_SAMPLE_FMT_S32P
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_S32P]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, SOXR_INT32_S
	ldr	w8, [x8, :lo12:SOXR_INT32_S]
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	b	.LBB0_22
.LBB0_6:
	ldur	w8, [x29, #-44]
	adrp	x9, AV_SAMPLE_FMT_S32
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_S32]
	subs	w8, w8, w9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, SOXR_INT32_I
	ldr	w8, [x8, :lo12:SOXR_INT32_I]
	str	w8, [sp, #40]                   // 4-byte Folded Spill
	b	.LBB0_21
.LBB0_8:
	ldur	w8, [x29, #-44]
	adrp	x9, AV_SAMPLE_FMT_FLTP
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_FLTP]
	subs	w8, w8, w9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, SOXR_FLOAT32_S
	ldr	w8, [x8, :lo12:SOXR_FLOAT32_S]
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_20
.LBB0_10:
	ldur	w8, [x29, #-44]
	adrp	x9, AV_SAMPLE_FMT_FLT
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_FLT]
	subs	w8, w8, w9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, SOXR_FLOAT32_I
	ldr	w8, [x8, :lo12:SOXR_FLOAT32_I]
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	b	.LBB0_19
.LBB0_12:
	ldur	w8, [x29, #-44]
	adrp	x9, AV_SAMPLE_FMT_DBLP
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_DBLP]
	subs	w8, w8, w9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, SOXR_FLOAT64_S
	ldr	w8, [x8, :lo12:SOXR_FLOAT64_S]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_18
.LBB0_14:
	ldur	w8, [x29, #-44]
	adrp	x9, AV_SAMPLE_FMT_DBL
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_DBL]
	subs	w8, w8, w9
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	adrp	x8, SOXR_FLOAT64_I
	ldr	w8, [x8, :lo12:SOXR_FLOAT64_I]
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	b	.LBB0_17
.LBB0_16:
	mov	w8, #-1
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	b	.LBB0_17
.LBB0_17:
	ldr	w8, [sp, #24]                   // 4-byte Folded Reload
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_18
.LBB0_18:
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	str	w8, [sp, #32]                   // 4-byte Folded Spill
	b	.LBB0_19
.LBB0_19:
	ldr	w8, [sp, #32]                   // 4-byte Folded Reload
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_20
.LBB0_20:
	ldr	w8, [sp, #36]                   // 4-byte Folded Reload
	str	w8, [sp, #40]                   // 4-byte Folded Spill
	b	.LBB0_21
.LBB0_21:
	ldr	w8, [sp, #40]                   // 4-byte Folded Reload
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	b	.LBB0_22
.LBB0_22:
	ldr	w8, [sp, #44]                   // 4-byte Folded Reload
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	b	.LBB0_23
.LBB0_23:
	ldr	w8, [sp, #48]                   // 4-byte Folded Reload
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	b	.LBB0_24
.LBB0_24:
	ldr	w8, [sp, #52]                   // 4-byte Folded Reload
	str	w8, [sp, #80]
	ldr	w0, [sp, #80]
	ldr	w1, [sp, #80]
	bl	soxr_io_spec
	str	w0, [sp, #76]
	ldur	d0, [x29, #-64]
	fmov	d1, #2.00000000
	fsub	d0, d0, d1
	fmov	d1, #4.00000000
	fdiv	d0, d0, d1
	fcvtzs	w0, d0
	adrp	x8, SOXR_HI_PREC_CLOCK
	ldr	w8, [x8, :lo12:SOXR_HI_PREC_CLOCK]
	adrp	x9, SOXR_ROLLOFF_NONE
	ldr	w9, [x9, :lo12:SOXR_ROLLOFF_NONE]
	orr	w8, w8, w9
	ldur	w9, [x29, #-68]
	subs	w9, w9, #0
	cset	w9, ne
	and	w9, w9, #0x1
	mul	w1, w8, w9
	bl	soxr_quality_spec
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x8, [x29, #-64]
	str	x8, [sp, #56]
	ldur	d0, [x29, #-40]
	fcmp	d0, #0.0
	b.eq	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldur	d0, [x29, #-40]
	adrp	x8, .LCPI0_1
	ldr	d1, [x8, :lo12:.LCPI0_1]
	bl	FFMIN
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	bl	FFMAX
	mov	w8, #100
	mul	w8, w0, w8
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_27
.LBB0_26:
	ldr	w8, [sp, #64]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_27
.LBB0_27:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	add	x9, sp, #56
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	str	w8, [sp, #64]
	ldur	x8, [x29, #-8]
	mov	w0, w8
	bl	soxr_delete
	ldr	x5, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-16]
	ldur	w1, [x29, #-12]
	mov	w6, wzr
	mov	w2, w6
	sub	x3, x29, #76
	add	x4, sp, #76
	bl	soxr_create
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	cbnz	x8, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	adrp	x8, AV_LOG_ERROR
	ldr	w1, [x8, :lo12:AV_LOG_ERROR]
	ldur	w3, [x29, #-76]
	mov	x0, xzr
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	av_log
	b	.LBB0_29
.LBB0_29:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	create, .Lfunc_end0-create
                                        // -- End function
	.type	AV_SAMPLE_FMT_S16P,@object      // @AV_SAMPLE_FMT_S16P
	.bss
	.globl	AV_SAMPLE_FMT_S16P
	.p2align	2
AV_SAMPLE_FMT_S16P:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_S16P, 4
	.type	SOXR_INT16_S,@object            // @SOXR_INT16_S
	.globl	SOXR_INT16_S
	.p2align	2
SOXR_INT16_S:
	.word	0                               // 0x0
	.size	SOXR_INT16_S, 4
	.type	AV_SAMPLE_FMT_S16,@object       // @AV_SAMPLE_FMT_S16
	.globl	AV_SAMPLE_FMT_S16
	.p2align	2
AV_SAMPLE_FMT_S16:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_S16, 4
	.type	SOXR_INT16_I,@object            // @SOXR_INT16_I
	.globl	SOXR_INT16_I
	.p2align	2
SOXR_INT16_I:
	.word	0                               // 0x0
	.size	SOXR_INT16_I, 4
	.type	AV_SAMPLE_FMT_S32P,@object      // @AV_SAMPLE_FMT_S32P
	.globl	AV_SAMPLE_FMT_S32P
	.p2align	2
AV_SAMPLE_FMT_S32P:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_S32P, 4
	.type	SOXR_INT32_S,@object            // @SOXR_INT32_S
	.globl	SOXR_INT32_S
	.p2align	2
SOXR_INT32_S:
	.word	0                               // 0x0
	.size	SOXR_INT32_S, 4
	.type	AV_SAMPLE_FMT_S32,@object       // @AV_SAMPLE_FMT_S32
	.globl	AV_SAMPLE_FMT_S32
	.p2align	2
AV_SAMPLE_FMT_S32:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_S32, 4
	.type	SOXR_INT32_I,@object            // @SOXR_INT32_I
	.globl	SOXR_INT32_I
	.p2align	2
SOXR_INT32_I:
	.word	0                               // 0x0
	.size	SOXR_INT32_I, 4
	.type	AV_SAMPLE_FMT_FLTP,@object      // @AV_SAMPLE_FMT_FLTP
	.globl	AV_SAMPLE_FMT_FLTP
	.p2align	2
AV_SAMPLE_FMT_FLTP:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_FLTP, 4
	.type	SOXR_FLOAT32_S,@object          // @SOXR_FLOAT32_S
	.globl	SOXR_FLOAT32_S
	.p2align	2
SOXR_FLOAT32_S:
	.word	0                               // 0x0
	.size	SOXR_FLOAT32_S, 4
	.type	AV_SAMPLE_FMT_FLT,@object       // @AV_SAMPLE_FMT_FLT
	.globl	AV_SAMPLE_FMT_FLT
	.p2align	2
AV_SAMPLE_FMT_FLT:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_FLT, 4
	.type	SOXR_FLOAT32_I,@object          // @SOXR_FLOAT32_I
	.globl	SOXR_FLOAT32_I
	.p2align	2
SOXR_FLOAT32_I:
	.word	0                               // 0x0
	.size	SOXR_FLOAT32_I, 4
	.type	AV_SAMPLE_FMT_DBLP,@object      // @AV_SAMPLE_FMT_DBLP
	.globl	AV_SAMPLE_FMT_DBLP
	.p2align	2
AV_SAMPLE_FMT_DBLP:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_DBLP, 4
	.type	SOXR_FLOAT64_S,@object          // @SOXR_FLOAT64_S
	.globl	SOXR_FLOAT64_S
	.p2align	2
SOXR_FLOAT64_S:
	.word	0                               // 0x0
	.size	SOXR_FLOAT64_S, 4
	.type	AV_SAMPLE_FMT_DBL,@object       // @AV_SAMPLE_FMT_DBL
	.globl	AV_SAMPLE_FMT_DBL
	.p2align	2
AV_SAMPLE_FMT_DBL:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_DBL, 4
	.type	SOXR_FLOAT64_I,@object          // @SOXR_FLOAT64_I
	.globl	SOXR_FLOAT64_I
	.p2align	2
SOXR_FLOAT64_I:
	.word	0                               // 0x0
	.size	SOXR_FLOAT64_I, 4
	.type	SOXR_HI_PREC_CLOCK,@object      // @SOXR_HI_PREC_CLOCK
	.globl	SOXR_HI_PREC_CLOCK
	.p2align	2
SOXR_HI_PREC_CLOCK:
	.word	0                               // 0x0
	.size	SOXR_HI_PREC_CLOCK, 4
	.type	SOXR_ROLLOFF_NONE,@object       // @SOXR_ROLLOFF_NONE
	.globl	SOXR_ROLLOFF_NONE
	.p2align	2
SOXR_ROLLOFF_NONE:
	.word	0                               // 0x0
	.size	SOXR_ROLLOFF_NONE, 4
	.type	AV_LOG_ERROR,@object            // @AV_LOG_ERROR
	.globl	AV_LOG_ERROR
	.p2align	2
AV_LOG_ERROR:
	.word	0                               // 0x0
	.size	AV_LOG_ERROR, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"soxr_create: %s\n"
	.size	.L.str, 17
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym create
	.addrsig_sym soxr_io_spec
	.addrsig_sym soxr_quality_spec
	.addrsig_sym FFMAX
	.addrsig_sym FFMIN
	.addrsig_sym soxr_delete
	.addrsig_sym soxr_create
	.addrsig_sym av_log
	.addrsig_sym AV_SAMPLE_FMT_S16P
	.addrsig_sym SOXR_INT16_S
	.addrsig_sym AV_SAMPLE_FMT_S16
	.addrsig_sym SOXR_INT16_I
	.addrsig_sym AV_SAMPLE_FMT_S32P
	.addrsig_sym SOXR_INT32_S
	.addrsig_sym AV_SAMPLE_FMT_S32
	.addrsig_sym SOXR_INT32_I
	.addrsig_sym AV_SAMPLE_FMT_FLTP
	.addrsig_sym SOXR_FLOAT32_S
	.addrsig_sym AV_SAMPLE_FMT_FLT
	.addrsig_sym SOXR_FLOAT32_I
	.addrsig_sym AV_SAMPLE_FMT_DBLP
	.addrsig_sym SOXR_FLOAT64_S
	.addrsig_sym AV_SAMPLE_FMT_DBL
	.addrsig_sym SOXR_FLOAT64_I
	.addrsig_sym SOXR_HI_PREC_CLOCK
	.addrsig_sym SOXR_ROLLOFF_NONE
	.addrsig_sym AV_LOG_ERROR