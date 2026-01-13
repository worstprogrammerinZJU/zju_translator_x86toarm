	.text
	.p2align	4, 0x90                         # -- Begin function any
any:                                    # @any
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movl	-52(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	UCHAR_MAX(%rip)
	movl	%eax, %esi
	addl	-16(%rbp), %esi
	addl	$1, %esi
	callq	newpatt@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	UCHAR_MAX(%rip), %eax
	jle	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -48(%rbp)
	movl	%eax, %edi
	movl	IAny(%rip), %esi
	movl	UCHAR_MAX(%rip), %ecx
	xorl	%edx, %edx
	callq	setinstaux@PLT
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	UCHAR_MAX(%rip), %ecx
	movl	-12(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_4
.LBB0_7:
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -48(%rbp)
	movl	%eax, %edi
	movl	IAny(%rip), %esi
	movl	-12(%rbp), %ecx
	xorl	%edx, %edx
	callq	setinstaux@PLT
	cmpq	$0, -24(%rbp)
	je	.LBB0_9
# %bb.8:
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_9:
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	UCHAR_MAX
	.p2align	2
UCHAR_MAX:
	.long	0                               # 0x0
	.globl	IAny
	.p2align	2
IAny:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym any
	.addrsig_sym newpatt
	.addrsig_sym setinstaux
	.addrsig_sym UCHAR_MAX
	.addrsig_sym IAny