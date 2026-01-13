	.text
	.globl	make_batchnorm_layer            # -- Begin function make_batchnorm_layer
	.p2align	4, 0x90
make_batchnorm_layer:                   # @make_batchnorm_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$264, %edx                      # imm = 0x108
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	BATCHNORM(%rip), %eax
	movl	%eax, 256(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	%eax, 4(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 16(%rdi)
	movl	%eax, 12(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 24(%rdi)
	movl	%eax, 20(%rdi)
	movl	-12(%rbp), %edi
	imull	-8(%rbp), %edi
	imull	-16(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movl	-12(%rbp), %edi
	imull	-8(%rbp), %edi
	imull	-16(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 40(%rdi)
	movl	-8(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, 48(%rdi)
	movl	48(%rdi), %eax
	movl	%eax, 52(%rdi)
	movl	-16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 56(%rdi)
	movl	-16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 64(%rdi)
	movl	-16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 72(%rdi)
	movl	-16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 80(%rdi)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	56(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 88(%rax)
	movl	-16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 96(%rax)
	movl	-16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 248(%rax)
	movl	-16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rdx, 240(%rcx)
	movl	forward_batchnorm_layer(%rip), %edx
	movl	%edx, 236(%rcx)
	movl	backward_batchnorm_layer(%rip), %edx
	movl	%edx, 232(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Batch Normalization Layer: %d x %d x %d image\n"
	.bss
	.globl	BATCHNORM
	.p2align	2
BATCHNORM:
	.long	0                               # 0x0
	.globl	forward_batchnorm_layer
	.p2align	2
forward_batchnorm_layer:
	.long	0                               # 0x0
	.globl	backward_batchnorm_layer
	.p2align	2
backward_batchnorm_layer:
	.long	0                               # 0x0
	.globl	CUDNN_DATA_FLOAT
	.p2align	2
CUDNN_DATA_FLOAT:
	.long	0                               # 0x0
	.globl	CUDNN_TENSOR_NCHW
	.p2align	2
CUDNN_TENSOR_NCHW:
	.long	0                               # 0x0
	.globl	backward_batchnorm_layer_gpu
	.p2align	2
backward_batchnorm_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_batchnorm_layer_gpu
	.p2align	2
forward_batchnorm_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym BATCHNORM
	.addrsig_sym forward_batchnorm_layer
	.addrsig_sym backward_batchnorm_layer