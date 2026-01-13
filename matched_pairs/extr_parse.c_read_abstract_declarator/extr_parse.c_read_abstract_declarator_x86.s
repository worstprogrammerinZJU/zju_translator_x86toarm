	.text
	.p2align	4, 0x90                         # -- Begin function read_abstract_declarator
read_abstract_declarator:               # @read_abstract_declarator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	DECL_CAST(%rip), %ecx
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, %rdi
	callq	read_declarator@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECL_CAST
	.p2align	2
DECL_CAST:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_abstract_declarator
	.addrsig_sym read_declarator
	.addrsig_sym DECL_CAST