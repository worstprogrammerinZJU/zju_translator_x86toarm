	.text
	.p2align	4, 0x90                         # -- Begin function diff
diff:                                   # @diff
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	cmp@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	Balloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_2:
	cmpl	$0, -44(%rbp)
	jge	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -44(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	$0, -44(%rbp)
.LBB0_5:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	20(%rax), %esi
	callq	Balloc@PLT
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movslq	-52(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -100(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -64(%rbp)
	movl	(%rax), %eax
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -80(%rbp)
	subl	(%rcx), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	andl	$65536, %eax                    # imm = 0x10000
	sarl	$16, %eax
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %ecx
	andl	$65535, %ecx                    # imm = 0xFFFF
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%ecx, (%rax)
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.LBB0_6
# %bb.8:
	jmp	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jae	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -64(%rbp)
	movl	(%rax), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	andl	$65536, %eax                    # imm = 0x10000
	sarl	$16, %eax
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %ecx
	andl	$65535, %ecx                    # imm = 0xFFFF
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%ecx, (%rax)
	jmp	.LBB0_9
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -96(%rbp)
	cmpl	$0, -4(%rax)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_13
	jmp	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_12
.LBB0_14:
	movl	-48(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_15:
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	FFFFFFFF
	.p2align	2
FFFFFFFF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym diff
	.addrsig_sym cmp
	.addrsig_sym Balloc