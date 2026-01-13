	.text
	.globl	get_random_batch                # -- Begin function get_random_batch
	.p2align	4, 0x90
get_random_batch:                       # @get_random_batch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	rand@PLT
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	cltd
	idivl	16(%rcx)
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	%edx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %ecx
	imull	20(%rax), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdi
	movq	24(%rax), %rcx
	movslq	-32(%rbp), %rdx
	movl	(%rcx,%rdx,4), %esi
	movslq	20(%rax), %rax
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %ecx
	imull	(%rax), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdi
	movq	8(%rax), %rcx
	movslq	-32(%rbp), %rdx
	movl	(%rcx,%rdx,4), %esi
	movslq	(%rax), %rax
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand
	.addrsig_sym memcpy