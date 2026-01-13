	.text
	.globl	save_weights_upto               // -- Begin function save_weights_upto
	.p2align	2
	.type	save_weights_upto,@function
save_weights_upto:                      // @save_weights_upto
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #1792
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
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
	sub	x0, x29, #36
	stur	wzr, [x29, #-36]
	sub	x8, x29, #40
	str	x8, [sp, #424]                  // 8-byte Folded Spill
	mov	w8, #2
	stur	w8, [x29, #-40]
	sub	x8, x29, #44
	str	x8, [sp, #440]                  // 8-byte Folded Spill
	stur	wzr, [x29, #-44]
	ldur	x3, [x29, #-32]
	mov	w1, #4
	str	w1, [sp, #436]                  // 4-byte Folded Spill
	mov	w2, #1
	str	w2, [sp, #452]                  // 4-byte Folded Spill
	bl	fwrite
	ldr	w1, [sp, #436]                  // 4-byte Folded Reload
	ldr	w2, [sp, #452]                  // 4-byte Folded Reload
	ldr	x0, [sp, #424]                  // 8-byte Folded Reload
	ldur	x3, [x29, #-32]
	bl	fwrite
	ldr	w1, [sp, #436]                  // 4-byte Folded Reload
	ldr	w2, [sp, #452]                  // 4-byte Folded Reload
	ldr	x0, [sp, #440]                  // 8-byte Folded Reload
	ldur	x3, [x29, #-32]
	bl	fwrite
	ldr	w2, [sp, #452]                  // 4-byte Folded Reload
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	ldur	x3, [x29, #-32]
	mov	w1, #8
	bl	fwrite
	stur	wzr, [x29, #-48]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-48]
	ldur	x8, [x29, #-8]
	ldr	w10, [x8, #16]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #420]                  // 4-byte Folded Spill
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-48]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #420]                  // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #420]                  // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_27
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-48]
	mov	x10, #224
	mul	x9, x9, x10
	add	x1, x8, x9
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #1520
	mov	x2, #224
	bl	memcpy
	ldr	x8, [sp, #5832]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_26
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #5616]
	adrp	x9, CONVOLUTIONAL
	ldr	x9, [x9, :lo12:CONVOLUTIONAL]
	subs	x8, x8, x9
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #5616]
	adrp	x9, DECONVOLUTIONAL
	ldr	x9, [x9, :lo12:DECONVOLUTIONAL]
	subs	x8, x8, x9
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp, #408]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #1296
	str	x0, [sp, #400]                  // 8-byte Folded Spill
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #1520
	mov	x2, #224
	bl	memcpy
	ldr	x0, [sp, #400]                  // 8-byte Folded Reload
	ldr	x1, [sp, #408]                  // 8-byte Folded Reload
	bl	save_convolutional_weights
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #5616]
	adrp	x9, CONNECTED
	ldr	x9, [x9, :lo12:CONNECTED]
	subs	x8, x8, x9
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp, #392]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #1072
	str	x0, [sp, #384]                  // 8-byte Folded Spill
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #1520
	mov	x2, #224
	bl	memcpy
	ldr	x0, [sp, #384]                  // 8-byte Folded Reload
	ldr	x1, [sp, #392]                  // 8-byte Folded Reload
	bl	save_connected_weights
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #5616]
	adrp	x9, BATCHNORM
	ldr	x9, [x9, :lo12:BATCHNORM]
	subs	x8, x8, x9
	b.ne	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp, #376]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #848
	str	x0, [sp, #368]                  // 8-byte Folded Spill
	add	x1, sp, #1, lsl #12             // =4096
	add	x1, x1, #1520
	mov	x2, #224
	bl	memcpy
	ldr	x0, [sp, #368]                  // 8-byte Folded Reload
	ldr	x1, [sp, #376]                  // 8-byte Folded Reload
	bl	save_batchnorm_weights
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #5616]
	adrp	x9, RNN
	ldr	x9, [x9, :lo12:RNN]
	subs	x8, x8, x9
	b.ne	.LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x1, [sp, #5688]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #320]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #624
	str	x0, [sp, #312]                  // 8-byte Folded Spill
	mov	x2, #224
	str	x2, [sp, #344]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #312]                  // 8-byte Folded Reload
	ldr	x1, [sp, #320]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #344]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5680]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #336]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #400
	str	x0, [sp, #328]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #328]                  // 8-byte Folded Reload
	ldr	x1, [sp, #336]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #344]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5672]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #360]                  // 8-byte Folded Spill
	add	x0, sp, #1, lsl #12             // =4096
	add	x0, x0, #176
	str	x0, [sp, #352]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #352]                  // 8-byte Folded Reload
	ldr	x1, [sp, #360]                  // 8-byte Folded Reload
	bl	save_connected_weights
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #5616]
	adrp	x9, LSTM
	ldr	x9, [x9, :lo12:LSTM]
	subs	x8, x8, x9
	b.ne	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x1, [sp, #5824]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #184]                  // 8-byte Folded Spill
	add	x0, sp, #4048
	str	x0, [sp, #176]                  // 8-byte Folded Spill
	mov	x2, #224
	str	x2, [sp, #288]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #176]                  // 8-byte Folded Reload
	ldr	x1, [sp, #184]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #288]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5816]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #200]                  // 8-byte Folded Spill
	add	x0, sp, #3824
	str	x0, [sp, #192]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	x1, [sp, #200]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #288]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5808]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #216]                  // 8-byte Folded Spill
	add	x0, sp, #3600
	str	x0, [sp, #208]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #208]                  // 8-byte Folded Reload
	ldr	x1, [sp, #216]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #288]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5800]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #232]                  // 8-byte Folded Spill
	add	x0, sp, #3376
	str	x0, [sp, #224]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #224]                  // 8-byte Folded Reload
	ldr	x1, [sp, #232]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #288]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5792]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #248]                  // 8-byte Folded Spill
	add	x0, sp, #3152
	str	x0, [sp, #240]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #240]                  // 8-byte Folded Reload
	ldr	x1, [sp, #248]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #288]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5784]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #264]                  // 8-byte Folded Spill
	add	x0, sp, #2928
	str	x0, [sp, #256]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #256]                  // 8-byte Folded Reload
	ldr	x1, [sp, #264]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #288]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5776]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #280]                  // 8-byte Folded Spill
	add	x0, sp, #2704
	str	x0, [sp, #272]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #272]                  // 8-byte Folded Reload
	ldr	x1, [sp, #280]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #288]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5768]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #304]                  // 8-byte Folded Spill
	add	x0, sp, #2480
	str	x0, [sp, #296]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #296]                  // 8-byte Folded Reload
	ldr	x1, [sp, #304]                  // 8-byte Folded Reload
	bl	save_connected_weights
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #5616]
	adrp	x9, GRU
	ldr	x9, [x9, :lo12:GRU]
	subs	x8, x8, x9
	b.ne	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x1, [sp, #5760]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #80]                   // 8-byte Folded Spill
	add	x0, sp, #2256
	str	x0, [sp, #72]                   // 8-byte Folded Spill
	mov	x2, #224
	str	x2, [sp, #152]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #72]                   // 8-byte Folded Reload
	ldr	x1, [sp, #80]                   // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #152]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5752]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #96]                   // 8-byte Folded Spill
	add	x0, sp, #2032
	str	x0, [sp, #88]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #88]                   // 8-byte Folded Reload
	ldr	x1, [sp, #96]                   // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #152]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5744]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #112]                  // 8-byte Folded Spill
	add	x0, sp, #1808
	str	x0, [sp, #104]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #104]                  // 8-byte Folded Reload
	ldr	x1, [sp, #112]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #152]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5736]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #128]                  // 8-byte Folded Spill
	add	x0, sp, #1584
	str	x0, [sp, #120]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #120]                  // 8-byte Folded Reload
	ldr	x1, [sp, #128]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #152]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5728]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #144]                  // 8-byte Folded Spill
	add	x0, sp, #1360
	str	x0, [sp, #136]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #136]                  // 8-byte Folded Reload
	ldr	x1, [sp, #144]                  // 8-byte Folded Reload
	bl	save_connected_weights
	ldr	x2, [sp, #152]                  // 8-byte Folded Reload
	ldr	x1, [sp, #5720]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #168]                  // 8-byte Folded Spill
	add	x0, sp, #1136
	str	x0, [sp, #160]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #160]                  // 8-byte Folded Reload
	ldr	x1, [sp, #168]                  // 8-byte Folded Reload
	bl	save_connected_weights
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #5616]
	adrp	x9, CRNN
	ldr	x9, [x9, :lo12:CRNN]
	subs	x8, x8, x9
	b.ne	.LBB0_23
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x1, [sp, #5688]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	add	x0, sp, #912
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	mov	x2, #224
	str	x2, [sp, #48]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	bl	save_convolutional_weights
	ldr	x2, [sp, #48]                   // 8-byte Folded Reload
	ldr	x1, [sp, #5680]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	add	x0, sp, #688
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	bl	save_convolutional_weights
	ldr	x2, [sp, #48]                   // 8-byte Folded Reload
	ldr	x1, [sp, #5672]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #64]                   // 8-byte Folded Spill
	add	x0, sp, #464
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	ldr	x1, [sp, #64]                   // 8-byte Folded Reload
	bl	save_convolutional_weights
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #5616]
	adrp	x9, LOCAL
	ldr	x9, [x9, :lo12:LOCAL]
	subs	x8, x8, x9
	b.ne	.LBB0_25
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #5624]
	ldr	w9, [sp, #5628]
	mul	w8, w8, w9
	str	w8, [sp, #460]
	ldr	w8, [sp, #5632]
	ldr	w9, [sp, #5632]
	mul	w8, w8, w9
	ldr	w9, [sp, #5636]
	mul	w8, w8, w9
	ldr	w9, [sp, #5640]
	mul	w8, w8, w9
	ldr	w9, [sp, #460]
	mul	w8, w8, w9
	str	w8, [sp, #456]
	ldr	x0, [sp, #5648]
	ldr	w2, [sp, #5656]
	ldur	x3, [x29, #-32]
	mov	w1, #4
	str	w1, [sp, #12]                   // 4-byte Folded Spill
	bl	fwrite
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	ldr	x0, [sp, #5664]
	ldr	w2, [sp, #456]
	ldur	x3, [x29, #-32]
	bl	fwrite
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-48]
	add	w8, w8, #1
	stur	w8, [x29, #-48]
	b	.LBB0_3
.LBB0_27:
	ldur	x0, [x29, #-32]
	bl	fclose
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #1792
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	save_weights_upto, .Lfunc_end0-save_weights_upto
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
	.asciz	"Saving weights to %s\n"
	.size	.L.str, 22
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"wb"
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
	.type	CRNN,@object                    // @CRNN
	.globl	CRNN
	.p2align	3
CRNN:
	.xword	0                               // 0x0
	.size	CRNN, 8
	.type	LOCAL,@object                   // @LOCAL
	.globl	LOCAL
	.p2align	3
LOCAL:
	.xword	0                               // 0x0
	.size	LOCAL, 8
	.type	gpu_index,@object               // @gpu_index
	.globl	gpu_index
	.p2align	3
gpu_index:
	.xword	0                               // 0x0
	.size	gpu_index, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym fwrite
	.addrsig_sym save_convolutional_weights
	.addrsig_sym save_connected_weights
	.addrsig_sym save_batchnorm_weights
	.addrsig_sym fclose
	.addrsig_sym stderr
	.addrsig_sym CONVOLUTIONAL
	.addrsig_sym DECONVOLUTIONAL
	.addrsig_sym CONNECTED
	.addrsig_sym BATCHNORM
	.addrsig_sym RNN
	.addrsig_sym LSTM
	.addrsig_sym GRU
	.addrsig_sym CRNN
	.addrsig_sym LOCAL