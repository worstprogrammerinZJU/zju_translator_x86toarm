	.text
	.globl	get_network_detection_layer     // -- Begin function get_network_detection_layer
	.p2align	2
	.type	get_network_detection_layer,@function
get_network_detection_layer:            // @get_network_detection_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #20]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	adrp	x9, DETECTION
	ldr	x9, [x9, :lo12:DETECTION]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #20]
	ldr	q0, [x8, x9, lsl #4]
	stur	q0, [x29, #-16]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_6:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	str	xzr, [sp]
	str	xzr, [sp, #8]
	ldr	q0, [sp]
	stur	q0, [x29, #-16]
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	get_network_detection_layer, .Lfunc_end0-get_network_detection_layer
                                        // -- End function
	.type	DETECTION,@object               // @DETECTION
	.bss
	.globl	DETECTION
	.p2align	3
DETECTION:
	.xword	0                               // 0x0
	.size	DETECTION, 8
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Detection layer not found!!\n"
	.size	.L.str, 29
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym DETECTION
	.addrsig_sym stderr