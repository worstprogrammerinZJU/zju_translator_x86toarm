	.text
	.p2align	4, 0x90                         # -- Begin function skip_shebang
skip_shebang:                           # @skip_shebang
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$2, %edx
	callq	strncmp@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	$10, %esi
	callq	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$35, %eax
	je	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_5:
	movq	-24(%rbp), %rdi
	addq	$1, %rdi
	movl	$10, %esi
	callq	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_10
# %bb.6:
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$35, %eax
	je	.LBB0_10
# %bb.7:
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_10
# %bb.8:
	movq	-24(%rbp), %rax
	movsbl	-1(%rax), %eax
	cmpl	$92, %eax
	jne	.LBB0_10
# %bb.9:
	movq	-24(%rbp), %rax
	movsbl	-2(%rax), %eax
	cmpl	$92, %eax
	jne	.LBB0_11
.LBB0_10:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_11:
	movq	-24(%rbp), %rdi
	addq	$1, %rdi
	movl	$10, %esi
	callq	strchr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_13
# %bb.12:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_14
.LBB0_13:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.LBB0_14:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"#!"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_shebang
	.addrsig_sym strncmp
	.addrsig_sym strchr