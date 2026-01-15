	.text
	.p2align	4, 0x90                         # -- Begin function newpattfunc
newpattfunc:                            # @newpattfunc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	instsize@PLT
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	newpatt@PLT
	movq	%rax, -48(%rbp)
	movl	IFunc(%rip), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-12(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-48(%rbp), %rax
	movl	32(%rax), %edi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	memcpy@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IFunc
	.p2align	2
IFunc:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym newpattfunc
	.addrsig_sym instsize
	.addrsig_sym newpatt
	.addrsig_sym memcpy
	.addrsig_sym IFunc