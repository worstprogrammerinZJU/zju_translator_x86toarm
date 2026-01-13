	.text
	.p2align	2                               // -- Begin function _ledcSetupTimerFreq
	.type	_ledcSetupTimerFreq,@function
_ledcSetupTimerFreq:                    // @_ledcSetupTimerFreq
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	d0, [sp, #16]
	str	w1, [sp, #12]
	bl	getApbFrequency
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	lsl	w8, w8, #8
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	asr	w8, w8, w9
	scvtf	d0, w8
	ldr	d1, [sp, #16]
	fdiv	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp, #4]
	mov	w8, #1
	str	w8, [sp]
	ldr	w8, [sp, #4]
	adrp	x9, LEDC_DIV_NUM_HSTIMER0_V
	ldr	w9, [x9, :lo12:LEDC_DIV_NUM_HSTIMER0_V]
	subs	w8, w8, w9
	b.le	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	mov	w9, #80
	sdiv	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	asr	w8, w8, w9
	scvtf	d0, w8
	ldr	d1, [sp, #16]
	fdiv	d0, d0, d1
	fcvtzs	w8, d0
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	adrp	x9, LEDC_DIV_NUM_HSTIMER0_V
	ldr	w9, [x9, :lo12:LEDC_DIV_NUM_HSTIMER0_V]
	subs	w8, w8, w9
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, LEDC_DIV_NUM_HSTIMER0_V
	ldr	w8, [x8, :lo12:LEDC_DIV_NUM_HSTIMER0_V]
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_3:
	str	wzr, [sp]
	b	.LBB0_7
.LBB0_4:
	ldr	w8, [sp, #4]
	subs	w8, w8, #256
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #256
	str	w8, [sp, #4]
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #4]
	ldr	w2, [sp, #12]
	ldr	w3, [sp]
	bl	_ledcSetupTimer
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	asr	w8, w8, w9
	scvtf	d0, w8
	ldr	s2, [sp, #4]
                                        // implicit-def: $d1
	fmov	s1, s2
	sshll	v1.2d, v1.2s, #0
                                        // kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	fdiv	d0, d0, d1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	_ledcSetupTimerFreq, .Lfunc_end0-_ledcSetupTimerFreq
                                        // -- End function
	.type	LEDC_DIV_NUM_HSTIMER0_V,@object // @LEDC_DIV_NUM_HSTIMER0_V
	.bss
	.globl	LEDC_DIV_NUM_HSTIMER0_V
	.p2align	2
LEDC_DIV_NUM_HSTIMER0_V:
	.word	0                               // 0x0
	.size	LEDC_DIV_NUM_HSTIMER0_V, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ledcSetupTimerFreq
	.addrsig_sym getApbFrequency
	.addrsig_sym _ledcSetupTimer
	.addrsig_sym LEDC_DIV_NUM_HSTIMER0_V