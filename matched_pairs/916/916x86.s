	.text
	.p2align	4, 0x90                         # -- Begin function readc_file
readc_file:                             # @readc_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	getc@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	EOF(%rip), %eax
	jne	.LBB0_6
# %bb.1:
	movq	-8(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$10, %eax
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	EOF(%rip), %eax
	jne	.LBB0_4
.LBB0_3:
	movl	EOF(%rip), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movl	$10, %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_5:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -12(%rbp)
	jmp	.LBB0_11
.LBB0_6:
	cmpl	$13, -12(%rbp)
	jne	.LBB0_10
# %bb.7:
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	getc@PLT
	movl	%eax, -16(%rbp)
	cmpl	$10, -16(%rbp)
	je	.LBB0_9
# %bb.8:
	movl	-16(%rbp), %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	callq	ungetc@PLT
.LBB0_9:
	movl	$10, -12(%rbp)
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, (%rax)
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym readc_file
	.addrsig_sym getc
	.addrsig_sym ungetc
	.addrsig_sym EOF