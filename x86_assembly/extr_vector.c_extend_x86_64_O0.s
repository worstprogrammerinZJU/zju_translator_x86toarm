	.text
	.p2align	4, 0x90                         # -- Begin function extend
extend:                                 # @extend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jg	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	addl	-12(%rbp), %edi
	callq	roundup@PLT
	movl	%eax, %edi
	movl	MIN_SIZE(%rip), %esi
	callq	max@PLT
	movl	%eax, -16(%rbp)
	movslq	-16(%rbp), %rax
	shlq	$3, %rax
	movl	%eax, %edi
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$3, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB0_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MIN_SIZE
	.p2align	2
MIN_SIZE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym extend
	.addrsig_sym max
	.addrsig_sym roundup
	.addrsig_sym malloc
	.addrsig_sym memcpy
	.addrsig_sym MIN_SIZE