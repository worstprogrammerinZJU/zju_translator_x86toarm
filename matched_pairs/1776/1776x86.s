	.text
	.globl	set_batch_network               # -- Begin function set_batch_network
	.p2align	4, 0x90
set_batch_network:                      # @set_batch_network
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-16(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, (%rax)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CONVOLUTIONAL
	.p2align	3
CONVOLUTIONAL:
	.quad	0                               # 0x0
	.globl	CUDNN_DATA_FLOAT
	.p2align	2
CUDNN_DATA_FLOAT:
	.long	0                               # 0x0
	.globl	CUDNN_TENSOR_NCHW
	.p2align	2
CUDNN_TENSOR_NCHW:
	.long	0                               # 0x0
	.globl	DECONVOLUTIONAL
	.p2align	3
DECONVOLUTIONAL:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig