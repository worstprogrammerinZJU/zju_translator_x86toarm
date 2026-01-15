	.text
	.p2align	4, 0x90                         # -- Begin function Balloc
Balloc:                                 # @Balloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	Kmax(%rip), %eax
	jg	.LBB0_3
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_4
.LBB0_3:
	movl	-12(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cltq
	shlq	$2, %rax
	addq	$32, %rax
	movl	%eax, %edi
	callq	MALLOC@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB0_4:
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Kmax
	.p2align	2
Kmax:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Balloc
	.addrsig_sym MALLOC
	.addrsig_sym Kmax