	.text
	.globl	decContextStatusToString        // -- Begin function decContextStatusToString
	.p2align	2
	.type	decContextStatusToString,@function
decContextStatusToString:               // @decContextStatusToString
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Invalid_operation
	ldr	x9, [x9, :lo12:DEC_Invalid_operation]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, DEC_Condition_IO
	ldr	x8, [x8, :lo12:DEC_Condition_IO]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_2:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Division_by_zero
	ldr	x9, [x9, :lo12:DEC_Division_by_zero]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, DEC_Condition_DZ
	ldr	x8, [x8, :lo12:DEC_Condition_DZ]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_4:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Overflow
	ldr	x9, [x9, :lo12:DEC_Overflow]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, DEC_Condition_OV
	ldr	x8, [x8, :lo12:DEC_Condition_OV]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_6:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Underflow
	ldr	x9, [x9, :lo12:DEC_Underflow]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, DEC_Condition_UN
	ldr	x8, [x8, :lo12:DEC_Condition_UN]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_8:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Inexact
	ldr	x9, [x9, :lo12:DEC_Inexact]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, DEC_Condition_IE
	ldr	x8, [x8, :lo12:DEC_Condition_IE]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_10:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Division_impossible
	ldr	x9, [x9, :lo12:DEC_Division_impossible]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, DEC_Condition_DI
	ldr	x8, [x8, :lo12:DEC_Condition_DI]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_12:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Division_undefined
	ldr	x9, [x9, :lo12:DEC_Division_undefined]
	subs	x8, x8, x9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, DEC_Condition_DU
	ldr	x8, [x8, :lo12:DEC_Condition_DU]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_14:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Rounded
	ldr	x9, [x9, :lo12:DEC_Rounded]
	subs	x8, x8, x9
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	adrp	x8, DEC_Condition_RO
	ldr	x8, [x8, :lo12:DEC_Condition_RO]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_16:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Clamped
	ldr	x9, [x9, :lo12:DEC_Clamped]
	subs	x8, x8, x9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, DEC_Condition_PA
	ldr	x8, [x8, :lo12:DEC_Condition_PA]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_18:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Subnormal
	ldr	x9, [x9, :lo12:DEC_Subnormal]
	subs	x8, x8, x9
	b.ne	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	adrp	x8, DEC_Condition_SU
	ldr	x8, [x8, :lo12:DEC_Condition_SU]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_20:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Conversion_syntax
	ldr	x9, [x9, :lo12:DEC_Conversion_syntax]
	subs	x8, x8, x9
	b.ne	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	adrp	x8, DEC_Condition_CS
	ldr	x8, [x8, :lo12:DEC_Condition_CS]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_22:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Insufficient_storage
	ldr	x9, [x9, :lo12:DEC_Insufficient_storage]
	subs	x8, x8, x9
	b.ne	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	adrp	x8, DEC_Condition_IS
	ldr	x8, [x8, :lo12:DEC_Condition_IS]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_24:
	ldr	x8, [sp, #8]
	adrp	x9, DEC_Invalid_context
	ldr	x9, [x9, :lo12:DEC_Invalid_context]
	subs	x8, x8, x9
	b.ne	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	adrp	x8, DEC_Condition_IC
	ldr	x8, [x8, :lo12:DEC_Condition_IC]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_26:
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	adrp	x8, DEC_Condition_ZE
	ldr	x8, [x8, :lo12:DEC_Condition_ZE]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_28:
	adrp	x8, DEC_Condition_MU
	ldr	x8, [x8, :lo12:DEC_Condition_MU]
	str	x8, [sp, #24]
	b	.LBB0_29
.LBB0_29:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decContextStatusToString, .Lfunc_end0-decContextStatusToString
                                        // -- End function
	.type	DEC_Invalid_operation,@object   // @DEC_Invalid_operation
	.bss
	.globl	DEC_Invalid_operation
	.p2align	3
DEC_Invalid_operation:
	.xword	0                               // 0x0
	.size	DEC_Invalid_operation, 8
	.type	DEC_Condition_IO,@object        // @DEC_Condition_IO
	.globl	DEC_Condition_IO
	.p2align	3
DEC_Condition_IO:
	.xword	0
	.size	DEC_Condition_IO, 8
	.type	DEC_Division_by_zero,@object    // @DEC_Division_by_zero
	.globl	DEC_Division_by_zero
	.p2align	3
DEC_Division_by_zero:
	.xword	0                               // 0x0
	.size	DEC_Division_by_zero, 8
	.type	DEC_Condition_DZ,@object        // @DEC_Condition_DZ
	.globl	DEC_Condition_DZ
	.p2align	3
DEC_Condition_DZ:
	.xword	0
	.size	DEC_Condition_DZ, 8
	.type	DEC_Overflow,@object            // @DEC_Overflow
	.globl	DEC_Overflow
	.p2align	3
DEC_Overflow:
	.xword	0                               // 0x0
	.size	DEC_Overflow, 8
	.type	DEC_Condition_OV,@object        // @DEC_Condition_OV
	.globl	DEC_Condition_OV
	.p2align	3
DEC_Condition_OV:
	.xword	0
	.size	DEC_Condition_OV, 8
	.type	DEC_Underflow,@object           // @DEC_Underflow
	.globl	DEC_Underflow
	.p2align	3
DEC_Underflow:
	.xword	0                               // 0x0
	.size	DEC_Underflow, 8
	.type	DEC_Condition_UN,@object        // @DEC_Condition_UN
	.globl	DEC_Condition_UN
	.p2align	3
DEC_Condition_UN:
	.xword	0
	.size	DEC_Condition_UN, 8
	.type	DEC_Inexact,@object             // @DEC_Inexact
	.globl	DEC_Inexact
	.p2align	3
DEC_Inexact:
	.xword	0                               // 0x0
	.size	DEC_Inexact, 8
	.type	DEC_Condition_IE,@object        // @DEC_Condition_IE
	.globl	DEC_Condition_IE
	.p2align	3
DEC_Condition_IE:
	.xword	0
	.size	DEC_Condition_IE, 8
	.type	DEC_Division_impossible,@object // @DEC_Division_impossible
	.globl	DEC_Division_impossible
	.p2align	3
DEC_Division_impossible:
	.xword	0                               // 0x0
	.size	DEC_Division_impossible, 8
	.type	DEC_Condition_DI,@object        // @DEC_Condition_DI
	.globl	DEC_Condition_DI
	.p2align	3
DEC_Condition_DI:
	.xword	0
	.size	DEC_Condition_DI, 8
	.type	DEC_Division_undefined,@object  // @DEC_Division_undefined
	.globl	DEC_Division_undefined
	.p2align	3
DEC_Division_undefined:
	.xword	0                               // 0x0
	.size	DEC_Division_undefined, 8
	.type	DEC_Condition_DU,@object        // @DEC_Condition_DU
	.globl	DEC_Condition_DU
	.p2align	3
DEC_Condition_DU:
	.xword	0
	.size	DEC_Condition_DU, 8
	.type	DEC_Rounded,@object             // @DEC_Rounded
	.globl	DEC_Rounded
	.p2align	3
DEC_Rounded:
	.xword	0                               // 0x0
	.size	DEC_Rounded, 8
	.type	DEC_Condition_RO,@object        // @DEC_Condition_RO
	.globl	DEC_Condition_RO
	.p2align	3
DEC_Condition_RO:
	.xword	0
	.size	DEC_Condition_RO, 8
	.type	DEC_Clamped,@object             // @DEC_Clamped
	.globl	DEC_Clamped
	.p2align	3
DEC_Clamped:
	.xword	0                               // 0x0
	.size	DEC_Clamped, 8
	.type	DEC_Condition_PA,@object        // @DEC_Condition_PA
	.globl	DEC_Condition_PA
	.p2align	3
DEC_Condition_PA:
	.xword	0
	.size	DEC_Condition_PA, 8
	.type	DEC_Subnormal,@object           // @DEC_Subnormal
	.globl	DEC_Subnormal
	.p2align	3
DEC_Subnormal:
	.xword	0                               // 0x0
	.size	DEC_Subnormal, 8
	.type	DEC_Condition_SU,@object        // @DEC_Condition_SU
	.globl	DEC_Condition_SU
	.p2align	3
DEC_Condition_SU:
	.xword	0
	.size	DEC_Condition_SU, 8
	.type	DEC_Conversion_syntax,@object   // @DEC_Conversion_syntax
	.globl	DEC_Conversion_syntax
	.p2align	3
DEC_Conversion_syntax:
	.xword	0                               // 0x0
	.size	DEC_Conversion_syntax, 8
	.type	DEC_Condition_CS,@object        // @DEC_Condition_CS
	.globl	DEC_Condition_CS
	.p2align	3
DEC_Condition_CS:
	.xword	0
	.size	DEC_Condition_CS, 8
	.type	DEC_Insufficient_storage,@object // @DEC_Insufficient_storage
	.globl	DEC_Insufficient_storage
	.p2align	3
DEC_Insufficient_storage:
	.xword	0                               // 0x0
	.size	DEC_Insufficient_storage, 8
	.type	DEC_Condition_IS,@object        // @DEC_Condition_IS
	.globl	DEC_Condition_IS
	.p2align	3
DEC_Condition_IS:
	.xword	0
	.size	DEC_Condition_IS, 8
	.type	DEC_Invalid_context,@object     // @DEC_Invalid_context
	.globl	DEC_Invalid_context
	.p2align	3
DEC_Invalid_context:
	.xword	0                               // 0x0
	.size	DEC_Invalid_context, 8
	.type	DEC_Condition_IC,@object        // @DEC_Condition_IC
	.globl	DEC_Condition_IC
	.p2align	3
DEC_Condition_IC:
	.xword	0
	.size	DEC_Condition_IC, 8
	.type	DEC_Condition_ZE,@object        // @DEC_Condition_ZE
	.globl	DEC_Condition_ZE
	.p2align	3
DEC_Condition_ZE:
	.xword	0
	.size	DEC_Condition_ZE, 8
	.type	DEC_Condition_MU,@object        // @DEC_Condition_MU
	.globl	DEC_Condition_MU
	.p2align	3
DEC_Condition_MU:
	.xword	0
	.size	DEC_Condition_MU, 8
	.type	DEC_Condition_LD,@object        // @DEC_Condition_LD
	.globl	DEC_Condition_LD
	.p2align	3
DEC_Condition_LD:
	.xword	0
	.size	DEC_Condition_LD, 8
	.type	DEC_Lost_digits,@object         // @DEC_Lost_digits
	.globl	DEC_Lost_digits
	.p2align	3
DEC_Lost_digits:
	.xword	0                               // 0x0
	.size	DEC_Lost_digits, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_Condition_IO
	.addrsig_sym DEC_Division_by_zero
	.addrsig_sym DEC_Condition_DZ
	.addrsig_sym DEC_Overflow
	.addrsig_sym DEC_Condition_OV
	.addrsig_sym DEC_Underflow
	.addrsig_sym DEC_Condition_UN
	.addrsig_sym DEC_Inexact
	.addrsig_sym DEC_Condition_IE
	.addrsig_sym DEC_Division_impossible
	.addrsig_sym DEC_Condition_DI
	.addrsig_sym DEC_Division_undefined
	.addrsig_sym DEC_Condition_DU
	.addrsig_sym DEC_Rounded
	.addrsig_sym DEC_Condition_RO
	.addrsig_sym DEC_Clamped
	.addrsig_sym DEC_Condition_PA
	.addrsig_sym DEC_Subnormal
	.addrsig_sym DEC_Condition_SU
	.addrsig_sym DEC_Conversion_syntax
	.addrsig_sym DEC_Condition_CS
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DEC_Condition_IS
	.addrsig_sym DEC_Invalid_context
	.addrsig_sym DEC_Condition_IC
	.addrsig_sym DEC_Condition_ZE
	.addrsig_sym DEC_Condition_MU