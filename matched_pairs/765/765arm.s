	.text
	.globl	ledcAttachPin                   // -- Begin function ledcAttachPin
	.p2align	2
	.type	ledcAttachPin,@function
ledcAttachPin:                          // @ledcAttachPin
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #15
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_6
.LBB0_2:
	ldur	w0, [x29, #-4]
	adrp	x8, OUTPUT
	ldr	w1, [x8, :lo12:OUTPUT]
	bl	pinMode
	ldur	w8, [x29, #-4]
	stur	w8, [x29, #-12]                 // 4-byte Folded Spill
	ldur	w8, [x29, #-8]
	mov	w9, #8
	sdiv	w8, w8, w9
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, LEDC_LS_SIG_OUT0_IDX
	ldr	x8, [x8, :lo12:LEDC_LS_SIG_OUT0_IDX]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	adrp	x8, LEDC_HS_SIG_OUT0_IDX
	ldr	x8, [x8, :lo12:LEDC_HS_SIG_OUT0_IDX]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-12]                 // 4-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-8]
	mov	w11, #8
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	add	x1, x8, w9, sxtw
	mov	w3, wzr
	mov	w2, w3
	bl	pinMatrixOutAttach
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	ledcAttachPin, .Lfunc_end0-ledcAttachPin
                                        // -- End function
	.type	OUTPUT,@object                  // @OUTPUT
	.bss
	.globl	OUTPUT
	.p2align	2
OUTPUT:
	.word	0                               // 0x0
	.size	OUTPUT, 4
	.type	LEDC_LS_SIG_OUT0_IDX,@object    // @LEDC_LS_SIG_OUT0_IDX
	.globl	LEDC_LS_SIG_OUT0_IDX
	.p2align	3
LEDC_LS_SIG_OUT0_IDX:
	.xword	0                               // 0x0
	.size	LEDC_LS_SIG_OUT0_IDX, 8
	.type	LEDC_HS_SIG_OUT0_IDX,@object    // @LEDC_HS_SIG_OUT0_IDX
	.globl	LEDC_HS_SIG_OUT0_IDX
	.p2align	3
LEDC_HS_SIG_OUT0_IDX:
	.xword	0                               // 0x0
	.size	LEDC_HS_SIG_OUT0_IDX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pinMode
	.addrsig_sym pinMatrixOutAttach
	.addrsig_sym OUTPUT
	.addrsig_sym LEDC_LS_SIG_OUT0_IDX
	.addrsig_sym LEDC_HS_SIG_OUT0_IDX