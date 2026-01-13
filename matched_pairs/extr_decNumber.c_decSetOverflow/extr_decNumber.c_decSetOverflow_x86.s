	.text
	.p2align	4, 0x90                         # -- Begin function decSetOverflow
decSetOverflow:                         # @decSetOverflow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	DECNEG(%rip), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	ISZERO@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.1:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	-36(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -36(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB0_5
# %bb.4:
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	DEC_Clamped(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB0_5:
	jmp	.LBB0_20
.LBB0_6:
	movq	-8(%rbp), %rdi
	callq	decNumberZero@PLT
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_15
# %bb.21:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_7:
	movl	$1, -28(%rbp)
	jmp	.LBB0_16
.LBB0_8:
	movl	$1, -28(%rbp)
	jmp	.LBB0_16
.LBB0_9:
	cmpl	$0, -32(%rbp)
	je	.LBB0_11
# %bb.10:
	movl	$1, -28(%rbp)
.LBB0_11:
	jmp	.LBB0_16
.LBB0_12:
	cmpl	$0, -32(%rbp)
	jne	.LBB0_14
# %bb.13:
	movl	$1, -28(%rbp)
.LBB0_14:
	jmp	.LBB0_16
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	cmpl	$0, -28(%rbp)
	je	.LBB0_18
# %bb.17:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	decSetMaxValue@PLT
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_19
.LBB0_18:
	movl	-32(%rbp), %ecx
	orl	DECINF(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_19:
	movl	DEC_Overflow(%rip), %ecx
	orl	DEC_Inexact(%rip), %ecx
	orl	DEC_Rounded(%rip), %ecx
	movq	-24(%rbp), %rax
	orl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB0_20:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
                                        # -- End function
	.bss
	.globl	DECNEG
	.p2align	2
DECNEG:
	.long	0                               # 0x0
	.globl	DEC_Clamped
	.p2align	2
DEC_Clamped:
	.long	0                               # 0x0
	.globl	DECINF
	.p2align	2
DECINF:
	.long	0                               # 0x0
	.globl	DEC_Overflow
	.p2align	2
DEC_Overflow:
	.long	0                               # 0x0
	.globl	DEC_Inexact
	.p2align	2
DEC_Inexact:
	.long	0                               # 0x0
	.globl	DEC_Rounded
	.p2align	2
DEC_Rounded:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decSetOverflow
	.addrsig_sym ISZERO
	.addrsig_sym decNumberZero
	.addrsig_sym decSetMaxValue
	.addrsig_sym DECNEG
	.addrsig_sym DEC_Clamped
	.addrsig_sym DECINF
	.addrsig_sym DEC_Overflow
	.addrsig_sym DEC_Inexact
	.addrsig_sym DEC_Rounded