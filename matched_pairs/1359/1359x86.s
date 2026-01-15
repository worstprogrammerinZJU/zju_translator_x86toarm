	.text
	.p2align	4, 0x90                         # -- Begin function s2b
s2b:                                    # @s2b
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-24(%rbp), %eax
	addl	$8, %eax
	movl	$9, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$1, -56(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %esi
	addl	$1, %esi
	callq	Balloc@PLT
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %ecx
	andl	$65535, %ecx                    # imm = 0xFFFF
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, (%rax)
	movl	-28(%rbp), %edx
	sarl	$16, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, 4(%rax)
	movl	$1, %ecx
	movl	$2, %eax
	cmpl	$0, %edx
	cmovnel	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	$9, -44(%rbp)
	movl	$9, %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_9
# %bb.5:
	movq	-16(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -16(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	movl	$10, %edx
	callq	multadd@PLT
	movq	%rax, -40(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	-20(%rbp), %eax
	jl	.LBB0_6
# %bb.8:
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movl	-32(%rbp), %ecx
	addl	$9, %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	movl	$10, %edx
	callq	multadd@PLT
	movq	%rax, -40(%rbp)
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_11
.LBB0_14:
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym s2b
	.addrsig_sym Balloc
	.addrsig_sym multadd