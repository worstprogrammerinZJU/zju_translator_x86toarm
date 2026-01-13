	.text
	.globl	update_deconvolutional_layer    # -- Begin function update_deconvolutional_layer
	.p2align	4, 0x90
update_deconvolutional_layer:           # @update_deconvolutional_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movlpd	%xmm0, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	(%rax), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)
	movl	-4(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	4(%rax), %ecx
	imull	4(%rax), %ecx
	imull	8(%rax), %ecx
	imull	12(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	12(%rax), %edi
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-32(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movl	32(%rax), %esi
	movl	36(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	12(%rax), %edi
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	32(%rax), %esi
	movl	$1, %edx
	callq	scal_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-48(%rbp), %rax                 # 8-byte Reload
	cmpl	$0, 28(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	12(%rax), %edi
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-32(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movl	24(%rax), %esi
	movl	28(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	12(%rax), %edi
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	24(%rax), %esi
	movl	$1, %edx
	callq	scal_cpu@PLT
.LBB0_2:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	-36(%rbp), %edi
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %ecx
	xorl	$2147483648, %ecx               # imm = 0x80000000
	movd	%ecx, %xmm0
	cvtsi2ssl	-32(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movl	20(%rax), %esi
	movl	16(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	-36(%rbp), %edi
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-32(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movl	16(%rax), %esi
	movl	20(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	-36(%rbp), %edi
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	16(%rax), %esi
	movl	$1, %edx
	callq	scal_cpu@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym axpy_cpu
	.addrsig_sym scal_cpu