	.text
	.p2align	4, 0x90                         # -- Begin function mult
mult:                                   # @mult
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB0_4
# %bb.3:
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB0_4:
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	Balloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jae	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movslq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movslq	-44(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB0_17
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)
	movl	(%rax), %eax
	movl	%eax, -108(%rbp)
	cmpl	$0, %eax
	je	.LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -112(%rbp)
.LBB0_12:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -56(%rbp)
	movl	(%rax), %eax
	imull	-108(%rbp), %eax
	movq	-96(%rbp), %rcx
	addl	(%rcx), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, -112(%rbp)
	movl	-116(%rbp), %ecx
	andl	$65535, %ecx                    # imm = 0xFFFF
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -96(%rbp)
	movl	%ecx, (%rax)
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.LBB0_12
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-112(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB0_9
.LBB0_17:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -48(%rbp)
	movb	%al, -117(%rbp)                 # 1-byte Spill
	jle	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -96(%rbp)
	cmpl	$0, -4(%rax)
	setne	%al
	xorb	$-1, %al
	movb	%al, -117(%rbp)                 # 1-byte Spill
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=1
	movb	-117(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_21
	jmp	.LBB0_23
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_22
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_18
.LBB0_23:
	movl	-48(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	addq	$128, %rsp
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
	.addrsig_sym mult
	.addrsig_sym Balloc