	.text
	.globl	backward_crnn_layer             # -- Begin function backward_crnn_layer
	.p2align	4, 0x90
backward_crnn_layer:                    # @backward_crnn_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp                      # imm = 0x120
	leaq	16(%rbp), %rax
	movq	%rax, -224(%rbp)                # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	56(%rax), %rsi
	leaq	-88(%rbp), %rdi
	movl	$64, %edx
	callq	memcpy@PLT
	movq	-224(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rsi
	leaq	-152(%rbp), %rdi
	movl	$64, %edx
	callq	memcpy@PLT
	movq	-224(%rbp), %rax                # 8-byte Reload
	movq	40(%rax), %rsi
	leaq	-216(%rbp), %rdi
	movl	$64, %edx
	callq	memcpy@PLT
	movq	-224(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %esi
	subl	$1, %esi
	leaq	-88(%rbp), %rdi
	callq	increment_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-224(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %esi
	subl	$1, %esi
	leaq	-152(%rbp), %rdi
	callq	increment_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-224(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %esi
	subl	$1, %esi
	leaq	-216(%rbp), %rdi
	callq	increment_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-224(%rbp), %rax                # 8-byte Reload
	movl	8(%rax), %ecx
	imull	12(%rax), %ecx
	imull	(%rax), %ecx
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jl	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-224(%rbp), %rax                # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movl	-72(%rbp), %esi
	movl	4(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-224(%rbp), %rax                # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movl	-136(%rbp), %edx
	movl	4(%rax), %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-224(%rbp), %rax                # 8-byte Reload
	movl	4(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-16(%rbp), %rdi
	movups	-216(%rbp), %xmm0
	movups	-200(%rbp), %xmm1
	movups	-184(%rbp), %xmm2
	movups	-168(%rbp), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	backward_convolutional_layer@PLT
	movq	-224(%rbp), %rdx                # 8-byte Reload
	movl	8(%rdx), %ecx
	imull	12(%rdx), %ecx
	movl	4(%rdx), %eax
	subl	%ecx, %eax
	movl	%eax, 4(%rdx)
	movl	4(%rdx), %eax
	movl	%eax, -16(%rbp)
	movl	-132(%rbp), %eax
	movl	8(%rdx), %ecx
	imull	12(%rdx), %ecx
	subl	%ecx, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -12(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movups	-152(%rbp), %xmm0
	movups	-136(%rbp), %xmm1
	movups	-120(%rbp), %xmm2
	movups	-104(%rbp), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	backward_convolutional_layer@PLT
                                        # kill: def $ecx killed $eax
	movq	-224(%rbp), %rax                # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movl	-132(%rbp), %esi
	movl	-68(%rbp), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
	cmpl	$0, -20(%rbp)
	jle	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-224(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 32(%rax)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-224(%rbp), %rcx                # 8-byte Reload
	movl	8(%rcx), %edi
	imull	12(%rcx), %edi
	movl	-132(%rbp), %edx
	movl	-132(%rbp), %r8d
	movl	8(%rcx), %eax
	imull	12(%rcx), %eax
	subl	%eax, %r8d
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	%r9d, %ecx
	callq	axpy_cpu@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-224(%rbp), %rdx                # 8-byte Reload
	movl	-8(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	24(%rdx), %ecx
	imull	12(%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-224(%rbp), %rdx                # 8-byte Reload
	movl	-4(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	24(%rdx), %ecx
	imull	12(%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -12(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movups	-88(%rbp), %xmm0
	movups	-72(%rbp), %xmm1
	movups	-56(%rbp), %xmm2
	movups	-40(%rbp), %xmm3
	movq	%rsp, %rax
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	backward_convolutional_layer@PLT
	leaq	-88(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	increment_layer@PLT
	leaq	-152(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	increment_layer@PLT
	leaq	-216(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	increment_layer@PLT
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym increment_layer
	.addrsig_sym copy_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym backward_convolutional_layer