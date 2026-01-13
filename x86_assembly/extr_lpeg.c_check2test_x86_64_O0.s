	.text
	.p2align	4, 0x90                         # -- Begin function check2test
check2test:                             # @check2test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	ischeck@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	ITestAny(%rip), %rdx
	subq	IAny(%rip), %rdx
	movq	-8(%rbp), %rax
	movslq	4(%rax), %rcx
	addq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 4(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ITestAny
	.p2align	3
ITestAny:
	.quad	0                               # 0x0
	.globl	IAny
	.p2align	3
IAny:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check2test
	.addrsig_sym assert
	.addrsig_sym ischeck
	.addrsig_sym ITestAny
	.addrsig_sym IAny