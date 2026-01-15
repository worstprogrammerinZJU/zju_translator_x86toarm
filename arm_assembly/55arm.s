	.text
	.globl	swri_audio_convert_alloc        // -- Begin function swri_audio_convert_alloc
	.p2align	2
	.type	swri_audio_convert_alloc,@function
swri_audio_convert_alloc:               // @swri_audio_convert_alloc
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	w0, [x29, #-12]
	stur	w1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	x3, [x29, #-32]
	stur	w4, [x29, #-36]
	adrp	x8, fmt_pair_to_conv_functions
	ldr	x8, [x8, :lo12:fmt_pair_to_conv_functions]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-12]
	bl	av_get_packed_sample_fmt
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	adrp	x8, AV_SAMPLE_FMT_NB
	ldr	x8, [x8, :lo12:AV_SAMPLE_FMT_NB]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-16]
	bl	av_get_packed_sample_fmt
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	mov	x10, x0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	mul	x9, x9, x10
	add	x9, x0, x9
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_26
.LBB0_2:
	mov	w0, #32
	bl	av_mallocz
	str	x0, [sp, #48]
	ldr	x8, [sp, #48]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_26
.LBB0_4:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #1
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-16]
	bl	av_get_planar_sample_fmt
	stur	w0, [x29, #-16]
	ldur	w0, [x29, #-12]
	bl	av_get_planar_sample_fmt
	stur	w0, [x29, #-12]
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-20]
	ldr	x9, [sp, #48]
	str	w8, [x9]
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #48]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-32]
	ldr	x9, [sp, #48]
	str	x8, [x9, #8]
	ldur	w8, [x29, #-16]
	adrp	x9, AV_SAMPLE_FMT_U8
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_U8]
	subs	w8, w8, w9
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-16]
	adrp	x9, AV_SAMPLE_FMT_U8P
	ldr	w9, [x9, :lo12:AV_SAMPLE_FMT_U8P]
	subs	w8, w8, w9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #48]
	ldr	w0, [x8, #20]
	mov	w1, #128
	mov	w2, #4
	bl	memset
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ne	.LBB0_18
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB0_18
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-16]
	bl	av_get_bytes_per_sample
	subs	w8, w0, #1
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #7
	b.hi	.LBB0_17
// %bb.12:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_13:
	adrp	x8, cpy1
	ldr	w8, [x8, :lo12:cpy1]
	ldr	x9, [sp, #48]
	str	w8, [x9, #16]
	b	.LBB0_17
.LBB0_14:
	adrp	x8, cpy2
	ldr	w8, [x8, :lo12:cpy2]
	ldr	x9, [sp, #48]
	str	w8, [x9, #16]
	b	.LBB0_17
.LBB0_15:
	adrp	x8, cpy4
	ldr	w8, [x8, :lo12:cpy4]
	ldr	x9, [sp, #48]
	str	w8, [x9, #16]
	b	.LBB0_17
.LBB0_16:
	adrp	x8, cpy8
	ldr	w8, [x8, :lo12:cpy8]
	ldr	x9, [sp, #48]
	str	w8, [x9, #16]
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_18
.LBB0_18:
	adrp	x8, HAVE_X86ASM
	ldr	x8, [x8, :lo12:HAVE_X86ASM]
	cbz	x8, .LBB0_21
	b	.LBB0_19
.LBB0_19:
	adrp	x8, HAVE_MMX
	ldr	x8, [x8, :lo12:HAVE_MMX]
	cbz	x8, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	ldr	x0, [sp, #48]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	w3, [x29, #-20]
	bl	swri_audio_convert_init_x86
	b	.LBB0_21
.LBB0_21:
	adrp	x8, ARCH_ARM
	ldr	x8, [x8, :lo12:ARCH_ARM]
	cbz	x8, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldr	x0, [sp, #48]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	w3, [x29, #-20]
	bl	swri_audio_convert_init_arm
	b	.LBB0_23
.LBB0_23:
	adrp	x8, ARCH_AARCH64
	ldr	x8, [x8, :lo12:ARCH_AARCH64]
	cbz	x8, .LBB0_25
	b	.LBB0_24
.LBB0_24:
	ldr	x0, [sp, #48]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	w3, [x29, #-20]
	bl	swri_audio_convert_init_aarch64
	b	.LBB0_25
.LBB0_25:
	ldr	x8, [sp, #48]
	stur	x8, [x29, #-8]
	b	.LBB0_26
.LBB0_26:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	swri_audio_convert_alloc, .Lfunc_end0-swri_audio_convert_alloc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_17-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_17-.Ltmp0
	.word	.LBB0_17-.Ltmp0
	.word	.LBB0_17-.Ltmp0
	.word	.LBB0_16-.Ltmp0
                                        // -- End function
	.type	fmt_pair_to_conv_functions,@object // @fmt_pair_to_conv_functions
	.bss
	.globl	fmt_pair_to_conv_functions
	.p2align	3
fmt_pair_to_conv_functions:
	.xword	0
	.size	fmt_pair_to_conv_functions, 8
	.type	AV_SAMPLE_FMT_NB,@object        // @AV_SAMPLE_FMT_NB
	.globl	AV_SAMPLE_FMT_NB
	.p2align	3
AV_SAMPLE_FMT_NB:
	.xword	0                               // 0x0
	.size	AV_SAMPLE_FMT_NB, 8
	.type	AV_SAMPLE_FMT_U8,@object        // @AV_SAMPLE_FMT_U8
	.globl	AV_SAMPLE_FMT_U8
	.p2align	2
AV_SAMPLE_FMT_U8:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_U8, 4
	.type	AV_SAMPLE_FMT_U8P,@object       // @AV_SAMPLE_FMT_U8P
	.globl	AV_SAMPLE_FMT_U8P
	.p2align	2
AV_SAMPLE_FMT_U8P:
	.word	0                               // 0x0
	.size	AV_SAMPLE_FMT_U8P, 4
	.type	cpy1,@object                    // @cpy1
	.globl	cpy1
	.p2align	2
cpy1:
	.word	0                               // 0x0
	.size	cpy1, 4
	.type	cpy2,@object                    // @cpy2
	.globl	cpy2
	.p2align	2
cpy2:
	.word	0                               // 0x0
	.size	cpy2, 4
	.type	cpy4,@object                    // @cpy4
	.globl	cpy4
	.p2align	2
cpy4:
	.word	0                               // 0x0
	.size	cpy4, 4
	.type	cpy8,@object                    // @cpy8
	.globl	cpy8
	.p2align	2
cpy8:
	.word	0                               // 0x0
	.size	cpy8, 4
	.type	HAVE_X86ASM,@object             // @HAVE_X86ASM
	.globl	HAVE_X86ASM
	.p2align	3
HAVE_X86ASM:
	.xword	0                               // 0x0
	.size	HAVE_X86ASM, 8
	.type	HAVE_MMX,@object                // @HAVE_MMX
	.globl	HAVE_MMX
	.p2align	3
HAVE_MMX:
	.xword	0                               // 0x0
	.size	HAVE_MMX, 8
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
	.addrsig_sym av_get_packed_sample_fmt
	.addrsig_sym av_mallocz
	.addrsig_sym av_get_planar_sample_fmt
	.addrsig_sym memset
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym swri_audio_convert_init_x86
	.addrsig_sym swri_audio_convert_init_arm
	.addrsig_sym swri_audio_convert_init_aarch64
	.addrsig_sym fmt_pair_to_conv_functions
	.addrsig_sym AV_SAMPLE_FMT_NB
	.addrsig_sym AV_SAMPLE_FMT_U8
	.addrsig_sym AV_SAMPLE_FMT_U8P
	.addrsig_sym cpy1
	.addrsig_sym cpy2
	.addrsig_sym cpy4
	.addrsig_sym cpy8
	.addrsig_sym HAVE_X86ASM
	.addrsig_sym HAVE_MMX
	.addrsig_sym ARCH_ARM
	.addrsig_sym ARCH_AARCH64