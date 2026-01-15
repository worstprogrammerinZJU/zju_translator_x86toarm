	.text
	.globl	load_weights_upto               // -- Begin function load_weights_upto
	.p2align	2
	.type	load_weights_upto,@function
load_weights_upto:                      // @load_weights_upto
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #1920
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	adrp	x8, stdout
	ldr	w0, [x8, :lo12:stdout]
	bl	fflush
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fopen
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	file_error
	b	.LBB0_2
.LBB0_2:
	ldur	x3, [x29, #-32]
	sub	x0, x29, #36
	mov	w1, #4
	str	w1, [sp, #568]                  // 4-byte Folded Spill
	mov	w2, #1
	str	w2, [sp, #572]                  // 4-byte Folded Spill
	bl	fread
	ldr	w1, [sp, #568]                  // 4-byte Folded Reload
	ldr	w2, [sp, #572]                  // 4-byte Folded Reload
	ldur	x3, [x29, #-32]
	sub	x0, x29, #40
	bl	fread
	ldr	w1, [sp, #568]                  // 4-byte Folded Reload
	ldr	w2, [sp, #572]                  // 4-byte Folded Reload
	ldur	x3, [x29, #-32]
	sub	x0, x29, #44
	bl	fread
	ldur	w8, [x29, #-36]
	mov	w9, #10
	mul	w8, w8, w9
	ldur	w9, [x29, #-40]
	add	w8, w8, w9
	subs	w8, w8, #2
	b.lt	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-36]
	subs	w8, w8, #1000
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-40]
	subs	w8, w8, #1000
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	ldur	x3, [x29, #-32]
	mov	w1, #8
	mov	w2, #1
	bl	fread
	b	.LBB0_7
.LBB0_6:
	sub	x0, x29, #48
	stur	wzr, [x29, #-48]
	ldur	x3, [x29, #-32]
	mov	w1, #4
	mov	w2, #1
	bl	fread
	ldur	w8, [x29, #-48]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	str	w8, [x9]
	b	.LBB0_7
.LBB0_7:
	ldur	w9, [x29, #-36]
	mov	w8, #1
	subs	w9, w9, #1000
	str	w8, [sp, #564]                  // 4-byte Folded Spill
	b.gt	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	w8, [x29, #-40]
	subs	w8, w8, #1000
	cset	w8, gt
	str	w8, [sp, #564]                  // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #564]                  // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-52]
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-56]
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-56]
	ldur	x8, [x29, #-8]
	ldr	w10, [x8, #16]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #560]                  // 4-byte Folded Spill
	b.ge	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-56]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #560]                  // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #560]                  // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_34
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-56]
	mov	x10, #224
	mul	x9, x9, x10
	add	x1, x8, x9
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #1640
	mov	x2, #224
	bl	memcpy
	ldr	x8, [sp, #5952]
	cbz	x8, .LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_33
.LBB0_15:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #5736]
	adrp	x9, CONVOLUTIONAL
	ldr	x9, [x9, :lo12:CONVOLUTIONAL]
	subs	x8, x8, x9
	b.eq	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #5736]
	adrp	x9, DECONVOLUTIONAL
	ldr	x9, [x9, :lo12:DECONVOLUTIONAL]
	subs	x8, x8, x9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp, #552]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #1416
	str	x0, [sp, #544]                  // 8-byte Folded Spill
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #1640
	mov	x2, #224
	bl	memcpy
	ldr	x0, [sp, #544]                  // 8-byte Folded Reload
	ldr	x1, [sp, #552]                  // 8-byte Folded Reload
	bl	load_convolutional_weights
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #5736]
	adrp	x9, CONNECTED
	ldr	x9, [x9, :lo12:CONNECTED]
	subs	x8, x8, x9
	b.ne	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp, #528]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #540]                  // 4-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #1192
	str	x0, [sp, #520]                  // 8-byte Folded Spill
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #1640
	mov	x2, #224
	bl	memcpy
	ldr	x0, [sp, #520]                  // 8-byte Folded Reload
	ldr	x1, [sp, #528]                  // 8-byte Folded Reload
	ldr	w2, [sp, #540]                  // 4-byte Folded Reload
	bl	load_connected_weights
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #5736]
	adrp	x9, BATCHNORM
	ldr	x9, [x9, :lo12:BATCHNORM]
	subs	x8, x8, x9
	b.ne	.LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp, #512]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #968
	str	x0, [sp, #504]                  // 8-byte Folded Spill
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #1640
	mov	x2, #224
	bl	memcpy
	ldr	x0, [sp, #504]                  // 8-byte Folded Reload
	ldr	x1, [sp, #512]                  // 8-byte Folded Reload
	bl	load_batchnorm_weights
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #5736]
	adrp	x9, CRNN
	ldr	x9, [x9, :lo12:CRNN]
	subs	x8, x8, x9
	b.ne	.LBB0_24
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x1, [sp, #5944]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #456]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #744
	str	x0, [sp, #448]                  // 8-byte Folded Spill
	mov	x2, #224
	str	x2, [sp, #480]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #448]                  // 8-byte Folded Reload
	ldr	x1, [sp, #456]                  // 8-byte Folded Reload
	bl	load_convolutional_weights
	ldr	x2, [sp, #480]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5936]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #472]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #520
	str	x0, [sp, #464]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #464]                  // 8-byte Folded Reload
	ldr	x1, [sp, #472]                  // 8-byte Folded Reload
	bl	load_convolutional_weights
	ldr	x2, [sp, #480]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5928]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #496]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #296
	str	x0, [sp, #488]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #488]                  // 8-byte Folded Reload
	ldr	x1, [sp, #496]                  // 8-byte Folded Reload
	bl	load_convolutional_weights
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #5736]
	adrp	x9, RNN
	ldr	x9, [x9, :lo12:RNN]
	subs	x8, x8, x9
	b.ne	.LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x1, [sp, #5944]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #376]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #388]                  // 4-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #72
	str	x0, [sp, #368]                  // 8-byte Folded Spill
	mov	x2, #224
	str	x2, [sp, #416]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #368]                  // 8-byte Folded Reload
	ldr	x1, [sp, #376]                  // 8-byte Folded Reload
	ldr	w2, [sp, #388]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #416]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5936]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #400]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #412]                  // 4-byte Folded Spill
	add	x0, sp, #3944
	str	x0, [sp, #392]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #392]                  // 8-byte Folded Reload
	ldr	x1, [sp, #400]                  // 8-byte Folded Reload
	ldr	w2, [sp, #412]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #416]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5928]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #432]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #444]                  // 4-byte Folded Spill
	add	x0, sp, #3720
	str	x0, [sp, #424]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #424]                  // 8-byte Folded Reload
	ldr	x1, [sp, #432]                  // 8-byte Folded Reload
	ldr	w2, [sp, #444]                  // 4-byte Folded Reload
	bl	load_connected_weights
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #5736]
	adrp	x9, LSTM
	ldr	x9, [x9, :lo12:LSTM]
	subs	x8, x8, x9
	b.ne	.LBB0_28
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x1, [sp, #5920]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #176]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #188]                  // 4-byte Folded Spill
	add	x0, sp, #3496
	str	x0, [sp, #168]                  // 8-byte Folded Spill
	mov	x2, #224
	str	x2, [sp, #336]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #168]                  // 8-byte Folded Reload
	ldr	x1, [sp, #176]                  // 8-byte Folded Reload
	ldr	w2, [sp, #188]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #336]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5912]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #200]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #212]                  // 4-byte Folded Spill
	add	x0, sp, #3272
	str	x0, [sp, #192]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	x1, [sp, #200]                  // 8-byte Folded Reload
	ldr	w2, [sp, #212]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #336]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5904]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #224]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #236]                  // 4-byte Folded Spill
	add	x0, sp, #3048
	str	x0, [sp, #216]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #216]                  // 8-byte Folded Reload
	ldr	x1, [sp, #224]                  // 8-byte Folded Reload
	ldr	w2, [sp, #236]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #336]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5896]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #248]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #260]                  // 4-byte Folded Spill
	add	x0, sp, #2824
	str	x0, [sp, #240]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #240]                  // 8-byte Folded Reload
	ldr	x1, [sp, #248]                  // 8-byte Folded Reload
	ldr	w2, [sp, #260]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #336]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5888]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #272]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #284]                  // 4-byte Folded Spill
	add	x0, sp, #2600
	str	x0, [sp, #264]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #264]                  // 8-byte Folded Reload
	ldr	x1, [sp, #272]                  // 8-byte Folded Reload
	ldr	w2, [sp, #284]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #336]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5880]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #296]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #308]                  // 4-byte Folded Spill
	add	x0, sp, #2376
	str	x0, [sp, #288]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #288]                  // 8-byte Folded Reload
	ldr	x1, [sp, #296]                  // 8-byte Folded Reload
	ldr	w2, [sp, #308]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #336]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5872]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #320]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #332]                  // 4-byte Folded Spill
	add	x0, sp, #2152
	str	x0, [sp, #312]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #312]                  // 8-byte Folded Reload
	ldr	x1, [sp, #320]                  // 8-byte Folded Reload
	ldr	w2, [sp, #332]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #336]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5864]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #352]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #364]                  // 4-byte Folded Spill
	add	x0, sp, #1928
	str	x0, [sp, #344]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #344]                  // 8-byte Folded Reload
	ldr	x1, [sp, #352]                  // 8-byte Folded Reload
	ldr	w2, [sp, #364]                  // 4-byte Folded Reload
	bl	load_connected_weights
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #5736]
	adrp	x9, GRU
	ldr	x9, [x9, :lo12:GRU]
	subs	x8, x8, x9
	b.ne	.LBB0_30
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x1, [sp, #5856]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	add	x0, sp, #1704
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	mov	x2, #224
	str	x2, [sp, #136]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	w2, [sp, #36]                   // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #136]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5848]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #60]                   // 4-byte Folded Spill
	add	x0, sp, #1480
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldr	x1, [sp, #48]                   // 8-byte Folded Reload
	ldr	w2, [sp, #60]                   // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #136]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5840]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #72]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #84]                   // 4-byte Folded Spill
	add	x0, sp, #1256
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #64]                   // 8-byte Folded Reload
	ldr	x1, [sp, #72]                   // 8-byte Folded Reload
	ldr	w2, [sp, #84]                   // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #136]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5832]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #96]                   // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #108]                  // 4-byte Folded Spill
	add	x0, sp, #1032
	str	x0, [sp, #88]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #88]                   // 8-byte Folded Reload
	ldr	x1, [sp, #96]                   // 8-byte Folded Reload
	ldr	w2, [sp, #108]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #136]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5824]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #120]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #132]                  // 4-byte Folded Spill
	add	x0, sp, #808
	str	x0, [sp, #112]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #112]                  // 8-byte Folded Reload
	ldr	x1, [sp, #120]                  // 8-byte Folded Reload
	ldr	w2, [sp, #132]                  // 4-byte Folded Reload
	bl	load_connected_weights
	ldr	x2, [sp, #136]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5816]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #152]                  // 8-byte Folded Spill
	ldur	w8, [x29, #-52]
	str	w8, [sp, #164]                  // 4-byte Folded Spill
	add	x0, sp, #584
	str	x0, [sp, #144]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #144]                  // 8-byte Folded Reload
	ldr	x1, [sp, #152]                  // 8-byte Folded Reload
	ldr	w2, [sp, #164]                  // 4-byte Folded Reload
	bl	load_connected_weights
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #5736]
	adrp	x9, LOCAL
	ldr	x9, [x9, :lo12:LOCAL]
	subs	x8, x8, x9
	b.ne	.LBB0_32
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	w8, [sp, #5744]
	ldr	w9, [sp, #5748]
	mul	w8, w8, w9
	str	w8, [sp, #580]
	ldr	w8, [sp, #5752]
	ldr	w9, [sp, #5752]
	mul	w8, w8, w9
	ldr	w9, [sp, #5756]
	mul	w8, w8, w9
	ldr	w9, [sp, #5760]
	mul	w8, w8, w9
	ldr	w9, [sp, #580]
	mul	w8, w8, w9
	str	w8, [sp, #576]
	ldr	x0, [sp, #5768]
	ldr	w2, [sp, #5776]
	ldur	x3, [x29, #-32]
	mov	w1, #4
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	fread
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x0, [sp, #5784]
	ldr	w2, [sp, #576]
	ldur	x3, [x29, #-32]
	bl	fread
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-56]
	add	w8, w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_10
.LBB0_34:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fprintf
	ldur	x0, [x29, #-32]
	bl	fclose
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #1920
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	load_weights_upto, .Lfunc_end0-load_weights_upto
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Loading weights from %s..."
	.size	.L.str, 27
	.type	stdout,@object                  // @stdout
	.bss
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3
	.type	CONVOLUTIONAL,@object           // @CONVOLUTIONAL
	.bss
	.globl	CONVOLUTIONAL
	.p2align	3
CONVOLUTIONAL:
	.xword	0                               // 0x0
	.size	CONVOLUTIONAL, 8
	.type	DECONVOLUTIONAL,@object         // @DECONVOLUTIONAL
	.globl	DECONVOLUTIONAL
	.p2align	3
DECONVOLUTIONAL:
	.xword	0                               // 0x0
	.size	DECONVOLUTIONAL, 8
	.type	CONNECTED,@object               // @CONNECTED
	.globl	CONNECTED
	.p2align	3
CONNECTED:
	.xword	0                               // 0x0
	.size	CONNECTED, 8
	.type	BATCHNORM,@object               // @BATCHNORM
	.globl	BATCHNORM
	.p2align	3
BATCHNORM:
	.xword	0                               // 0x0
	.size	BATCHNORM, 8
	.type	CRNN,@object                    // @CRNN
	.globl	CRNN
	.p2align	3
CRNN:
	.xword	0                               // 0x0
	.size	CRNN, 8
	.type	RNN,@object                     // @RNN
	.globl	RNN
	.p2align	3
RNN:
	.xword	0                               // 0x0
	.size	RNN, 8
	.type	LSTM,@object                    // @LSTM
	.globl	LSTM
	.p2align	3
LSTM:
	.xword	0                               // 0x0
	.size	LSTM, 8
	.type	GRU,@object                     // @GRU
	.globl	GRU
	.p2align	3
GRU:
	.xword	0                               // 0x0
	.size	GRU, 8
	.type	LOCAL,@object                   // @LOCAL
	.globl	LOCAL
	.p2align	3
LOCAL:
	.xword	0                               // 0x0
	.size	LOCAL, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Done!\n"
	.size	.L.str.2, 7
	.type	gpu_index,@object               // @gpu_index
	.bss
	.globl	gpu_index
	.p2align	3
gpu_index:
	.xword	0                               // 0x0
	.size	gpu_index, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym fflush
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym fread
	.addrsig_sym load_convolutional_weights
	.addrsig_sym load_connected_weights
	.addrsig_sym load_batchnorm_weights
	.addrsig_sym fclose
	.addrsig_sym stderr
	.addrsig_sym stdout
	.addrsig_sym CONVOLUTIONAL
	.addrsig_sym DECONVOLUTIONAL
	.addrsig_sym CONNECTED
	.addrsig_sym BATCHNORM
	.addrsig_sym CRNN
	.addrsig_sym RNN
	.addrsig_sym LSTM
	.addrsig_sym GRU
	.addrsig_sym LOCAL