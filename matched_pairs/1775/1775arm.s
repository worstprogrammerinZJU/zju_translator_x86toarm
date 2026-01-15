	.text
	.globl	resize_network                  // -- Begin function resize_network
	.p2align	2
	.type	resize_network,@function
resize_network:                         // @resize_network
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	stur	wzr, [x29, #-24]
	stur	xzr, [x29, #-32]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_46
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #80]
	ldursw	x9, [x29, #-20]
	mov	x10, #40
	mul	x9, x9, x10
	add	x1, x8, x9
	add	x0, sp, #56
	mov	x2, #40
	bl	memcpy
	ldr	x8, [sp, #56]
	adrp	x9, CONVOLUTIONAL
	ldr	x9, [x9, :lo12:CONVOLUTIONAL]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	add	x0, sp, #56
	bl	resize_convolutional_layer
	b	.LBB0_38
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, CROP
	ldr	x9, [x9, :lo12:CROP]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	add	x0, sp, #56
	bl	resize_crop_layer
	b	.LBB0_37
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, MAXPOOL
	ldr	x9, [x9, :lo12:MAXPOOL]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	add	x0, sp, #56
	bl	resize_maxpool_layer
	b	.LBB0_36
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, REGION
	ldr	x9, [x9, :lo12:REGION]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	add	x0, sp, #56
	bl	resize_region_layer
	b	.LBB0_35
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, YOLO
	ldr	x9, [x9, :lo12:YOLO]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	add	x0, sp, #56
	bl	resize_yolo_layer
	b	.LBB0_34
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, ROUTE
	ldr	x9, [x9, :lo12:ROUTE]
	subs	x8, x8, x9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-8]
	add	x0, sp, #56
	bl	resize_route_layer
	b	.LBB0_33
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, SHORTCUT
	ldr	x9, [x9, :lo12:SHORTCUT]
	subs	x8, x8, x9
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	add	x0, sp, #56
	bl	resize_shortcut_layer
	b	.LBB0_32
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, UPSAMPLE
	ldr	x9, [x9, :lo12:UPSAMPLE]
	subs	x8, x8, x9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	add	x0, sp, #56
	bl	resize_upsample_layer
	b	.LBB0_31
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, REORG
	ldr	x9, [x9, :lo12:REORG]
	subs	x8, x8, x9
	b.ne	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	add	x0, sp, #56
	bl	resize_reorg_layer
	b	.LBB0_30
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, AVGPOOL
	ldr	x9, [x9, :lo12:AVGPOOL]
	subs	x8, x8, x9
	b.ne	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	add	x0, sp, #56
	bl	resize_avgpool_layer
	b	.LBB0_29
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, NORMALIZATION
	ldr	x9, [x9, :lo12:NORMALIZATION]
	subs	x8, x8, x9
	b.ne	.LBB0_24
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	add	x0, sp, #56
	bl	resize_normalization_layer
	b	.LBB0_28
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	adrp	x9, COST
	ldr	x9, [x9, :lo12:COST]
	subs	x8, x8, x9
	b.ne	.LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-24]
	add	x0, sp, #56
	bl	resize_cost_layer
	b	.LBB0_27
.LBB0_26:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #64]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	b.ls	.LBB0_40
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-32]
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #64]
	mov	x9, #37888
	movk	x9, #30517, lsl #16
	subs	x8, x8, x9
	b.ls	.LBB0_42
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_1 Depth=1
	mov	w0, wzr
	bl	assert
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_1 Depth=1
	add	x1, sp, #56
	ldr	w8, [sp, #72]
	stur	w8, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #80]
	ldursw	x9, [x29, #-20]
	mov	x10, #40
	mul	x9, x9, x10
	add	x0, x8, x9
	mov	x2, #40
	bl	memcpy
	ldr	w8, [sp, #76]
	stur	w8, [x29, #-12]
	ldr	w8, [sp, #80]
	stur	w8, [x29, #-16]
	ldr	x8, [sp, #56]
	adrp	x9, AVGPOOL
	ldr	x9, [x9, :lo12:AVGPOOL]
	subs	x8, x8, x9
	b.ne	.LBB0_44
	b	.LBB0_43
.LBB0_43:
	b	.LBB0_46
.LBB0_44:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_45
.LBB0_45:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_46:
	ldur	x0, [x29, #-8]
	add	x8, sp, #16
	bl	get_network_output_layer
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #80]
	ldr	w8, [x8, #28]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #12]
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #16]
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #20]
	ldur	x8, [x29, #-8]
	ldr	x10, [x8, #80]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	subs	w8, w8, #1
	mov	w9, #40
	smaddl	x8, w8, w9, x10
	ldr	w8, [x8, #32]
	cbz	w8, .LBB0_48
	b	.LBB0_47
.LBB0_47:
	ldur	x8, [x29, #-8]
	ldr	x10, [x8, #80]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	subs	w8, w8, #1
	mov	w9, #40
	smaddl	x8, w8, w9, x10
	ldr	w8, [x8, #32]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #20]
	b	.LBB0_48
.LBB0_48:
	ldr	w8, [sp, #52]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #72]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #56]
	bl	free
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #40]
	bl	free
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #12]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #24]
	mul	w0, w8, w9
	mov	x1, #4
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	calloc
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	str	x0, [x8, #56]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #20]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #24]
	mul	w0, w8, w9
	bl	calloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #40]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	bl	free
	ldur	x1, [x29, #-32]
	mov	w0, #1
	bl	calloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #32]
	mov	w0, wzr
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	resize_network, .Lfunc_end0-resize_network
                                        // -- End function
	.type	CONVOLUTIONAL,@object           // @CONVOLUTIONAL
	.bss
	.globl	CONVOLUTIONAL
	.p2align	3
CONVOLUTIONAL:
	.xword	0                               // 0x0
	.size	CONVOLUTIONAL, 8
	.type	CROP,@object                    // @CROP
	.globl	CROP
	.p2align	3
CROP:
	.xword	0                               // 0x0
	.size	CROP, 8
	.type	MAXPOOL,@object                 // @MAXPOOL
	.globl	MAXPOOL
	.p2align	3
MAXPOOL:
	.xword	0                               // 0x0
	.size	MAXPOOL, 8
	.type	REGION,@object                  // @REGION
	.globl	REGION
	.p2align	3
REGION:
	.xword	0                               // 0x0
	.size	REGION, 8
	.type	YOLO,@object                    // @YOLO
	.globl	YOLO
	.p2align	3
YOLO:
	.xword	0                               // 0x0
	.size	YOLO, 8
	.type	ROUTE,@object                   // @ROUTE
	.globl	ROUTE
	.p2align	3
ROUTE:
	.xword	0                               // 0x0
	.size	ROUTE, 8
	.type	SHORTCUT,@object                // @SHORTCUT
	.globl	SHORTCUT
	.p2align	3
SHORTCUT:
	.xword	0                               // 0x0
	.size	SHORTCUT, 8
	.type	UPSAMPLE,@object                // @UPSAMPLE
	.globl	UPSAMPLE
	.p2align	3
UPSAMPLE:
	.xword	0                               // 0x0
	.size	UPSAMPLE, 8
	.type	REORG,@object                   // @REORG
	.globl	REORG
	.p2align	3
REORG:
	.xword	0                               // 0x0
	.size	REORG, 8
	.type	AVGPOOL,@object                 // @AVGPOOL
	.globl	AVGPOOL
	.p2align	3
AVGPOOL:
	.xword	0                               // 0x0
	.size	AVGPOOL, 8
	.type	NORMALIZATION,@object           // @NORMALIZATION
	.globl	NORMALIZATION
	.p2align	3
NORMALIZATION:
	.xword	0                               // 0x0
	.size	NORMALIZATION, 8
	.type	COST,@object                    // @COST
	.globl	COST
	.p2align	3
COST:
	.xword	0                               // 0x0
	.size	COST, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot resize this type of layer"
	.size	.L.str, 33
	.type	gpu_index,@object               // @gpu_index
	.bss
	.globl	gpu_index
	.p2align	3
gpu_index:
	.xword	0                               // 0x0
	.size	gpu_index, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resize_convolutional_layer
	.addrsig_sym resize_crop_layer
	.addrsig_sym resize_maxpool_layer
	.addrsig_sym resize_region_layer
	.addrsig_sym resize_yolo_layer
	.addrsig_sym resize_route_layer
	.addrsig_sym resize_shortcut_layer
	.addrsig_sym resize_upsample_layer
	.addrsig_sym resize_reorg_layer
	.addrsig_sym resize_avgpool_layer
	.addrsig_sym resize_normalization_layer
	.addrsig_sym resize_cost_layer
	.addrsig_sym error
	.addrsig_sym assert
	.addrsig_sym get_network_output_layer
	.addrsig_sym free
	.addrsig_sym calloc
	.addrsig_sym CONVOLUTIONAL
	.addrsig_sym CROP
	.addrsig_sym MAXPOOL
	.addrsig_sym REGION
	.addrsig_sym YOLO
	.addrsig_sym ROUTE
	.addrsig_sym SHORTCUT
	.addrsig_sym UPSAMPLE
	.addrsig_sym REORG
	.addrsig_sym AVGPOOL
	.addrsig_sym NORMALIZATION
	.addrsig_sym COST