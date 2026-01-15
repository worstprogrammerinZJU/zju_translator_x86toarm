	.text
	.globl	split_data                      # -- Begin function split_data
	.p2align	4, 0x90
split_data:                             # @split_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$2, %edi
	movl	$56, %esi
	callq	calloc@PLT
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	imull	32(%rcx), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	imull	32(%rcx), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, %ecx
	movq	-152(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -28(%rbp)
	movl	$1, -144(%rbp)
	movl	$1, -88(%rbp)
	movl	-28(%rbp), %ecx
	subl	-24(%rbp), %ecx
	movl	%ecx, -136(%rbp)
	movl	%ecx, -112(%rbp)
	movl	32(%rax), %ecx
	movl	-28(%rbp), %edx
	subl	-24(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -80(%rbp)
	movl	%ecx, -56(%rbp)
	movl	48(%rax), %ecx
	movl	%ecx, -96(%rbp)
	movl	%ecx, -40(%rbp)
	movl	24(%rax), %eax
	movl	%eax, -120(%rbp)
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -48(%rbp)
	movl	-112(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -104(%rbp)
	movl	-80(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -72(%rbp)
	movl	-136(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -128(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	40(%rax), %rcx
	movslq	-20(%rbp), %rdx
	movl	(%rcx,%rdx,4), %esi
	movq	-48(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movl	%esi, (%rcx,%rdx,4)
	movq	16(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-72(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	40(%rax), %rcx
	movslq	-20(%rbp), %rdx
	movl	(%rcx,%rdx,4), %esi
	movq	-104(%rbp), %rcx
	movl	-20(%rbp), %edx
	subl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movl	%esi, (%rcx,%rdx,4)
	movq	16(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-128(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-20(%rbp), %eax
	cmpl	32(%rcx), %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	40(%rax), %rcx
	movslq	-20(%rbp), %rdx
	movl	(%rcx,%rdx,4), %esi
	movq	-48(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %edi
	subl	-24(%rbp), %edi
	subl	%edi, %edx
	movslq	%edx, %rdx
	movl	%esi, (%rcx,%rdx,4)
	movq	16(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-72(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-28(%rbp), %esi
	subl	-24(%rbp), %esi
	subl	%esi, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	movq	-16(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	movl	$56, %edx
	callq	memcpy@PLT
	movq	-16(%rbp), %rdi
	addq	$56, %rdi
	leaq	-144(%rbp), %rsi
	movl	$56, %edx
	callq	memcpy@PLT
	movq	-16(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc