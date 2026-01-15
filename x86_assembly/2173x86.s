	.text
	.p2align	4, 0x90                         # -- Begin function stbi__build_fast_ac
stbi__build_fast_ac:                    # @stbi__build_fast_ac
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	FAST_BITS(%rip), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_14
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	$0, (%rax,%rcx,8)
	cmpl	$255, -24(%rbp)
	jge	.LBB0_12
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	sarl	$4, %eax
	andl	$15, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB0_11
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	cmpl	FAST_BITS(%rip), %eax
	jg	.LBB0_11
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	movl	-40(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	FAST_BITS(%rip), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	subl	$1, %ecx
	andl	%ecx, %eax
	movl	FAST_BITS(%rip), %ecx
	subl	-36(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %ecx
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	addl	$1, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$-128, -44(%rbp)
	jl	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$127, -44(%rbp)
	jg	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	shll	$8, %eax
	movl	-32(%rbp), %ecx
	shll	$4, %ecx
	addl	%ecx, %eax
	movl	-40(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_14:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	FAST_BITS
	.p2align	2
FAST_BITS:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__build_fast_ac
	.addrsig_sym FAST_BITS