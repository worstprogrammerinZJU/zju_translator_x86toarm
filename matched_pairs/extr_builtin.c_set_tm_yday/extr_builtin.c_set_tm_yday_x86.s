	.text
	.p2align	4, 0x90                         # -- Begin function set_tm_yday
set_tm_yday:                            # @set_tm_yday
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	addl	$1900, %eax                     # imm = 0x76C
	movl	%eax, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jle	.LBB0_5
# %bb.1:
	movl	-16(%rbp), %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB0_3
# %bb.2:
	movl	-16(%rbp), %eax
	movl	$100, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB0_4
.LBB0_3:
	movl	-16(%rbp), %eax
	movl	$400, %ecx                      # imm = 0x190
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB0_5
.LBB0_4:
	movl	$1, -20(%rbp)
.LBB0_5:
	cmpl	$0, -12(%rbp)
	jge	.LBB0_7
# %bb.6:
	xorl	%eax, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB0_7:
	cmpl	$11, -12(%rbp)
	jle	.LBB0_9
# %bb.8:
	movl	-12(%rbp), %eax
	movl	$12, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -12(%rbp)
.LBB0_9:
	movslq	-12(%rbp), %rcx
	leaq	set_tm_yday.d(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	addl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	8(%rcx), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movb	$1, %al
	cmpl	12(%rdx), %ecx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_11
# %bb.10:
	movq	-8(%rbp), %rax
	cmpl	$367, 12(%rax)                  # imm = 0x16F
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_11:
	movb	-25(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	4
set_tm_yday.d:
	.long	0                               # 0x0
	.long	31                              # 0x1f
	.long	59                              # 0x3b
	.long	90                              # 0x5a
	.long	120                             # 0x78
	.long	151                             # 0x97
	.long	181                             # 0xb5
	.long	212                             # 0xd4
	.long	243                             # 0xf3
	.long	273                             # 0x111
	.long	304                             # 0x130
	.long	334                             # 0x14e
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_tm_yday
	.addrsig_sym assert
	.addrsig_sym set_tm_yday.d