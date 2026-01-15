	.text
	.globl	base64_init_decodestate         // -- Begin function base64_init_decodestate
	.p2align	2
	.type	base64_init_decodestate,@function
base64_init_decodestate:                // @base64_init_decodestate
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	adrp	x8, step_a
	ldr	w8, [x8, :lo12:step_a]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	base64_init_decodestate, .Lfunc_end0-base64_init_decodestate
                                        // -- End function
	.type	step_a,@object                  // @step_a
	.bss
	.globl	step_a
	.p2align	2
step_a:
	.word	0                               // 0x0
	.size	step_a, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym step_a