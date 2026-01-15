	.text
	.globl	forward_deconvolutional_layer   # -- Begin function forward_deconvolutional_layer
	.p2align	4, 0x90
forward_deconvolutional_layer:          # @forward_deconvolutional_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	movl	(%rax), %ecx
	imull	(%rax), %ecx
	imull	4(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	8(%rax), %ecx
	imull	12(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movl	16(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movl	20(%rax), %edi
	imull	24(%rax), %edi
	movq	56(%rax), %rdx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
	movl	$0, -52(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movl	-52(%rbp), %eax
	cmpl	24(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rbx                 # 8-byte Reload
	movq	32(%rbx), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	-52(%rbp), %ecx
	imull	16(%rbx), %ecx
	imull	8(%rbx), %ecx
	imull	12(%rbx), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	-72(%rbp), %r12
	movl	-56(%rbp), %r15d
	movq	-80(%rbp), %r14
	movl	-60(%rbp), %r11d
	movq	-88(%rbp), %r10
	movl	-60(%rbp), %eax
	movl	$1, %r9d
	xorl	%esi, %esi
	movl	%r9d, %edi
	movq	%r12, (%rsp)
	movl	%r15d, 8(%rsp)
	movq	%r14, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	gemm_cpu@PLT
	movq	-40(%rbp), %rdi
	movl	88(%rbx), %esi
	movl	40(%rbx), %edx
	movl	44(%rbx), %ecx
	movl	(%rbx), %r8d
	movl	84(%rbx), %r9d
	movl	80(%rbx), %r10d
	movq	56(%rbx), %rax
	movl	-52(%rbp), %r11d
	imull	20(%rbx), %r11d
	movslq	%r11d, %r11
	addq	%r11, %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	col2im_cpu@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 72(%rax)
	je	.LBB0_6
# %bb.5:
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movups	80(%rcx), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_batchnorm_layer@PLT
	jmp	.LBB0_7
.LBB0_6:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	56(%rax), %rdi
	movl	64(%rax), %esi
	movl	24(%rax), %edx
	movl	4(%rax), %ecx
	movl	44(%rax), %r8d
	imull	40(%rax), %r8d
	callq	add_bias@PLT
.LBB0_7:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	56(%rax), %rdi
	movl	24(%rax), %esi
	imull	4(%rax), %esi
	imull	44(%rax), %esi
	imull	40(%rax), %esi
	movl	48(%rax), %edx
	callq	activate_array@PLT
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym gemm_cpu
	.addrsig_sym col2im_cpu
	.addrsig_sym forward_batchnorm_layer
	.addrsig_sym add_bias
	.addrsig_sym activate_array