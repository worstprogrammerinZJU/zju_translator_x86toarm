	.text
	.p2align	4, 0x90                         # -- Begin function multadd
multadd:                                # @multadd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	imull	-20(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, -36(%rbp)
	movl	-52(%rbp), %ecx
	andl	$65535, %ecx                    # imm = 0xFFFF
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -48(%rbp)
	movl	%ecx, (%rax)
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	cmpl	-32(%rbp), %eax
	jl	.LBB0_1
# %bb.3:
	cmpl	$0, -36(%rbp)
	je	.LBB0_7
# %bb.4:
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jl	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	addq	$1, %rsi
	callq	Balloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Bcopy@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Bfree@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_6:
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -32(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_7:
	movq	-16(%rbp), %rax
	addq	$64, %rsp
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
	.addrsig_sym multadd
	.addrsig_sym Balloc
	.addrsig_sym Bcopy
	.addrsig_sym Bfree