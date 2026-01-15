	.text
	.p2align	4, 0x90                         # -- Begin function lo0bits
lo0bits:                                # @lo0bits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$7, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.1:
	movl	-32(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_3:
	movl	-32(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.4:
	movl	-32(%rbp), %ecx
	sarl	$1, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_5:
	movl	-32(%rbp), %ecx
	sarl	$2, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$2, -4(%rbp)
	jmp	.LBB0_19
.LBB0_6:
	movl	$0, -28(%rbp)
	movl	-32(%rbp), %eax
	andl	$65535, %eax                    # imm = 0xFFFF
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movl	$16, -28(%rbp)
	movl	-32(%rbp), %eax
	sarl	$16, %eax
	movl	%eax, -32(%rbp)
.LBB0_8:
	movl	-32(%rbp), %eax
	andl	$255, %eax
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:
	movl	-28(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -32(%rbp)
.LBB0_10:
	movl	-32(%rbp), %eax
	andl	$15, %eax
	cmpl	$0, %eax
	jne	.LBB0_12
# %bb.11:
	movl	-28(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -32(%rbp)
.LBB0_12:
	movl	-32(%rbp), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	jne	.LBB0_14
# %bb.13:
	movl	-28(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sarl	$2, %eax
	movl	%eax, -32(%rbp)
.LBB0_14:
	movl	-32(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB0_18
# %bb.15:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB0_17
# %bb.16:
	movl	$32, -4(%rbp)
	jmp	.LBB0_19
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_19:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lo0bits