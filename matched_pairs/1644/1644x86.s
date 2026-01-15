	.text
	.globl	forward_lstm_layer              # -- Begin function forward_lstm_layer
	.p2align	4, 0x90
forward_lstm_layer:                     # @forward_lstm_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1216, %rsp                     # imm = 0x4C0
	leaq	136(%rbp), %rax
	movq	%rax, -1000(%rbp)               # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -1008(%rbp)               # 8-byte Spill
	leaq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movq	-1000(%rbp), %rcx               # 8-byte Reload
	movq	8(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movq	112(%rax), %rsi
	leaq	-152(%rbp), %rdi
	movl	$120, %edx
	callq	memcpy@PLT
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movq	104(%rax), %rsi
	leaq	-272(%rbp), %rdi
	movl	$120, %edx
	callq	memcpy@PLT
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movq	96(%rax), %rsi
	leaq	-392(%rbp), %rdi
	movl	$120, %edx
	callq	memcpy@PLT
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movq	88(%rax), %rsi
	leaq	-512(%rbp), %rdi
	movl	$120, %edx
	callq	memcpy@PLT
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movq	80(%rax), %rsi
	leaq	-632(%rbp), %rdi
	movl	$120, %edx
	callq	memcpy@PLT
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movq	72(%rax), %rsi
	leaq	-752(%rbp), %rdi
	movl	$120, %edx
	callq	memcpy@PLT
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movq	64(%rax), %rsi
	leaq	-872(%rbp), %rdi
	movl	$120, %edx
	callq	memcpy@PLT
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movq	56(%rax), %rsi
	leaq	-992(%rbp), %rdi
	movl	$120, %edx
	callq	memcpy@PLT
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-100(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-220(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-340(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-460(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-580(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-700(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-820(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	-940(%rbp), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1000(%rbp), %rax               # 8-byte Reload
	cmpq	$0, 8(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	imull	8(%rax), %edi
	movl	52(%rax), %edx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
.LBB0_2:
	movl	$0, -28(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-1008(%rbp), %rcx               # 8-byte Reload
	movl	-28(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	12(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rax, -1072(%rbp)               # 8-byte Spill
	movq	%rcx, 136(%rax)
	movups	-24(%rbp), %xmm0
	movups	%xmm0, 120(%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 112(%rax)
	movups	-56(%rbp), %xmm0
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
	movq	-8(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rax, -1064(%rbp)               # 8-byte Spill
	movq	%rcx, 136(%rax)
	movups	-24(%rbp), %xmm0
	movups	%xmm0, 120(%rax)
	movq	-160(%rbp), %rcx
	movq	%rcx, 112(%rax)
	movups	-176(%rbp), %xmm0
	movups	%xmm0, 96(%rax)
	movups	-192(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-208(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-272(%rbp), %xmm0
	movups	-256(%rbp), %xmm1
	movups	-240(%rbp), %xmm2
	movups	-224(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
	movq	-8(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rax, -1056(%rbp)               # 8-byte Spill
	movq	%rcx, 136(%rax)
	movups	-24(%rbp), %xmm0
	movups	%xmm0, 120(%rax)
	movq	-280(%rbp), %rcx
	movq	%rcx, 112(%rax)
	movups	-296(%rbp), %xmm0
	movups	%xmm0, 96(%rax)
	movups	-312(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-328(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-392(%rbp), %xmm0
	movups	-376(%rbp), %xmm1
	movups	-360(%rbp), %xmm2
	movups	-344(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
	movq	-8(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rax, -1048(%rbp)               # 8-byte Spill
	movq	%rcx, 136(%rax)
	movups	-24(%rbp), %xmm0
	movups	%xmm0, 120(%rax)
	movq	-400(%rbp), %rcx
	movq	%rcx, 112(%rax)
	movups	-416(%rbp), %xmm0
	movups	%xmm0, 96(%rax)
	movups	-432(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-448(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-512(%rbp), %xmm0
	movups	-496(%rbp), %xmm1
	movups	-480(%rbp), %xmm2
	movups	-464(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-1000(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rax, -1040(%rbp)               # 8-byte Spill
	movq	%rcx, 136(%rax)
	movups	-24(%rbp), %xmm0
	movups	%xmm0, 120(%rax)
	movq	-520(%rbp), %rcx
	movq	%rcx, 112(%rax)
	movups	-536(%rbp), %xmm0
	movups	%xmm0, 96(%rax)
	movups	-552(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-568(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-632(%rbp), %xmm0
	movups	-616(%rbp), %xmm1
	movups	-600(%rbp), %xmm2
	movups	-584(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
	movq	-8(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rax, -1032(%rbp)               # 8-byte Spill
	movq	%rcx, 136(%rax)
	movups	-24(%rbp), %xmm0
	movups	%xmm0, 120(%rax)
	movq	-640(%rbp), %rcx
	movq	%rcx, 112(%rax)
	movups	-656(%rbp), %xmm0
	movups	%xmm0, 96(%rax)
	movups	-672(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-688(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-752(%rbp), %xmm0
	movups	-736(%rbp), %xmm1
	movups	-720(%rbp), %xmm2
	movups	-704(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
	movq	-8(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rax, -1024(%rbp)               # 8-byte Spill
	movq	%rcx, 136(%rax)
	movups	-24(%rbp), %xmm0
	movups	%xmm0, 120(%rax)
	movq	-760(%rbp), %rcx
	movq	%rcx, 112(%rax)
	movups	-776(%rbp), %xmm0
	movups	%xmm0, 96(%rax)
	movups	-792(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-808(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-872(%rbp), %xmm0
	movups	-856(%rbp), %xmm1
	movups	-840(%rbp), %xmm2
	movups	-824(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
	movq	-8(%rbp), %rcx
	movq	%rsp, %rax
	movq	%rax, -1016(%rbp)               # 8-byte Spill
	movq	%rcx, 136(%rax)
	movups	-24(%rbp), %xmm0
	movups	%xmm0, 120(%rax)
	movq	-880(%rbp), %rcx
	movq	%rcx, 112(%rax)
	movups	-896(%rbp), %xmm0
	movups	%xmm0, 96(%rax)
	movups	-912(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movups	-928(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movups	-992(%rbp), %xmm0
	movups	-976(%rbp), %xmm1
	movups	-960(%rbp), %xmm2
	movups	-944(%rbp), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	forward_connected_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-136(%rbp), %esi
	movl	20(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-616(%rbp), %edx
	movl	20(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-256(%rbp), %esi
	movl	24(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-736(%rbp), %edx
	movl	24(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-376(%rbp), %esi
	movl	28(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-856(%rbp), %edx
	movl	28(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-496(%rbp), %esi
	movl	32(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	-976(%rbp), %edx
	movl	32(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	20(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	LOGISTIC(%rip), %edx
	callq	activate_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	24(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	LOGISTIC(%rip), %edx
	callq	activate_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	28(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	TANH(%rip), %edx
	callq	activate_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	32(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	LOGISTIC(%rip), %edx
	callq	activate_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	24(%rax), %esi
	movl	36(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	28(%rax), %esi
	movl	36(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	mul_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	20(%rax), %esi
	movl	40(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	mul_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	36(%rax), %edx
	movl	40(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	40(%rax), %esi
	movl	12(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	12(%rax), %edi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	movl	TANH(%rip), %edx
	callq	activate_array@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	32(%rax), %esi
	movl	12(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	mul_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	40(%rax), %esi
	movl	44(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	(%rax), %edi
	imull	4(%rax), %edi
	movl	12(%rax), %esi
	movl	16(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
	movq	-1000(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movl	48(%rax), %edx
	imull	4(%rax), %edx
	addl	(%rcx), %edx
	movl	%edx, (%rcx)
	movl	(%rax), %ecx
	imull	4(%rax), %ecx
	addl	16(%rax), %ecx
	movl	%ecx, 16(%rax)
	movl	(%rax), %ecx
	imull	4(%rax), %ecx
	addl	44(%rax), %ecx
	movl	%ecx, 44(%rax)
	leaq	-152(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-272(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-392(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-512(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-632(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-752(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-872(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
	leaq	-992(%rbp), %rdi
	movl	$1, %esi
	callq	increment_layer@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	addq	$1216, %rsp                     # imm = 0x4C0
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
	.addrsig_sym forward_connected_layer
	.addrsig_sym copy_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym activate_array
	.addrsig_sym mul_cpu
	.addrsig_sym increment_layer
	.addrsig_sym LOGISTIC
	.addrsig_sym TANH