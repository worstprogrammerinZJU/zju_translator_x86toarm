	.text
	.globl	update_convolutional_layer      # -- Begin function update_convolutional_layer
	.p2align	4, 0x90
update_convolutional_layer:             # @update_convolutional_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
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
	movl	20(%rax), %edi
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-32(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movl	28(%rax), %esi
	movl	32(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	20(%rax), %edi
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	28(%rax), %esi
	movl	$1, %edx
	callq	scal_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	cmpl	$0, 24(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	20(%rax), %edi
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-32(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movl	16(%rax), %esi
	movl	24(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	20(%rax), %edi
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	16(%rax), %esi
	movl	$1, %edx
	callq	scal_cpu@PLT
.LBB0_2:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %ecx
	xorl	$2147483648, %ecx               # imm = 0x80000000
	movd	%ecx, %xmm0
	cvtsi2ssl	-32(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movl	12(%rax), %esi
	movl	4(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-32(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movl	4(%rax), %esi
	movl	12(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	4(%rax), %esi
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