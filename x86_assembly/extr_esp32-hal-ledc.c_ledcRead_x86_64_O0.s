	.text
	.globl	ledcRead                        # -- Begin function ledcRead
	.p2align	4, 0x90
ledcRead:                               # @ledcRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	cmpl	$15, -8(%rbp)
	jle	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	LEDC(%rip), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	-8(%rbp), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movl	-8(%rbp), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movslq	%edx, %rcx
	movl	(%rax,%rcx,4), %eax
	sarl	$4, %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LEDC
	.p2align	3
LEDC:
	.zero	8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym LEDC