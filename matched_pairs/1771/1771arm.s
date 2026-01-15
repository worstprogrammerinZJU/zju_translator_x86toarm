	.text
	.globl	num_detections                  // -- Begin function num_detections
	.p2align	2
	.type	num_detections,@function
num_detections:                         // @num_detections
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-8]
	stur	s0, [x29, #-12]
	stur	wzr, [x29, #-20]
	stur	wzr, [x29, #-16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-16]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp, #48]
	ldr	x8, [sp, #32]
	adrp	x9, YOLO
	ldr	x9, [x9, :lo12:YOLO]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	s0, [x29, #-12]
	ldr	q1, [sp, #32]
	mov	x0, sp
	str	q1, [sp]
	ldr	x8, [sp, #48]
	str	x8, [sp, #16]
	bl	yolo_num_detections
	ldursw	x8, [x29, #-20]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-20]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	adrp	x9, DETECTION
	ldr	x9, [x9, :lo12:DETECTION]
	subs	x8, x8, x9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	adrp	x9, REGION
	ldr	x9, [x9, :lo12:REGION]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #44]
	mul	w8, w8, w9
	ldr	w9, [sp, #48]
	mul	w9, w8, w9
	ldur	w8, [x29, #-20]
	add	w8, w8, w9
	stur	w8, [x29, #-20]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_1
.LBB0_9:
	ldur	w0, [x29, #-20]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	num_detections, .Lfunc_end0-num_detections
                                        // -- End function
	.type	YOLO,@object                    // @YOLO
	.bss
	.globl	YOLO
	.p2align	3
YOLO:
	.xword	0                               // 0x0
	.size	YOLO, 8
	.type	DETECTION,@object               // @DETECTION
	.globl	DETECTION
	.p2align	3
DETECTION:
	.xword	0                               // 0x0
	.size	DETECTION, 8
	.type	REGION,@object                  // @REGION
	.globl	REGION
	.p2align	3
REGION:
	.xword	0                               // 0x0
	.size	REGION, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yolo_num_detections
	.addrsig_sym YOLO
	.addrsig_sym DETECTION
	.addrsig_sym REGION