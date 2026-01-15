	.text
	.globl	decNumberFromInt32              # -- Begin function decNumberFromInt32
	.p2align	4, 0x90
decNumberFromInt32:                     # @decNumberFromInt32
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movl	-12(%rbp), %eax
	cmpl	BADINT(%rip), %eax
	jne	.LBB0_4
# %bb.3:
	movl	$-2147483648, -16(%rbp)         # imm = 0x80000000
	jmp	.LBB0_5
.LBB0_4:
	xorl	%eax, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	decNumberFromUInt32@PLT
	cmpl	$0, -12(%rbp)
	jge	.LBB0_8
# %bb.7:
	movl	DECNEG(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_8:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	BADINT
	.p2align	2
BADINT:
	.long	0                               # 0x0
	.globl	DECNEG
	.p2align	2
DECNEG:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberFromUInt32
	.addrsig_sym BADINT
	.addrsig_sym DECNEG