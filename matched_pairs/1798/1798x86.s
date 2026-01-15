	.text
	.globl	option_find_str                 # -- Begin function option_find_str
	.p2align	4, 0x90
option_find_str:                        # @option_find_str
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	option_find@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	cmpq	$0, -32(%rbp)
	je	.LBB0_4
# %bb.3:
	movl	stderr(%rip), %edi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
.LBB0_4:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
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
	.asciz	"%s: Using default '%s'\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym fprintf
	.addrsig_sym stderr