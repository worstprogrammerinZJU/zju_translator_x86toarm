	.text
	.globl	option_find_int                 # -- Begin function option_find_int
	.p2align	4, 0x90
option_find_int:                        # @option_find_int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	option_find@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-40(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	stderr(%rip), %edi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: Using default '%d'\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym atoi
	.addrsig_sym fprintf
	.addrsig_sym stderr