	.text
	.globl	tile_images                     # -- Begin function tile_images
	.p2align	4, 0x90
tile_images:                            # @tile_images
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	leaq	48(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	cmpq	$0, (%rax)
	jne	.LBB0_2
# %bb.1:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	copy_image@PLT
	jmp	.LBB0_9
.LBB0_2:
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rdx
	addq	(%rcx), %rdx
	movslq	-4(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -80(%rbp)                 # 8-byte Spill
	movq	8(%rax), %rax
	cmpq	8(%rcx), %rax
	jle	.LBB0_4
# %bb.3:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
.LBB0_5:
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	-88(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -96(%rbp)                 # 8-byte Spill
	movq	16(%rax), %rax
	cmpq	16(%rcx), %rax
	jle	.LBB0_7
# %bb.6:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
.LBB0_8:
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	movq	-104(%rbp), %rcx                # 8-byte Reload
	leaq	-40(%rbp), %rdi
	callq	make_image@PLT
	movq	-40(%rbp), %rax
	imulq	-32(%rbp), %rax
	imulq	-24(%rbp), %rax
	movl	%eax, %edi
	movl	-16(%rbp), %edx
	movl	$1, %ecx
	movl	%ecx, %esi
	callq	fill_cpu@PLT
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	leaq	-40(%rbp), %rax
	xorl	%esi, %esi
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 56(%rsp)
	movl	%esi, %edi
	callq	embed_image@PLT
	movq	-56(%rbp), %rcx                 # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movslq	-4(%rbp), %rdx
	addq	%rdx, %rax
	movl	%eax, %edi
	leaq	-40(%rbp), %rax
	xorl	%esi, %esi
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 56(%rsp)
	callq	composite_image@PLT
                                        # kill: def $ecx killed $eax
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, 24(%rax)
.LBB0_9:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_image
	.addrsig_sym make_image
	.addrsig_sym fill_cpu
	.addrsig_sym embed_image
	.addrsig_sym composite_image