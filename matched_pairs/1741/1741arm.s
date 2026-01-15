	.text
	.globl	fill_network_boxes              // -- Begin function fill_network_boxes
	.p2align	2
	.type	fill_network_boxes,@function
fill_network_boxes:                     // @fill_network_boxes
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	s0, [x29, #-20]
	stur	s1, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	w4, [x29, #-36]
	stur	x5, [x29, #-48]
	stur	wzr, [x29, #-52]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-52]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-52]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	q0, [x8]
	stur	q0, [x29, #-80]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-64]
	ldur	x8, [x29, #-80]
	adrp	x9, YOLO
	ldr	x9, [x9, :lo12:YOLO]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	w3, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	w4, [x8, #4]
	ldur	s0, [x29, #-20]
	ldur	x5, [x29, #-32]
	ldur	w6, [x29, #-36]
	ldur	x7, [x29, #-48]
	ldur	q1, [x29, #-80]
	add	x0, sp, #64
	str	q1, [sp, #64]
	ldur	x8, [x29, #-64]
	str	x8, [sp, #80]
	bl	get_yolo_detections
	stur	w0, [x29, #-84]
	ldursw	x9, [x29, #-84]
	ldur	x8, [x29, #-48]
	add	x8, x8, x9, lsl #2
	stur	x8, [x29, #-48]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-80]
	adrp	x9, REGION
	ldr	x9, [x9, :lo12:REGION]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	w3, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	w4, [x8, #4]
	ldur	s0, [x29, #-20]
	ldur	x5, [x29, #-32]
	ldur	s1, [x29, #-24]
	ldur	w6, [x29, #-36]
	ldur	x7, [x29, #-48]
	ldur	q2, [x29, #-80]
	add	x0, sp, #32
	str	q2, [sp, #32]
	ldur	x8, [x29, #-64]
	str	x8, [sp, #48]
	bl	get_region_detections
	ldur	w8, [x29, #-72]
	ldur	w9, [x29, #-68]
	mul	w8, w8, w9
	ldur	w9, [x29, #-64]
	mul	w9, w8, w9
	ldur	x8, [x29, #-48]
	add	x8, x8, w9, sxtw #2
	stur	x8, [x29, #-48]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-80]
	adrp	x9, DETECTION
	ldr	x9, [x9, :lo12:DETECTION]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldur	s0, [x29, #-20]
	ldur	x3, [x29, #-48]
	ldur	q1, [x29, #-80]
	mov	x0, sp
	str	q1, [sp]
	ldur	x8, [x29, #-64]
	str	x8, [sp, #16]
	bl	get_detection_detections
	ldur	w8, [x29, #-72]
	ldur	w9, [x29, #-68]
	mul	w8, w8, w9
	ldur	w9, [x29, #-64]
	mul	w9, w8, w9
	ldur	x8, [x29, #-48]
	add	x8, x8, w9, sxtw #2
	stur	x8, [x29, #-48]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-52]
	add	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_1
.LBB0_10:
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	fill_network_boxes, .Lfunc_end0-fill_network_boxes
                                        // -- End function
	.type	YOLO,@object                    // @YOLO
	.bss
	.globl	YOLO
	.p2align	3
YOLO:
	.xword	0                               // 0x0
	.size	YOLO, 8
	.type	REGION,@object                  // @REGION
	.globl	REGION
	.p2align	3
REGION:
	.xword	0                               // 0x0
	.size	REGION, 8
	.type	DETECTION,@object               // @DETECTION
	.globl	DETECTION
	.p2align	3
DETECTION:
	.xword	0                               // 0x0
	.size	DETECTION, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_yolo_detections
	.addrsig_sym get_region_detections
	.addrsig_sym get_detection_detections
	.addrsig_sym YOLO
	.addrsig_sym REGION
	.addrsig_sym DETECTION