	.text
	.globl	load_thread                     // -- Begin function load_thread
	.p2align	2
	.type	load_thread,@function
load_thread:                            // @load_thread
// %bb.0:
	sub	sp, sp, #224
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	add	x0, sp, #64
	mov	x2, #136
	bl	memcpy
	ldr	w8, [sp, #64]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	str	w8, [sp, #64]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #68]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	str	w8, [sp, #68]
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #72]
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #1
	str	w8, [sp, #72]
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #80]
	adrp	x9, OLD_CLASSIFICATION_DATA
	ldr	x9, [x9, :lo12:OLD_CLASSIFICATION_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #120]
	ldr	w1, [sp, #116]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #196]
	ldr	w4, [sp, #108]
	ldr	w5, [sp, #140]
	ldr	w6, [sp, #136]
	bl	load_data_old
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_50
.LBB0_8:
	ldr	x8, [sp, #80]
	adrp	x9, REGRESSION_DATA
	ldr	x9, [x9, :lo12:REGRESSION_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w0, [sp, #120]
	ldr	w1, [sp, #116]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #108]
	ldr	w4, [sp, #104]
	ldr	w5, [sp, #100]
	ldr	w6, [sp, #96]
	ldr	w7, [sp, #92]
	ldr	w12, [sp, #72]
	ldr	w11, [sp, #88]
	ldr	w10, [sp, #68]
	ldr	w8, [sp, #64]
	mov	x9, sp
	str	w12, [x9]
	str	w11, [x9, #8]
	str	w10, [x9, #16]
	str	w8, [x9, #24]
	bl	load_data_regression
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_49
.LBB0_10:
	ldr	x8, [sp, #80]
	adrp	x9, CLASSIFICATION_DATA
	ldr	x9, [x9, :lo12:CLASSIFICATION_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldr	w0, [sp, #120]
	ldr	w1, [sp, #116]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #196]
	ldr	w4, [sp, #108]
	ldr	w5, [sp, #192]
	ldr	w6, [sp, #104]
	ldr	w7, [sp, #100]
	ldr	w15, [sp, #96]
	ldr	w14, [sp, #92]
	ldr	w13, [sp, #72]
	ldr	w12, [sp, #88]
	ldr	w11, [sp, #68]
	ldr	w10, [sp, #64]
	ldr	w8, [sp, #188]
	mov	x9, sp
	str	w15, [x9]
	str	w14, [x9, #8]
	str	w13, [x9, #16]
	str	w12, [x9, #24]
	str	w11, [x9, #32]
	str	w10, [x9, #40]
	str	w8, [x9, #48]
	bl	load_data_augment
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_48
.LBB0_12:
	ldr	x8, [sp, #80]
	adrp	x9, SUPER_DATA
	ldr	x9, [x9, :lo12:SUPER_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	w0, [sp, #120]
	ldr	w1, [sp, #116]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #140]
	ldr	w4, [sp, #136]
	ldr	w5, [sp, #172]
	bl	load_data_super
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_47
.LBB0_14:
	ldr	x8, [sp, #80]
	adrp	x9, WRITING_DATA
	ldr	x9, [x9, :lo12:WRITING_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	w0, [sp, #120]
	ldr	w1, [sp, #116]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #140]
	ldr	w4, [sp, #136]
	ldr	w5, [sp, #184]
	ldr	w6, [sp, #180]
	bl	load_data_writing
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_46
.LBB0_16:
	ldr	x8, [sp, #80]
	adrp	x9, ISEG_DATA
	ldr	x9, [x9, :lo12:ISEG_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	w0, [sp, #116]
	ldr	w1, [sp, #120]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #140]
	ldr	w4, [sp, #136]
	ldr	w5, [sp, #108]
	ldr	w6, [sp, #168]
	ldr	w7, [sp, #172]
	ldr	w15, [sp, #104]
	ldr	w14, [sp, #100]
	ldr	w13, [sp, #92]
	ldr	w12, [sp, #72]
	ldr	w11, [sp, #88]
	ldr	w10, [sp, #68]
	ldr	w8, [sp, #64]
	mov	x9, sp
	str	w15, [x9]
	str	w14, [x9, #8]
	str	w13, [x9, #16]
	str	w12, [x9, #24]
	str	w11, [x9, #32]
	str	w10, [x9, #40]
	str	w8, [x9, #48]
	bl	load_data_iseg
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_45
.LBB0_18:
	ldr	x8, [sp, #80]
	adrp	x9, INSTANCE_DATA
	ldr	x9, [x9, :lo12:INSTANCE_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	w0, [sp, #116]
	ldr	w1, [sp, #120]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #140]
	ldr	w4, [sp, #136]
	ldr	w5, [sp, #108]
	ldr	w6, [sp, #168]
	ldr	w7, [sp, #176]
	ldr	w15, [sp, #104]
	ldr	w14, [sp, #100]
	ldr	w13, [sp, #92]
	ldr	w12, [sp, #72]
	ldr	w11, [sp, #88]
	ldr	w10, [sp, #68]
	ldr	w8, [sp, #64]
	mov	x9, sp
	str	w15, [x9]
	str	w14, [x9, #8]
	str	w13, [x9, #16]
	str	w12, [x9, #24]
	str	w11, [x9, #32]
	str	w10, [x9, #40]
	str	w8, [x9, #48]
	bl	load_data_mask
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_44
.LBB0_20:
	ldr	x8, [sp, #80]
	adrp	x9, SEGMENTATION_DATA
	ldr	x9, [x9, :lo12:SEGMENTATION_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldr	w0, [sp, #116]
	ldr	w1, [sp, #120]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #140]
	ldr	w4, [sp, #136]
	ldr	w5, [sp, #108]
	ldr	w6, [sp, #104]
	ldr	w7, [sp, #100]
	ldr	w14, [sp, #92]
	ldr	w13, [sp, #72]
	ldr	w12, [sp, #88]
	ldr	w11, [sp, #68]
	ldr	w10, [sp, #64]
	ldr	w8, [sp, #172]
	mov	x9, sp
	str	w14, [x9]
	str	w13, [x9, #8]
	str	w12, [x9, #16]
	str	w11, [x9, #24]
	str	w10, [x9, #32]
	str	w8, [x9, #40]
	bl	load_data_seg
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_43
.LBB0_22:
	ldr	x8, [sp, #80]
	adrp	x9, REGION_DATA
	ldr	x9, [x9, :lo12:REGION_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	ldr	w0, [sp, #116]
	ldr	w1, [sp, #120]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #140]
	ldr	w4, [sp, #136]
	ldr	w5, [sp, #168]
	ldr	w6, [sp, #108]
	ldr	w7, [sp, #164]
	ldr	w11, [sp, #88]
	ldr	w10, [sp, #68]
	ldr	w8, [sp, #64]
	mov	x9, sp
	str	w11, [x9]
	str	w10, [x9, #8]
	str	w8, [x9, #16]
	bl	load_data_region
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_42
.LBB0_24:
	ldr	x8, [sp, #80]
	adrp	x9, DETECTION_DATA
	ldr	x9, [x9, :lo12:DETECTION_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldr	w0, [sp, #116]
	ldr	w1, [sp, #120]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #140]
	ldr	w4, [sp, #136]
	ldr	w5, [sp, #168]
	ldr	w6, [sp, #108]
	ldr	w7, [sp, #164]
	ldr	w11, [sp, #88]
	ldr	w10, [sp, #68]
	ldr	w8, [sp, #64]
	mov	x9, sp
	str	w11, [x9]
	str	w10, [x9, #8]
	str	w8, [x9, #16]
	bl	load_data_detection
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_41
.LBB0_26:
	ldr	x8, [sp, #80]
	adrp	x9, SWAG_DATA
	ldr	x9, [x9, :lo12:SWAG_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldr	w0, [sp, #120]
	ldr	w1, [sp, #116]
	ldr	w2, [sp, #108]
	ldr	w3, [sp, #164]
	bl	load_data_swag
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_40
.LBB0_28:
	ldr	x8, [sp, #80]
	adrp	x9, COMPARE_DATA
	ldr	x9, [x9, :lo12:COMPARE_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_30
	b	.LBB0_29
.LBB0_29:
	ldr	w0, [sp, #116]
	ldr	w1, [sp, #120]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #108]
	ldr	w4, [sp, #140]
	ldr	w5, [sp, #136]
	bl	load_data_compare
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_39
.LBB0_30:
	ldr	x8, [sp, #80]
	adrp	x9, IMAGE_DATA
	ldr	x9, [x9, :lo12:IMAGE_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_32
	b	.LBB0_31
.LBB0_31:
	ldr	w0, [sp, #160]
	mov	w2, wzr
	mov	w1, w2
	bl	load_image_color
	ldr	x8, [sp, #144]
	str	x0, [x8]
	ldr	x8, [sp, #144]
	ldr	x0, [x8]
	ldr	w1, [sp, #140]
	ldr	w2, [sp, #136]
	bl	resize_image
	ldr	x8, [sp, #152]
	str	w0, [x8]
	b	.LBB0_38
.LBB0_32:
	ldr	x8, [sp, #80]
	adrp	x9, LETTERBOX_DATA
	ldr	x9, [x9, :lo12:LETTERBOX_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldr	w0, [sp, #160]
	mov	w2, wzr
	mov	w1, w2
	bl	load_image_color
	ldr	x8, [sp, #144]
	str	x0, [x8]
	ldr	x8, [sp, #144]
	ldr	x0, [x8]
	ldr	w1, [sp, #140]
	ldr	w2, [sp, #136]
	bl	letterbox_image
	ldr	x8, [sp, #152]
	str	w0, [x8]
	b	.LBB0_37
.LBB0_34:
	ldr	x8, [sp, #80]
	adrp	x9, TAG_DATA
	ldr	x9, [x9, :lo12:TAG_DATA]
	subs	x8, x8, x9
	b.ne	.LBB0_36
	b	.LBB0_35
.LBB0_35:
	ldr	w0, [sp, #120]
	ldr	w1, [sp, #116]
	ldr	w2, [sp, #112]
	ldr	w3, [sp, #108]
	ldr	w4, [sp, #104]
	ldr	w5, [sp, #100]
	ldr	w6, [sp, #96]
	ldr	w7, [sp, #92]
	ldr	w12, [sp, #72]
	ldr	w11, [sp, #88]
	ldr	w10, [sp, #68]
	ldr	w8, [sp, #64]
	mov	x9, sp
	str	w12, [x9]
	str	w11, [x9, #8]
	str	w10, [x9, #16]
	str	w8, [x9, #24]
	bl	load_data_tag
	ldr	x8, [sp, #128]
	str	w0, [x8]
	b	.LBB0_36
.LBB0_36:
	b	.LBB0_37
.LBB0_37:
	b	.LBB0_38
.LBB0_38:
	b	.LBB0_39
.LBB0_39:
	b	.LBB0_40
.LBB0_40:
	b	.LBB0_41
.LBB0_41:
	b	.LBB0_42
.LBB0_42:
	b	.LBB0_43
.LBB0_43:
	b	.LBB0_44
.LBB0_44:
	b	.LBB0_45
.LBB0_45:
	b	.LBB0_46
.LBB0_46:
	b	.LBB0_47
.LBB0_47:
	b	.LBB0_48
.LBB0_48:
	b	.LBB0_49
.LBB0_49:
	b	.LBB0_50
.LBB0_50:
	ldur	x0, [x29, #-8]
	bl	free
	mov	x0, xzr
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #224
	ret
.Lfunc_end0:
	.size	load_thread, .Lfunc_end0-load_thread
                                        // -- End function
	.type	OLD_CLASSIFICATION_DATA,@object // @OLD_CLASSIFICATION_DATA
	.bss
	.globl	OLD_CLASSIFICATION_DATA
	.p2align	3
OLD_CLASSIFICATION_DATA:
	.xword	0                               // 0x0
	.size	OLD_CLASSIFICATION_DATA, 8
	.type	REGRESSION_DATA,@object         // @REGRESSION_DATA
	.globl	REGRESSION_DATA
	.p2align	3
REGRESSION_DATA:
	.xword	0                               // 0x0
	.size	REGRESSION_DATA, 8
	.type	CLASSIFICATION_DATA,@object     // @CLASSIFICATION_DATA
	.globl	CLASSIFICATION_DATA
	.p2align	3
CLASSIFICATION_DATA:
	.xword	0                               // 0x0
	.size	CLASSIFICATION_DATA, 8
	.type	SUPER_DATA,@object              // @SUPER_DATA
	.globl	SUPER_DATA
	.p2align	3
SUPER_DATA:
	.xword	0                               // 0x0
	.size	SUPER_DATA, 8
	.type	WRITING_DATA,@object            // @WRITING_DATA
	.globl	WRITING_DATA
	.p2align	3
WRITING_DATA:
	.xword	0                               // 0x0
	.size	WRITING_DATA, 8
	.type	ISEG_DATA,@object               // @ISEG_DATA
	.globl	ISEG_DATA
	.p2align	3
ISEG_DATA:
	.xword	0                               // 0x0
	.size	ISEG_DATA, 8
	.type	INSTANCE_DATA,@object           // @INSTANCE_DATA
	.globl	INSTANCE_DATA
	.p2align	3
INSTANCE_DATA:
	.xword	0                               // 0x0
	.size	INSTANCE_DATA, 8
	.type	SEGMENTATION_DATA,@object       // @SEGMENTATION_DATA
	.globl	SEGMENTATION_DATA
	.p2align	3
SEGMENTATION_DATA:
	.xword	0                               // 0x0
	.size	SEGMENTATION_DATA, 8
	.type	REGION_DATA,@object             // @REGION_DATA
	.globl	REGION_DATA
	.p2align	3
REGION_DATA:
	.xword	0                               // 0x0
	.size	REGION_DATA, 8
	.type	DETECTION_DATA,@object          // @DETECTION_DATA
	.globl	DETECTION_DATA
	.p2align	3
DETECTION_DATA:
	.xword	0                               // 0x0
	.size	DETECTION_DATA, 8
	.type	SWAG_DATA,@object               // @SWAG_DATA
	.globl	SWAG_DATA
	.p2align	3
SWAG_DATA:
	.xword	0                               // 0x0
	.size	SWAG_DATA, 8
	.type	COMPARE_DATA,@object            // @COMPARE_DATA
	.globl	COMPARE_DATA
	.p2align	3
COMPARE_DATA:
	.xword	0                               // 0x0
	.size	COMPARE_DATA, 8
	.type	IMAGE_DATA,@object              // @IMAGE_DATA
	.globl	IMAGE_DATA
	.p2align	3
IMAGE_DATA:
	.xword	0                               // 0x0
	.size	IMAGE_DATA, 8
	.type	LETTERBOX_DATA,@object          // @LETTERBOX_DATA
	.globl	LETTERBOX_DATA
	.p2align	3
LETTERBOX_DATA:
	.xword	0                               // 0x0
	.size	LETTERBOX_DATA, 8
	.type	TAG_DATA,@object                // @TAG_DATA
	.globl	TAG_DATA
	.p2align	3
TAG_DATA:
	.xword	0                               // 0x0
	.size	TAG_DATA, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_data_old
	.addrsig_sym load_data_regression
	.addrsig_sym load_data_augment
	.addrsig_sym load_data_super
	.addrsig_sym load_data_writing
	.addrsig_sym load_data_iseg
	.addrsig_sym load_data_mask
	.addrsig_sym load_data_seg
	.addrsig_sym load_data_region
	.addrsig_sym load_data_detection
	.addrsig_sym load_data_swag
	.addrsig_sym load_data_compare
	.addrsig_sym load_image_color
	.addrsig_sym resize_image
	.addrsig_sym letterbox_image
	.addrsig_sym load_data_tag
	.addrsig_sym free
	.addrsig_sym OLD_CLASSIFICATION_DATA
	.addrsig_sym REGRESSION_DATA
	.addrsig_sym CLASSIFICATION_DATA
	.addrsig_sym SUPER_DATA
	.addrsig_sym WRITING_DATA
	.addrsig_sym ISEG_DATA
	.addrsig_sym INSTANCE_DATA
	.addrsig_sym SEGMENTATION_DATA
	.addrsig_sym REGION_DATA
	.addrsig_sym DETECTION_DATA
	.addrsig_sym SWAG_DATA
	.addrsig_sym COMPARE_DATA
	.addrsig_sym IMAGE_DATA
	.addrsig_sym LETTERBOX_DATA
	.addrsig_sym TAG_DATA