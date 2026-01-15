	.text
	.globl	fmtdbl                          # -- Begin function fmtdbl
	.p2align	4, 0x90
fmtdbl:                                 # @fmtdbl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	leaq	.L.str(%rip), %rdi
	callq	fmt@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%a"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmt