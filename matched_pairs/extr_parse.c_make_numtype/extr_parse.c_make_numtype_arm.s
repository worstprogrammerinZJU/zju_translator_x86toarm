	.text
	.p2align	2                               // -- Begin function make_numtype
	.type	make_numtype,@function
make_numtype:                           // @make_numtype
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	mov	w0, #1
	mov	w1, #16
	bl	calloc
	str	x0, [sp]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	w8, [sp, #8]
	ldr	x9, [sp]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-4]
	adrp	x9, KIND_VOID
	ldr	w9, [x9, :lo12:KIND_VOID]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	str	wzr, [x8, #12]
	ldr	x8, [sp]
	str	wzr, [x8, #8]
	b	.LBB0_30
.LBB0_2:
	ldur	w8, [x29, #-4]
	adrp	x9, KIND_BOOL
	ldr	w9, [x9, :lo12:KIND_BOOL]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	b	.LBB0_29
.LBB0_4:
	ldur	w8, [x29, #-4]
	adrp	x9, KIND_CHAR
	ldr	w9, [x9, :lo12:KIND_CHAR]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	b	.LBB0_28
.LBB0_6:
	ldur	w8, [x29, #-4]
	adrp	x9, KIND_SHORT
	ldr	w9, [x9, :lo12:KIND_SHORT]
	subs	w8, w8, w9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x9, [sp]
	mov	w8, #2
	str	w8, [x9, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	b	.LBB0_27
.LBB0_8:
	ldur	w8, [x29, #-4]
	adrp	x9, KIND_INT
	ldr	w9, [x9, :lo12:KIND_INT]
	subs	w8, w8, w9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x9, [sp]
	mov	w8, #4
	str	w8, [x9, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	b	.LBB0_26
.LBB0_10:
	ldur	w8, [x29, #-4]
	adrp	x9, KIND_LONG
	ldr	w9, [x9, :lo12:KIND_LONG]
	subs	w8, w8, w9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x9, [sp]
	mov	w8, #8
	str	w8, [x9, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	b	.LBB0_25
.LBB0_12:
	ldur	w8, [x29, #-4]
	adrp	x9, KIND_LLONG
	ldr	w9, [x9, :lo12:KIND_LLONG]
	subs	w8, w8, w9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	x9, [sp]
	mov	w8, #8
	str	w8, [x9, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	b	.LBB0_24
.LBB0_14:
	ldur	w8, [x29, #-4]
	adrp	x9, KIND_FLOAT
	ldr	w9, [x9, :lo12:KIND_FLOAT]
	subs	w8, w8, w9
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	x9, [sp]
	mov	w8, #4
	str	w8, [x9, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	b	.LBB0_23
.LBB0_16:
	ldur	w8, [x29, #-4]
	adrp	x9, KIND_DOUBLE
	ldr	w9, [x9, :lo12:KIND_DOUBLE]
	subs	w8, w8, w9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	x9, [sp]
	mov	w8, #8
	str	w8, [x9, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	b	.LBB0_22
.LBB0_18:
	ldur	w8, [x29, #-4]
	adrp	x9, KIND_LDOUBLE
	ldr	w9, [x9, :lo12:KIND_LDOUBLE]
	subs	w8, w8, w9
	b.ne	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	x9, [sp]
	mov	w8, #8
	str	w8, [x9, #12]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	b	.LBB0_21
.LBB0_20:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
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
	b	.LBB0_27
.LBB0_27:
	b	.LBB0_28
.LBB0_28:
	b	.LBB0_29
.LBB0_29:
	b	.LBB0_30
.LBB0_30:
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_numtype, .Lfunc_end0-make_numtype
                                        // -- End function
	.type	KIND_VOID,@object               // @KIND_VOID
	.bss
	.globl	KIND_VOID
	.p2align	2
KIND_VOID:
	.word	0                               // 0x0
	.size	KIND_VOID, 4
	.type	KIND_BOOL,@object               // @KIND_BOOL
	.globl	KIND_BOOL
	.p2align	2
KIND_BOOL:
	.word	0                               // 0x0
	.size	KIND_BOOL, 4
	.type	KIND_CHAR,@object               // @KIND_CHAR
	.globl	KIND_CHAR
	.p2align	2
KIND_CHAR:
	.word	0                               // 0x0
	.size	KIND_CHAR, 4
	.type	KIND_SHORT,@object              // @KIND_SHORT
	.globl	KIND_SHORT
	.p2align	2
KIND_SHORT:
	.word	0                               // 0x0
	.size	KIND_SHORT, 4
	.type	KIND_INT,@object                // @KIND_INT
	.globl	KIND_INT
	.p2align	2
KIND_INT:
	.word	0                               // 0x0
	.size	KIND_INT, 4
	.type	KIND_LONG,@object               // @KIND_LONG
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
	.type	KIND_FLOAT,@object              // @KIND_FLOAT
	.globl	KIND_FLOAT
	.p2align	2
KIND_FLOAT:
	.word	0                               // 0x0
	.size	KIND_FLOAT, 4
	.type	KIND_DOUBLE,@object             // @KIND_DOUBLE
	.globl	KIND_DOUBLE
	.p2align	2
KIND_DOUBLE:
	.word	0                               // 0x0
	.size	KIND_DOUBLE, 4
	.type	KIND_LDOUBLE,@object            // @KIND_LDOUBLE
	.globl	KIND_LDOUBLE
	.p2align	2
KIND_LDOUBLE:
	.word	0                               // 0x0
	.size	KIND_LDOUBLE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error"
	.size	.L.str, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_numtype
	.addrsig_sym calloc
	.addrsig_sym error
	.addrsig_sym KIND_VOID
	.addrsig_sym KIND_BOOL
	.addrsig_sym KIND_CHAR
	.addrsig_sym KIND_SHORT
	.addrsig_sym KIND_INT
	.addrsig_sym KIND_LONG
	.addrsig_sym KIND_LLONG
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_DOUBLE
	.addrsig_sym KIND_LDOUBLE