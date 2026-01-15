	.text
	.p2align	4, 0x90                         # -- Begin function __spiTransferBytes
__spiTransferBytes:                     # @__spiTransferBytes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_20
.LBB0_2:
	cmpl	$64, -28(%rbp)
	jle	.LBB0_4
# %bb.3:
	movl	$64, -28(%rbp)
.LBB0_4:
	movl	-28(%rbp), %eax
	addl	$3, %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -36(%rbp)
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-120(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	memcpy@PLT
	jmp	.LBB0_7
.LBB0_6:
	movq	-120(%rbp), %rdi
	movl	-28(%rbp), %edx
	movl	$255, %esi
	callq	memset@PLT
.LBB0_7:
	movl	-28(%rbp), %ecx
	shll	$3, %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 16(%rax)
	movl	-28(%rbp), %ecx
	shll	$3, %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 12(%rax)
	movl	$0, -32(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movslq	-32(%rbp), %rax
	movl	-112(%rbp,%rax,4), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_8
.LBB0_11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 8(%rax)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 8(%rax)
	je	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_12
.LBB0_14:
	cmpq	$0, -24(%rbp)
	je	.LBB0_20
# %bb.15:
	movl	$0, -32(%rbp)
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movslq	-32(%rbp), %rax
	movl	%ecx, -112(%rbp,%rax,4)
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_16
.LBB0_19:
	movq	-24(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	memcpy@PLT
.LBB0_20:
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __spiTransferBytes
	.addrsig_sym memcpy
	.addrsig_sym memset