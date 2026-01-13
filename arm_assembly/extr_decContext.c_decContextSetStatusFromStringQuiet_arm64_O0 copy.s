	.text
	.globl	decContextSetStatusFromStringQuiet // -- Begin function decContextSetStatusFromStringQuiet
	.p2align	2
	.type	decContextSetStatusFromStringQuiet,@function
decContextSetStatusFromStringQuiet:     // @decContextSetStatusFromStringQuiet
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_CS
	ldr	w1, [x8, :lo12:DEC_Condition_CS]
	bl	strcmp
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Conversion_syntax
	ldr	w1, [x8, :lo12:DEC_Conversion_syntax]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_2:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_DZ
	ldr	w1, [x8, :lo12:DEC_Condition_DZ]
	bl	strcmp
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Division_by_zero
	ldr	w1, [x8, :lo12:DEC_Division_by_zero]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_4:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_DI
	ldr	w1, [x8, :lo12:DEC_Condition_DI]
	bl	strcmp
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Division_impossible
	ldr	w1, [x8, :lo12:DEC_Division_impossible]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_6:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_DU
	ldr	w1, [x8, :lo12:DEC_Condition_DU]
	bl	strcmp
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Division_undefined
	ldr	w1, [x8, :lo12:DEC_Division_undefined]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_8:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_IE
	ldr	w1, [x8, :lo12:DEC_Condition_IE]
	bl	strcmp
	cbnz	x0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Inexact
	ldr	w1, [x8, :lo12:DEC_Inexact]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_10:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_IS
	ldr	w1, [x8, :lo12:DEC_Condition_IS]
	bl	strcmp
	cbnz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Insufficient_storage
	ldr	w1, [x8, :lo12:DEC_Insufficient_storage]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_12:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_IC
	ldr	w1, [x8, :lo12:DEC_Condition_IC]
	bl	strcmp
	cbnz	x0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Invalid_context
	ldr	w1, [x8, :lo12:DEC_Invalid_context]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_14:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_IO
	ldr	w1, [x8, :lo12:DEC_Condition_IO]
	bl	strcmp
	cbnz	x0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Invalid_operation
	ldr	w1, [x8, :lo12:DEC_Invalid_operation]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_16:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_OV
	ldr	w1, [x8, :lo12:DEC_Condition_OV]
	bl	strcmp
	cbnz	x0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Overflow
	ldr	w1, [x8, :lo12:DEC_Overflow]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_18:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_PA
	ldr	w1, [x8, :lo12:DEC_Condition_PA]
	bl	strcmp
	cbnz	x0, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Clamped
	ldr	w1, [x8, :lo12:DEC_Clamped]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_20:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_RO
	ldr	w1, [x8, :lo12:DEC_Condition_RO]
	bl	strcmp
	cbnz	x0, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Rounded
	ldr	w1, [x8, :lo12:DEC_Rounded]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_22:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_SU
	ldr	w1, [x8, :lo12:DEC_Condition_SU]
	bl	strcmp
	cbnz	x0, .LBB0_24
	b	.LBB0_23
