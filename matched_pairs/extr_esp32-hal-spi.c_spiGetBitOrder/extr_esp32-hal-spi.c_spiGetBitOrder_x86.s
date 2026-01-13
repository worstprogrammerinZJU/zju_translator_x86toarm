	.text
	.globl	spiGetBitOrder                  # -- Begin function spiGetBitOrder
	.p2align	4, 0x90
spiGetBitOrder:                         # @spiGetBitOrder
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	orl	4(%rcx), %eax
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig