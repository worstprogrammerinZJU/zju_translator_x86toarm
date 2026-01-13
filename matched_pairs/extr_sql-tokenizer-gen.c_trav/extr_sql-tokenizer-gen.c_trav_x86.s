	.text
	.globl	trav                            # -- Begin function trav
	.p2align	4, 0x90
trav:                                   # @trav
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	GPOINTER_TO_INT@PLT
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_2:
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rdx
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	FALSE(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	FALSE(%rip), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	","
.L.str.1:
	.asciz	"\n\t%d /* %s */"
	.bss
	.globl	FALSE
	.p2align	3
FALSE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym GPOINTER_TO_INT
	.addrsig_sym printf
	.addrsig_sym FALSE