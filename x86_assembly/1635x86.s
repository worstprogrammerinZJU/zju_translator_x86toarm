	.text
	.p2align	4, 0x90                         # -- Begin function tocharset
tocharset:                              # @tocharset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	ischeck@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	callq	fillcharset@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	sizei@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	IEnd(%rip), %rax
	jne	.LBB0_4
# %bb.2:
	movq	-8(%rbp), %rdi
	callq	op_step@PLT
	cmpl	$1, %eax
	jne	.LBB0_4
# %bb.3:
	movl	ISCHARSET(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_5
.LBB0_4:
	movl	VALIDSTARTS(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_5:
	jmp	.LBB0_7
.LBB0_6:
	movl	NOINFO(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_7:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IEnd
	.p2align	3
IEnd:
	.quad	0                               # 0x0
	.globl	ISCHARSET
	.p2align	2
ISCHARSET:
	.long	0                               # 0x0
	.globl	VALIDSTARTS
	.p2align	2
VALIDSTARTS:
	.long	0                               # 0x0
	.globl	NOINFO
	.p2align	2
NOINFO:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tocharset
	.addrsig_sym ischeck
	.addrsig_sym fillcharset
	.addrsig_sym sizei
	.addrsig_sym op_step
	.addrsig_sym IEnd
	.addrsig_sym ISCHARSET
	.addrsig_sym VALIDSTARTS
	.addrsig_sym NOINFO