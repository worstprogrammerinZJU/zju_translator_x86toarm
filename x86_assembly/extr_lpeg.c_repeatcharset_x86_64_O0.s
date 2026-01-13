	.text
	.p2align	4, 0x90                         # -- Begin function repeatcharset
repeatcharset:                          # @repeatcharset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %eax
	imull	-20(%rbp), %eax
	movslq	%eax, %rsi
	addq	CHARSETINSTSIZE(%rip), %rsi
	callq	newpatt@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-40(%rbp), %rdi
	movl	ISpan(%rip), %esi
	xorl	%edx, %edx
	callq	setinst@PLT
	movq	k(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	k(%rip), %rcx
	movl	(%rax,%rcx,4), %esi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	k(%rip), %rcx
	movl	%esi, (%rax,%rcx,4)
	callq	loopset@PLT
	movq	-40(%rbp), %rdi
	callq	correctset@PLT
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CHARSETINSTSIZE
	.p2align	3
CHARSETINSTSIZE:
	.quad	0                               # 0x0
	.globl	ISpan
	.p2align	2
ISpan:
	.long	0                               # 0x0
	.globl	k
	.p2align	3
k:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym repeatcharset
	.addrsig_sym newpatt
	.addrsig_sym addpatt
	.addrsig_sym setinst
	.addrsig_sym loopset
	.addrsig_sym correctset
	.addrsig_sym CHARSETINSTSIZE
	.addrsig_sym ISpan
	.addrsig_sym k