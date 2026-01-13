	.text
	.p2align	4, 0x90                         # -- Begin function Bfree
Bfree:                                  # @Bfree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_5
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	Kmax(%rip), %rax
	jbe	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rdi
	callq	free@PLT
	jmp	.LBB0_4
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rdx, (%rax,%rcx,8)
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Kmax
	.p2align	3
Kmax:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Bfree
	.addrsig_sym free
	.addrsig_sym Kmax