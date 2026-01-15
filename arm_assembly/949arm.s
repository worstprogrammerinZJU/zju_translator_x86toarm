	.text
	.globl	gemm                            // -- Begin function gemm
	.p2align	2
	.type	gemm,@function
gemm:                                   // @gemm
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	ldr	w10, [x29, #16]
	ldr	x9, [x29, #24]
	ldr	w8, [x29, #32]
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	stur	s0, [x29, #-24]
	stur	x5, [x29, #-32]
	stur	w6, [x29, #-36]
	str	x7, [sp, #48]
	str	w10, [sp, #44]
	str	s1, [sp, #40]
	str	x9, [sp, #32]
	str	w8, [sp, #28]
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	ldur	w2, [x29, #-12]
	ldur	w3, [x29, #-16]
	ldur	w4, [x29, #-20]
	ldur	s0, [x29, #-24]
	ldur	x5, [x29, #-32]
	ldur	w6, [x29, #-36]
	ldr	x7, [sp, #48]
	ldr	w11, [sp, #44]
	ldr	s1, [sp, #40]
	ldr	x10, [sp, #32]
	ldr	w8, [sp, #28]
	mov	x9, sp
	str	w11, [x9]
	str	x10, [x9, #8]
	str	w8, [x9, #16]
	bl	gemm_cpu
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	gemm, .Lfunc_end0-gemm
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gemm_cpu