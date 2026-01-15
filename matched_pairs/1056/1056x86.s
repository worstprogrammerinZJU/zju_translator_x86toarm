	.text
	.globl	forward_gru_layer               # -- Begin function forward_gru_layer
	.p2align	4, 0x90
forward_gru_layer:                      # @forward_gru_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$832, %rsp                      # imm = 0x340
	leaq	16(%rbp), %rax
	movq	%rax, -720(%rbp)                # 8-byte Spill
	movl	%edi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	104(%rax), %rsi
	leaq	-152(%rbp), %rdi
	movl	$112, %edx
	callq	memcpy@PLT
	movq	-720(%rbp), %rax                # 8-byte Reload
	movq	96(%rax), %rsi
	leaq	-264(%rbp), %rdi
	movl	$112, %edx
	callq	memcpy@PLT
	movq	-720(%rbp), %rax                # 8-byte Reload
	movq	88(%rax), %rsi
	leaq	-376(%rbp), %rdi
	movl	$112, %edx
	callq	memcpy@PLT
	movq	-720(%rbp), %rax                # 8-byte Reload
	movq	80(%rax), %rsi
	leaq	-488(%rbp), %rdi
	movl	$112, %edx
	callq	memcpy@PLT
	movq	-720(%rbp), %rax                # 8-byte Reload
	movq	72(%rax), %rsi
	leaq	-600(%rbp), %rdi
	movl	$112, %edx
	callq	memcpy@PLT
	movq	-720(%rbp), %rax                # 8-byte Reload
	movq	64(%rax), %rsi
	leaq	-712(%rbp), %rdi
	movl	$112, %edx
	callq	memcpy@PLT
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-96(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-208(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-320(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-432(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-544(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-656(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	56(%rax), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	12(%rax), %esi
	movl	16(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
.LBB0_2:
	movl	$0, -36(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-720(%rbp), %rcx                # 8-byte Reload
	movl	-36(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	12(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %edi
	movq	-24(%rbp), %rsi
	movups	-392(%rbp), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 96(%rax)
	movups	-408(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-424(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-488(%rbp), %xmm0
	movups	-472(%rbp), %xmm1
	movups	-456(%rbp), %xmm2
	movups	-440(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
	movl	-32(%rbp), %edi
	movq	-24(%rbp), %rsi
	movups	-504(%rbp), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 96(%rax)
	movups	-520(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-536(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-600(%rbp), %xmm0
	movups	-584(%rbp), %xmm1
	movups	-568(%rbp), %xmm2
	movups	-552(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
	movl	-16(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %edi
	movq	-24(%rbp), %rsi
	movups	-56(%rbp), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 96(%rax)
	movups	-72(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-88(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-152(%rbp), %xmm0
	movups	-136(%rbp), %xmm1
	movups	-120(%rbp), %xmm2
	movups	-104(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
	movl	-32(%rbp), %edi
	movq	-24(%rbp), %rsi
	movups	-168(%rbp), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 96(%rax)
	movups	-184(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-200(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-264(%rbp), %xmm0
	movups	-248(%rbp), %xmm1
	movups	-232(%rbp), %xmm2
	movups	-216(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
	movl	-32(%rbp), %edi
	movq	-24(%rbp), %rsi
	movups	-280(%rbp), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 96(%rax)
	movups	-296(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-312(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-376(%rbp), %xmm0
	movups	-360(%rbp), %xmm1
	movups	-344(%rbp), %xmm2
	movups	-328(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-132(%rbp), %esi
	movl	24(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-468(%rbp), %edx
	movl	24(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-244(%rbp), %esi
	movl	28(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-580(%rbp), %edx
	movl	28(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	24(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	LOGISTIC(%rip), %edx
	callq	activate_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	28(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	LOGISTIC(%rip), %edx
	callq	activate_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	12(%rax), %esi
	movl	32(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	28(%rax), %esi
	movl	32(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	mul_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	32(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %edi
	movq	-24(%rbp), %rsi
	movups	-616(%rbp), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 96(%rax)
	movups	-632(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-648(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-712(%rbp), %xmm0
	movups	-696(%rbp), %xmm1
	movups	-680(%rbp), %xmm2
	movups	-664(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-356(%rbp), %esi
	movl	36(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-692(%rbp), %edx
	movl	36(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 48(%rax)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	36(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	TANH(%rip), %edx
	callq	activate_array@PLT
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	36(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	LOGISTIC(%rip), %edx
	callq	activate_array@PLT
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	12(%rax), %edi
	movl	36(%rax), %esi
	movl	24(%rax), %edx
	movl	(%rax), %ecx
	imull	4(%rax), %ecx
	movl	20(%rax), %r8d
	callq	weighted_sum_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	20(%rax), %esi
	movl	12(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-720(%rbp), %rax                # 8-byte Reload
	movl	40(%rax), %ecx
	imull	4(%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	movl	(%rax), %ecx
	imull	4(%rax), %ecx
	addl	20(%rax), %ecx
	movl	%ecx, 20(%rax)
	leaq	-152(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-264(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-376(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-488(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-600(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-712(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_9:
	addq	$832, %rsp                      # imm = 0x340
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LOGISTIC
	.p2align	2
LOGISTIC:
	.long	0                               # 0x0
	.globl	TANH
	.p2align	2
TANH:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym copy_cpu
	.addrsig_sym forward_connected_layer
	.addrsig_sym axpy_cpu
	.addrsig_sym activate_array
	.addrsig_sym mul_cpu
	.addrsig_sym weighted_sum_cpu
	.addrsig_sym increment_layer
	.addrsig_sym LOGISTIC
	.addrsig_sym TANH