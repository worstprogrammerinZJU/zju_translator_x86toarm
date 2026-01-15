	.text
	.globl	ledcSetup                       # -- Begin function ledcSetup
	.p2align	4, 0x90
ledcSetup:                              # @ledcSetup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$15, -12(%rbp)
	jle	.LBB0_2
# %bb.1:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-12(%rbp), %edi
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	movl	-28(%rbp), %esi
	callq	_ledcSetupTimerFreq@PLT
	movsd	%xmm0, -40(%rbp)
	movl	-12(%rbp), %edi
	movl	LOW(%rip), %esi
	callq	_ledcSetupChannel@PLT
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB0_3:
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LOW
	.p2align	2
LOW:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ledcSetupTimerFreq
	.addrsig_sym _ledcSetupChannel
	.addrsig_sym LOW