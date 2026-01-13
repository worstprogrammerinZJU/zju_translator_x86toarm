	.text
	.globl	forward_logistic_layer          // -- Begin function forward_logistic_layer
	.p2align	2
	.type	forward_logistic_layer,@function
forward_logistic_layer:                 // @forward_logistic_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	x8, x0
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [sp, #24]
	ldr	w3, [x8, #28]
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x9, #28]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w1, w8, w9
	adrp	x8, LOGISTIC
	ldr	w2, [x8, :lo12:LOGISTIC]
	bl	activate_array
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #8]
	mul	w0, w9, w10
	ldr	w1, [x8, #28]
	ldr	x2, [sp, #16]
	ldr	w3, [x8, #24]
	ldr	w4, [x8, #12]
	bl	logistic_x_ent_cpu
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x9, #12]
	ldr	w8, [x9, #4]
	ldr	w9, [x9, #8]
	mul	w1, w8, w9
	bl	sum_array
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	str	w0, [x8]
	b	.LBB0_2
.LBB0_2:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	forward_logistic_layer, .Lfunc_end0-forward_logistic_layer
                                        // -- End function
	.type	LOGISTIC,@object                // @LOGISTIC
	.bss
	.globl	LOGISTIC
	.p2align	2
LOGISTIC:
	.word	0                               // 0x0
	.size	LOGISTIC, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu
	.addrsig_sym activate_array
	.addrsig_sym logistic_x_ent_cpu
	.addrsig_sym sum_array
	.addrsig_sym LOGISTIC