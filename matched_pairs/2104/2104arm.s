	.text
	.globl	swri_resample_dsp_init          // -- Begin function swri_resample_dsp_init
	.p2align	2
	.type	swri_resample_dsp_init,@function
swri_resample_dsp_init:                 // @swri_resample_dsp_init
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_6
// %bb.1:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	adrp	x8, resample_one_int16
	ldr	w8, [x8, :lo12:resample_one_int16]
	ldr	x9, [sp, #8]
	str	w8, [x9, #12]
	adrp	x8, resample_common_int16
	ldr	w8, [x8, :lo12:resample_common_int16]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	adrp	x8, resample_linear_int16
	ldr	w8, [x8, :lo12:resample_linear_int16]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	b	.LBB0_6
.LBB0_3:
	adrp	x8, resample_one_int32
	ldr	w8, [x8, :lo12:resample_one_int32]
	ldr	x9, [sp, #8]
	str	w8, [x9, #12]
	adrp	x8, resample_common_int32
	ldr	w8, [x8, :lo12:resample_common_int32]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	adrp	x8, resample_linear_int32
	ldr	w8, [x8, :lo12:resample_linear_int32]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	b	.LBB0_6
.LBB0_4:
	adrp	x8, resample_one_float
	ldr	w8, [x8, :lo12:resample_one_float]
	ldr	x9, [sp, #8]
	str	w8, [x9, #12]
	adrp	x8, resample_common_float
	ldr	w8, [x8, :lo12:resample_common_float]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	adrp	x8, resample_linear_float
	ldr	w8, [x8, :lo12:resample_linear_float]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	b	.LBB0_6
.LBB0_5:
	adrp	x8, resample_one_double
	ldr	w8, [x8, :lo12:resample_one_double]
	ldr	x9, [sp, #8]
	str	w8, [x9, #12]
	adrp	x8, resample_common_double
	ldr	w8, [x8, :lo12:resample_common_double]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	adrp	x8, resample_linear_double
	ldr	w8, [x8, :lo12:resample_linear_double]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	b	.LBB0_6
.LBB0_6:
	adrp	x8, ARCH_X86
	ldr	x8, [x8, :lo12:ARCH_X86]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #8]
	bl	swri_resample_dsp_x86_init
	b	.LBB0_14
.LBB0_8:
	adrp	x8, ARCH_ARM
	ldr	x8, [x8, :lo12:ARCH_ARM]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x0, [sp, #8]
	bl	swri_resample_dsp_arm_init
	b	.LBB0_13
.LBB0_10:
	adrp	x8, ARCH_AARCH64
	ldr	x8, [x8, :lo12:ARCH_AARCH64]
	cbz	x8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	x0, [sp, #8]
	bl	swri_resample_dsp_aarch64_init
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	swri_resample_dsp_init, .Lfunc_end0-swri_resample_dsp_init
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_5-.Ltmp0
                                        // -- End function
	.type	resample_one_int16,@object      // @resample_one_int16
	.bss
	.globl	resample_one_int16
	.p2align	2
resample_one_int16:
	.word	0                               // 0x0
	.size	resample_one_int16, 4
	.type	resample_common_int16,@object   // @resample_common_int16
	.globl	resample_common_int16
	.p2align	2
resample_common_int16:
	.word	0                               // 0x0
	.size	resample_common_int16, 4
	.type	resample_linear_int16,@object   // @resample_linear_int16
	.globl	resample_linear_int16
	.p2align	2
resample_linear_int16:
	.word	0                               // 0x0
	.size	resample_linear_int16, 4
	.type	resample_one_int32,@object      // @resample_one_int32
	.globl	resample_one_int32
	.p2align	2
resample_one_int32:
	.word	0                               // 0x0
	.size	resample_one_int32, 4
	.type	resample_common_int32,@object   // @resample_common_int32
	.globl	resample_common_int32
	.p2align	2
resample_common_int32:
	.word	0                               // 0x0
	.size	resample_common_int32, 4
	.type	resample_linear_int32,@object   // @resample_linear_int32
	.globl	resample_linear_int32
	.p2align	2
resample_linear_int32:
	.word	0                               // 0x0
	.size	resample_linear_int32, 4
	.type	resample_one_float,@object      // @resample_one_float
	.globl	resample_one_float
	.p2align	2
resample_one_float:
	.word	0                               // 0x0
	.size	resample_one_float, 4
	.type	resample_common_float,@object   // @resample_common_float
	.globl	resample_common_float
	.p2align	2
resample_common_float:
	.word	0                               // 0x0
	.size	resample_common_float, 4
	.type	resample_linear_float,@object   // @resample_linear_float
	.globl	resample_linear_float
	.p2align	2
resample_linear_float:
	.word	0                               // 0x0
	.size	resample_linear_float, 4
	.type	resample_one_double,@object     // @resample_one_double
	.globl	resample_one_double
	.p2align	2
resample_one_double:
	.word	0                               // 0x0
	.size	resample_one_double, 4
	.type	resample_common_double,@object  // @resample_common_double
	.globl	resample_common_double
	.p2align	2
resample_common_double:
	.word	0                               // 0x0
	.size	resample_common_double, 4
	.type	resample_linear_double,@object  // @resample_linear_double
	.globl	resample_linear_double
	.p2align	2
resample_linear_double:
	.word	0                               // 0x0
	.size	resample_linear_double, 4
	.type	ARCH_X86,@object                // @ARCH_X86
	.globl	ARCH_X86
	.p2align	3
ARCH_X86:
	.xword	0                               // 0x0
	.size	ARCH_X86, 8
	.type	ARCH_ARM,@object                // @ARCH_ARM
	.globl	ARCH_ARM
	.p2align	3
ARCH_ARM:
	.xword	0                               // 0x0
	.size	ARCH_ARM, 8
	.type	ARCH_AARCH64,@object            // @ARCH_AARCH64
	.globl	ARCH_AARCH64
	.p2align	3
ARCH_AARCH64:
	.xword	0                               // 0x0
	.size	ARCH_AARCH64, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swri_resample_dsp_x86_init
	.addrsig_sym swri_resample_dsp_arm_init
	.addrsig_sym swri_resample_dsp_aarch64_init
	.addrsig_sym resample_one_int16
	.addrsig_sym resample_common_int16
	.addrsig_sym resample_linear_int16
	.addrsig_sym resample_one_int32
	.addrsig_sym resample_common_int32
	.addrsig_sym resample_linear_int32
	.addrsig_sym resample_one_float
	.addrsig_sym resample_common_float
	.addrsig_sym resample_linear_float
	.addrsig_sym resample_one_double
	.addrsig_sym resample_common_double
	.addrsig_sym resample_linear_double
	.addrsig_sym ARCH_X86
	.addrsig_sym ARCH_ARM
	.addrsig_sym ARCH_AARCH64