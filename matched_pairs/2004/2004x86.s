	.text
	.globl	save_batchnorm_weights          # -- Begin function save_batchnorm_weights
	.p2align	4, 0x90
save_batchnorm_weights:                 # @save_batchnorm_weights
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
	movl	-8(%rbp), %edi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	callq	fwrite@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	gpu_index
	.p2align	3
gpu_index:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fwrite