	.text
	.globl	get_random_data                 # -- Begin function get_random_data
	.p2align	4, 0x90
get_random_data:                        # @get_random_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	$1, (%rdi)
	movl	-4(%rbp), %ecx
	movl	%ecx, 32(%rdi)
	movl	-4(%rbp), %ecx
	movl	%ecx, 8(%rdi)
	movl	48(%rax), %ecx
	movl	%ecx, 48(%rdi)
	movl	24(%rax), %eax
	movl	%eax, 24(%rdi)
	movl	-4(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 40(%rdi)
	movl	-4(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 16(%rdi)
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	rand@PLT
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	cltd
	idivl	32(%rcx)
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	%edx, -12(%rbp)
	movq	40(%rcx), %rdx
	movslq	-12(%rbp), %rsi
	movl	(%rdx,%rsi,4), %edi
	movq	40(%rax), %rdx
	movslq	-8(%rbp), %rsi
	movl	%edi, (%rdx,%rsi,4)
	movq	16(%rcx), %rcx
	movslq	-12(%rbp), %rdx
	movl	(%rcx,%rdx,4), %edx
	movq	16(%rax), %rax
	movslq	-8(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym rand