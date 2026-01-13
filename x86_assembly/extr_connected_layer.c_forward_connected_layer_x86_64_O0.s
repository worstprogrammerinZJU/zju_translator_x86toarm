	.text
	.globl	forward_connected_layer         # -- Begin function forward_connected_layer
	.p2align	4, 0x90
forward_connected_layer:                # @forward_connected_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$120, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	%rdi, -32(%rbp)
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movq	8(%rax), %rdx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movl	4(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	16(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	24(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-56(%rbp), %r15
	movl	-40(%rbp), %r14d
	movq	-64(%rbp), %rbx
	movl	-40(%rbp), %r11d
	movq	-72(%rbp), %r10
	movl	-44(%rbp), %eax
	xorl	%edi, %edi
	movl	$1, %r9d
	movl	%r9d, %esi
	movq	%r15, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	gemm@PLT
                                        # kill: def $ecx killed $eax
	movq	-80(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, 40(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	-32(%rbp), %rdi
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movq	%rsp, %rax
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_batchnorm_layer@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdi
	movl	36(%rax), %esi
	movl	4(%rax), %edx
	movl	(%rax), %ecx
	movl	$1, %r8d
	callq	add_bias@PLT
.LBB0_3:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	32(%rax), %edx
	callq	activate_array@PLT
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym gemm
	.addrsig_sym forward_batchnorm_layer
	.addrsig_sym add_bias
	.addrsig_sym activate_array