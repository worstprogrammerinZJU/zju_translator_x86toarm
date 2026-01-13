	.text
	.p2align	4, 0x90                         # -- Begin function pattand_l
pattand_l:                              # @pattand_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	getpattl@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	addl	$1, %esi
	addl	$2, %esi
	callq	newpatt@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -24(%rbp)
	movl	%eax, %edi
	movl	IChoice(%rip), %esi
	movl	-12(%rbp), %edx
	addl	$1, %edx
	addl	$1, %edx
	callq	setinst@PLT
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -24(%rbp)
	movl	%eax, %edi
	movl	IBackCommit(%rip), %esi
	movl	$2, %edx
	callq	setinst@PLT
	movq	-24(%rbp), %rdi
	movl	IFail(%rip), %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	setinstaux@PLT
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IChoice
	.p2align	2
IChoice:
	.long	0                               # 0x0
	.globl	IBackCommit
	.p2align	2
IBackCommit:
	.long	0                               # 0x0
	.globl	IFail
	.p2align	2
IFail:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pattand_l
	.addrsig_sym getpattl
	.addrsig_sym newpatt
	.addrsig_sym setinst
	.addrsig_sym addpatt
	.addrsig_sym setinstaux
	.addrsig_sym IChoice
	.addrsig_sym IBackCommit
	.addrsig_sym IFail