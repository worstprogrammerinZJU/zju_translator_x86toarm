	.text
	.globl	base64_init_encodestate         // -- Begin function base64_init_encodestate
	.p2align	2
	.type	base64_init_encodestate,@function
base64_init_encodestate:                // @base64_init_encodestate
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	adrp	x8, step_A
	ldr	w8, [x8, :lo12:step_A]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	base64_init_encodestate, .Lfunc_end0-base64_init_encodestate
                                        // -- End function
	.type	step_A,@object                  // @step_A
	.bss
	.globl	step_A
	.p2align	2
step_A:
	.word	0                               // 0x0
	.size	step_A, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym step_A