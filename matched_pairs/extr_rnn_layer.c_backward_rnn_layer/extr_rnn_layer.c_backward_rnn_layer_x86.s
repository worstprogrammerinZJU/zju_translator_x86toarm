	.text
	.globl	backward_rnn_layer              # -- Begin function backward_rnn_layer
	.p2align	4, 0x90
backward_rnn_layer:                     # @backward_rnn_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$368, %rsp                      # imm = 0x170
	leaq	16(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -8(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movl	-8(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	-8(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movq	56(%rax), %rsi
	leaq	-120(%rbp), %rdi
	movl	$64, %edx
	callq	memcpy@PLT
	movq	-304(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rsi
	leaq	-184(%rbp), %rdi
	movl	$64, %edx
	callq	memcpy@PLT
	movq	-304(%rbp), %rax                # 8-byte Reload
	movq	40(%rax), %rsi
	leaq	-248(%rbp), %rdi
	movl	$64, %edx
	callq	memcpy@PLT
	movq	-304(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %esi
	subl	$1, %esi
	leaq	-120(%rbp), %rdi
	callq	increment_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-304(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %esi
	subl	$1, %esi
	leaq	-184(%rbp), %rdi
	callq	increment_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-304(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %esi
	subl	$1, %esi
	leaq	-248(%rbp), %rdi
	callq	increment_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-304(%rbp), %rax                # 8-byte Reload
	movl	8(%rax), %ecx
	imull	12(%rax), %ecx
	imull	(%rax), %ecx
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jl	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-304(%rbp), %rax                # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movl	-104(%rbp), %esi
	movl	4(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-304(%rbp), %rax                # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movl	-168(%rbp), %edx
	movl	4(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-304(%rbp), %rax                # 8-byte Reload
	movl	4(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	-164(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -256(%rbp)
	movq	-264(%rbp), %rdi
	movl	-256(%rbp), %esi
	movups	-248(%rbp), %xmm0
	movups	-232(%rbp), %xmm1
	movups	-216(%rbp), %xmm2
	movups	-200(%rbp), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	backward_connected_layer@PLT
	movq	-304(%rbp), %rdx                # 8-byte Reload
	movl	8(%rdx), %ecx
	imull	12(%rdx), %ecx
	movl	4(%rdx), %eax
	subl	%ecx, %eax
	movl	%eax, 4(%rdx)
	movl	4(%rdx), %eax
	movl	%eax, -48(%rbp)
	movl	-164(%rbp), %eax
	movl	8(%rdx), %ecx
	imull	12(%rdx), %ecx
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -44(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -272(%rbp)
	movq	-280(%rbp), %rdi
	movl	-272(%rbp), %esi
	movups	-184(%rbp), %xmm0
	movups	-168(%rbp), %xmm1
	movups	-152(%rbp), %xmm2
	movups	-136(%rbp), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	backward_connected_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-304(%rbp), %rax                # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movl	-164(%rbp), %esi
	movl	-100(%rbp), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
	cmpl	$0, -52(%rbp)
	jle	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-304(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 32(%rax)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-304(%rbp), %rcx                # 8-byte Reload
	movl	8(%rcx), %edi
	imull	12(%rcx), %edi
	movl	-164(%rbp), %edx
	movl	-164(%rbp), %r8d
	movl	8(%rcx), %eax
	imull	12(%rcx), %eax
	subl	%eax, %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-304(%rbp), %rdx                # 8-byte Reload
	movl	-16(%rbp), %eax
	movl	-52(%rbp), %ecx
	imull	24(%rdx), %ecx
	imull	12(%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-304(%rbp), %rdx                # 8-byte Reload
	movl	-12(%rbp), %eax
	movl	-52(%rbp), %ecx
	imull	24(%rdx), %ecx
	imull	12(%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -44(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -288(%rbp)
	movq	-296(%rbp), %rdi
	movl	-288(%rbp), %esi
	movups	-120(%rbp), %xmm0
	movups	-104(%rbp), %xmm1
	movups	-88(%rbp), %xmm2
	movups	-72(%rbp), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	backward_connected_layer@PLT
	leaq	-120(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	increment_layer@PLT
	leaq	-184(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	increment_layer@PLT
	leaq	-248(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	increment_layer@PLT
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$368, %rsp                      # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym increment_layer
	.addrsig_sym copy_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym backward_connected_layer