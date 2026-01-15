	.text
	.globl	walwrite                        # -- Begin function walwrite
	.p2align	4, 0x90
walwrite:                               # @walwrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_11
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, (%rax)
	jg	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	usenext@PLT
	cmpq	$0, %rax
	je	.LBB0_8
.LBB0_4:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	filewrjobshort@PLT
	movl	%eax, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	filewrjobfull@PLT
	movl	%eax, -28(%rbp)
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	cmpl	$0, -28(%rbp)
	jne	.LBB0_10
# %bb.9:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	filewclose@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB0_10:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usenext
	.addrsig_sym filewrjobshort
	.addrsig_sym filewrjobfull
	.addrsig_sym filewclose