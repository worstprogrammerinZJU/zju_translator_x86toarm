	.text
	.globl	backward_connected_layer        # -- Begin function backward_connected_layer
	.p2align	4, 0x90
backward_connected_layer:               # @backward_connected_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movl	60(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	56(%rax), %edx
	movq	8(%rax), %rcx
	callq	gradient_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-88(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 48(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	backward_batchnorm_layer@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	40(%rax), %edi
	movq	8(%rax), %rsi
	movl	4(%rax), %edx
	movl	(%rax), %ecx
	movl	$1, %r8d
	callq	backward_bias@PLT
.LBB0_3:
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	16(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-44(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movq	-64(%rbp), %r15
	movl	-44(%rbp), %r14d
	movq	-72(%rbp), %rbx
	movl	-52(%rbp), %r11d
	movq	-80(%rbp), %r10
	movl	-52(%rbp), %eax
	movl	$1, %r9d
	xorl	%esi, %esi
	movl	%r9d, %edi
	movq	%r15, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	gemm@PLT
                                        # kill: def $ecx killed $eax
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	4(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	16(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB0_5
# %bb.4:
	movl	-44(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movq	-64(%rbp), %r15
	movl	-48(%rbp), %r14d
	movq	-72(%rbp), %rbx
	movl	-52(%rbp), %r11d
	movq	-80(%rbp), %r10
	movl	-52(%rbp), %eax
	xorl	%esi, %esi
	movl	$1, %r9d
	movl	%esi, %edi
	movq	%r15, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	gemm@PLT
.LBB0_5:
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym backward_batchnorm_layer
	.addrsig_sym backward_bias
	.addrsig_sym gemm