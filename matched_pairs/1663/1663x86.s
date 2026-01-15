	.text
	.p2align	4, 0x90                         # -- Begin function isoption
isoption:                               # @isoption
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB0_3
.LBB0_2:
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.LBB0_3:
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$45, %eax
	je	.LBB0_5
# %bb.4:
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_5:
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB0_8
# %bb.6:
	movq	-16(%rbp), %rdi
	addq	$2, %rdi
	movq	-32(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movl	$1, -4(%rbp)
	jmp	.LBB0_16
.LBB0_8:
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB0_10
# %bb.9:
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	cmpb	$0, -17(%rbp)
	jne	.LBB0_13
# %bb.12:
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_13:
	movq	-16(%rbp), %rdi
	movsbl	-17(%rbp), %esi
	callq	strchr@PLT
	cmpq	$0, %rax
	je	.LBB0_15
# %bb.14:
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_16
.LBB0_15:
	movl	$0, -4(%rbp)
.LBB0_16:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym isoption
	.addrsig_sym strcmp
	.addrsig_sym strchr