.LBB0_23:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Subnormal
	ldr	w1, [x8, :lo12:DEC_Subnormal]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_24:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_UN
	ldr	w1, [x8, :lo12:DEC_Condition_UN]
	bl	strcmp
	cbnz	x0, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldr	x0, [sp, #16]
	adrp	x8, DEC_Underflow
	ldr	w1, [x8, :lo12:DEC_Underflow]
	bl	decContextSetStatusQuiet
	stur	x0, [x29, #-8]
	b	.LBB0_29
.LBB0_26:
	ldr	x0, [sp, #8]
	adrp	x8, DEC_Condition_ZE
	ldr	w1, [x8, :lo12:DEC_Condition_ZE]
	bl	strcmp
	cbnz	x0, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_29
.LBB0_28:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_29
.LBB0_29:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decContextSetStatusFromStringQuiet, .Lfunc_end0-decContextSetStatusFromStringQuiet
                                        // -- End function
	.type	DEC_Condition_CS,@object        // @DEC_Condition_CS
	.bss
	.globl	DEC_Condition_CS
	.p2align	2
DEC_Condition_CS:
	.word	0                               // 0x0
	.size	DEC_Condition_CS, 4
	.type	DEC_Conversion_syntax,@object   // @DEC_Conversion_syntax
	.globl	DEC_Conversion_syntax
	.p2align	2
DEC_Conversion_syntax:
	.word	0                               // 0x0
	.size	DEC_Conversion_syntax, 4
	.type	DEC_Condition_DZ,@object        // @DEC_Condition_DZ
	.globl	DEC_Condition_DZ
	.p2align	2
DEC_Condition_DZ:
	.word	0                               // 0x0
	.size	DEC_Condition_DZ, 4
	.type	DEC_Division_by_zero,@object    // @DEC_Division_by_zero
	.globl	DEC_Division_by_zero
	.p2align	2
DEC_Division_by_zero:
	.word	0                               // 0x0
	.size	DEC_Division_by_zero, 4
	.type	DEC_Condition_DI,@object        // @DEC_Condition_DI
	.globl	DEC_Condition_DI
	.p2align	2
DEC_Condition_DI:
	.word	0                               // 0x0
	.size	DEC_Condition_DI, 4
	.type	DEC_Division_impossible,@object // @DEC_Division_impossible
	.globl	DEC_Division_impossible
	.p2align	2
DEC_Division_impossible:
	.word	0                               // 0x0
	.size	DEC_Division_impossible, 4
	.type	DEC_Condition_DU,@object        // @DEC_Condition_DU
	.globl	DEC_Condition_DU
	.p2align	2
DEC_Condition_DU:
	.word	0                               // 0x0
	.size	DEC_Condition_DU, 4
	.type	DEC_Division_undefined,@object  // @DEC_Division_undefined
	.globl	DEC_Division_undefined
	.p2align	2
DEC_Division_undefined:
	.word	0                               // 0x0
	.size	DEC_Division_undefined, 4
	.type	DEC_Condition_IE,@object        // @DEC_Condition_IE
	.globl	DEC_Condition_IE
	.p2align	2
DEC_Condition_IE:
	.word	0                               // 0x0
	.size	DEC_Condition_IE, 4
	.type	DEC_Inexact,@object             // @DEC_Inexact
	.globl	DEC_Inexact
	.p2align	2
DEC_Inexact:
	.word	0                               // 0x0
	.size	DEC_Inexact, 4
	.type	DEC_Condition_IS,@object        // @DEC_Condition_IS
	.globl	DEC_Condition_IS
	.p2align	2
DEC_Condition_IS:
	.word	0                               // 0x0
	.size	DEC_Condition_IS, 4
	.type	DEC_Insufficient_storage,@object // @DEC_Insufficient_storage
	.globl	DEC_Insufficient_storage
	.p2align	2
DEC_Insufficient_storage:
	.word	0                               // 0x0
	.size	DEC_Insufficient_storage, 4
	.type	DEC_Condition_IC,@object        // @DEC_Condition_IC
	.globl	DEC_Condition_IC
	.p2align	2
DEC_Condition_IC:
	.word	0                               // 0x0
	.size	DEC_Condition_IC, 4
	.type	DEC_Invalid_context,@object     // @DEC_Invalid_context
	.globl	DEC_Invalid_context
	.p2align	2
DEC_Invalid_context:
	.word	0                               // 0x0
	.size	DEC_Invalid_context, 4
	.type	DEC_Condition_IO,@object        // @DEC_Condition_IO
	.globl	DEC_Condition_IO
	.p2align	2
DEC_Condition_IO:
	.word	0                               // 0x0
	.size	DEC_Condition_IO, 4
	.type	DEC_Invalid_operation,@object   // @DEC_Invalid_operation
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.word	0                               // 0x0
	.size	DEC_Invalid_operation, 4
	.type	DEC_Condition_OV,@object        // @DEC_Condition_OV
	.globl	DEC_Condition_OV
	.p2align	2
DEC_Condition_OV:
	.word	0                               // 0x0
	.size	DEC_Condition_OV, 4
	.type	DEC_Overflow,@object            // @DEC_Overflow
	.globl	DEC_Overflow
	.p2align	2
DEC_Overflow:
	.word	0                               // 0x0
	.size	DEC_Overflow, 4
	.type	DEC_Condition_PA,@object        // @DEC_Condition_PA
	.globl	DEC_Condition_PA
	.p2align	2
DEC_Condition_PA:
	.word	0                               // 0x0
	.size	DEC_Condition_PA, 4
	.type	DEC_Clamped,@object             // @DEC_Clamped
	.globl	DEC_Clamped
	.p2align	2
DEC_Clamped:
	.word	0                               // 0x0
	.size	DEC_Clamped, 4
	.type	DEC_Condition_RO,@object        // @DEC_Condition_RO
	.globl	DEC_Condition_RO
	.p2align	2
DEC_Condition_RO:
	.word	0                               // 0x0
	.size	DEC_Condition_RO, 4
	.type	DEC_Rounded,@object             // @DEC_Rounded
	.globl	DEC_Rounded
	.p2align	2
DEC_Rounded:
	.word	0                               // 0x0
	.size	DEC_Rounded, 4
	.type	DEC_Condition_SU,@object        // @DEC_Condition_SU
	.globl	DEC_Condition_SU
	.p2align	2
DEC_Condition_SU:
	.word	0                               // 0x0
	.size	DEC_Condition_SU, 4
	.type	DEC_Subnormal,@object           // @DEC_Subnormal
	.globl	DEC_Subnormal
	.p2align	2
DEC_Subnormal:
	.word	0                               // 0x0
	.size	DEC_Subnormal, 4
	.type	DEC_Condition_UN,@object        // @DEC_Condition_UN
	.globl	DEC_Condition_UN
	.p2align	2
DEC_Condition_UN:
	.word	0                               // 0x0
	.size	DEC_Condition_UN, 4
	.type	DEC_Underflow,@object           // @DEC_Underflow
	.globl	DEC_Underflow
	.p2align	2
DEC_Underflow:
	.word	0                               // 0x0
	.size	DEC_Underflow, 4
	.type	DEC_Condition_ZE,@object        // @DEC_Condition_ZE
	.globl	DEC_Condition_ZE
	.p2align	2
DEC_Condition_ZE:
	.word	0                               // 0x0
	.size	DEC_Condition_ZE, 4
	.type	DEC_Condition_LD,@object        // @DEC_Condition_LD
	.globl	DEC_Condition_LD
	.p2align	2
DEC_Condition_LD:
	.word	0                               // 0x0
	.size	DEC_Condition_LD, 4
	.type	DEC_Lost_digits,@object         // @DEC_Lost_digits
	.globl	DEC_Lost_digits
	.p2align	2
DEC_Lost_digits:
	.word	0                               // 0x0
	.size	DEC_Lost_digits, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym decContextSetStatusQuiet
	.addrsig_sym DEC_Condition_CS
	.addrsig_sym DEC_Conversion_syntax
	.addrsig_sym DEC_Condition_DZ
	.addrsig_sym DEC_Division_by_zero
	.addrsig_sym DEC_Condition_DI
	.addrsig_sym DEC_Division_impossible
	.addrsig_sym DEC_Condition_DU
	.addrsig_sym DEC_Division_undefined
	.addrsig_sym DEC_Condition_IE
	.addrsig_sym DEC_Inexact
	.addrsig_sym DEC_Condition_IS
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DEC_Condition_IC
	.addrsig_sym DEC_Invalid_context
	.addrsig_sym DEC_Condition_IO
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_Condition_OV
	.addrsig_sym DEC_Overflow
	.addrsig_sym DEC_Condition_PA
	.addrsig_sym DEC_Clamped
	.addrsig_sym DEC_Condition_RO
	.addrsig_sym DEC_Rounded
	.addrsig_sym DEC_Condition_SU
	.addrsig_sym DEC_Subnormal
	.addrsig_sym DEC_Condition_UN
	.addrsig_sym DEC_Underflow
	.addrsig_sym DEC_Condition_ZE