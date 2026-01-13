	.text
	.p2align	4, 0x90                         # -- Begin function adddyncaptures
adddyncaptures:                         # @adddyncaptures
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	Cruntime(%rip), %rcx
	movb	%al, -29(%rbp)                  # 1-byte Spill
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	sete	%al
	movb	%al, -29(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-29(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	$1, -28(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rcx, 16(%rax)
	movq	Cruntime(%rip), %rcx
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rcx, (%rax)
	movl	-24(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 12(%rax)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movq	Cclose(%rip), %rcx
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rcx, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Cruntime
	.p2align	3
Cruntime:
	.quad	0                               # 0x0
	.globl	Cclose
	.p2align	3
Cclose:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym adddyncaptures
	.addrsig_sym assert
	.addrsig_sym Cruntime
	.addrsig_sym Cclose