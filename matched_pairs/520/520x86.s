	.text
	.globl	get_next_batch                  # -- Begin function get_next_batch
	.p2align	4, 0x90
get_next_batch:                         # @get_next_batch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	-8(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %ecx
	imull	16(%rax), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdi
	movq	24(%rax), %rcx
	movslq	-32(%rbp), %rdx
	movl	(%rcx,%rdx,4), %esi
	movslq	16(%rax), %rax
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	cmpq	$0, -24(%rbp)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memcpy