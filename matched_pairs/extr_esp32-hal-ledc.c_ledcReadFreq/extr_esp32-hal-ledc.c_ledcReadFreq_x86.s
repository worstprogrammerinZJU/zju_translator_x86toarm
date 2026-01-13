	.text
	.globl	ledcReadFreq                    # -- Begin function ledcReadFreq
	.p2align	4, 0x90
ledcReadFreq:                           # @ledcReadFreq
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	ledcRead@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-12(%rbp), %edi
	callq	_ledcTimerRead@PLT
	movsd	%xmm0, -8(%rbp)
.LBB0_3:
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ledcRead
	.addrsig_sym _ledcTimerRead