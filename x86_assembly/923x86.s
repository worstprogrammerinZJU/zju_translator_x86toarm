	.text
	.globl	unreadc                         # -- Begin function unreadc
	.p2align	4, 0x90
unreadc:                                # @unreadc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	EOF(%rip), %eax
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_5
.LBB0_2:
	movl	files(%rip), %edi
	callq	vec_tail@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	cmpq	$2, %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, (%rsi)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	cmpl	$10, -4(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 20(%rax)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 16(%rax)
.LBB0_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.long	0                               # 0x0
	.globl	files
	.p2align	2
files:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_tail
	.addrsig_sym assert
	.addrsig_sym EOF
	.addrsig_sym files