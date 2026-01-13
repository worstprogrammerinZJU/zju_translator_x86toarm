	.text
	.globl	make_normalization_layer        # -- Begin function make_normalization_layer
	.p2align	4, 0x90
make_normalization_layer:               # @make_normalization_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -20(%rbp)
	movss	%xmm0, -24(%rbp)
	movss	%xmm1, -28(%rbp)
	movss	%xmm2, -32(%rbp)
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$144, %edx
	callq	memset@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	NORMALIZATION(%rip), %eax
	movl	%eax, 136(%rdi)
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
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 28(%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, 32(%rdi)
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 36(%rdi)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 40(%rdi)
	movl	-12(%rbp), %edi
	imull	-8(%rbp), %edi
	imull	-16(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 104(%rdi)
	movl	-12(%rbp), %edi
	imull	-8(%rbp), %edi
	imull	-16(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 88(%rdi)
	movl	-12(%rbp), %edi
	imull	-8(%rbp), %edi
	imull	-16(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 72(%rdi)
	movl	-12(%rbp), %edi
	imull	-8(%rbp), %edi
	imull	-16(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 56(%rdi)
	movl	-8(%rbp), %ecx
	imull	-12(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, 44(%rdi)
	movl	44(%rdi), %ecx
	movl	%ecx, 48(%rdi)
	movl	forward_normalization_layer(%rip), %ecx
	movl	%ecx, 132(%rdi)
	movl	backward_normalization_layer(%rip), %ecx
	movl	%ecx, 128(%rdi)
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
	.asciz	"Local Response Normalization Layer: %d x %d x %d image, %d size\n"
	.bss
	.globl	NORMALIZATION
	.p2align	2
NORMALIZATION:
	.long	0                               # 0x0
	.globl	forward_normalization_layer
	.p2align	2
forward_normalization_layer:
	.long	0                               # 0x0
	.globl	backward_normalization_layer
	.p2align	2
backward_normalization_layer:
	.long	0                               # 0x0
	.globl	backward_normalization_layer_gpu
	.p2align	2
backward_normalization_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_normalization_layer_gpu
	.p2align	2
forward_normalization_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym NORMALIZATION
	.addrsig_sym forward_normalization_layer
	.addrsig_sym backward_normalization_layer