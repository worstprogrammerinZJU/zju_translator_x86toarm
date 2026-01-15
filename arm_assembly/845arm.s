	.text
	.p2align	2                               // -- Begin function stack_init
	.type	stack_init,@function
stack_init:                             // @stack_init
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	adrp	x8, ALIGNMENT
	ldr	w8, [x8, :lo12:ALIGNMENT]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stack_init, .Lfunc_end0-stack_init
                                        // -- End function
	.type	ALIGNMENT,@object               // @ALIGNMENT
	.bss
	.globl	ALIGNMENT
	.p2align	2
ALIGNMENT:
	.word	0                               // 0x0
	.size	ALIGNMENT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_init
	.addrsig_sym ALIGNMENT