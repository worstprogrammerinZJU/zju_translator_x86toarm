	.text
	.p2align	4, 0x90                         # -- Begin function newcharset
newcharset:                             # @newcharset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	CHARSETINSTSIZE(%rip), %esi
	callq	newpatt@PLT
	movq	%rax, -16(%rbp)
	movl	ISet(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	i(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	i(%rip), %rcx
	movq	$0, (%rax,%rcx,8)
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	loopset@PLT
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CHARSETINSTSIZE
	.p2align	2
CHARSETINSTSIZE:
	.long	0                               # 0x0
	.globl	ISet
	.p2align	2
ISet:
	.long	0                               # 0x0
	.globl	i
	.p2align	3
i:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym newcharset
	.addrsig_sym newpatt
	.addrsig_sym loopset
	.addrsig_sym CHARSETINSTSIZE
	.addrsig_sym ISet
	.addrsig_sym i