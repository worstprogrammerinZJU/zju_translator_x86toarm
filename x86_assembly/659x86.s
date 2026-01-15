	.text
	.globl	decNumberFromUInt32             # -- Begin function decNumberFromUInt32
	.p2align	4, 0x90
decNumberFromUInt32:                    # @decNumberFromUInt32
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	decNumberZero@PLT
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	jle	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movl	DECDPUNMAX(%rip), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	cqto
	idivq	%rcx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	DECDPUNMAX(%rip), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	cqto
	idivq	%rcx
	movq	%rax, -24(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	movl	%eax, %esi
	callq	decGetDigits@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECDPUNMAX
	.p2align	2
DECDPUNMAX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberZero
	.addrsig_sym decGetDigits
	.addrsig_sym DECDPUNMAX