	.text
	.globl	ledcWriteTone                   # -- Begin function ledcWriteTone
	.p2align	4, 0x90
ledcWriteTone:                          # @ledcWriteTone
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	cmpl	$15, -12(%rbp)
	jle	.LBB0_2
# %bb.1:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_4
	jp	.LBB0_4
# %bb.3:
	movl	-12(%rbp), %edi
	xorl	%esi, %esi
	callq	ledcWrite@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	-12(%rbp), %edi
	movsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	movl	$10, %esi
	callq	_ledcSetupTimerFreq@PLT
	movsd	%xmm0, -32(%rbp)
	movl	-12(%rbp), %edi
	movl	$511, %esi                      # imm = 0x1FF
	callq	ledcWrite@PLT
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB0_5:
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ledcWrite
	.addrsig_sym _ledcSetupTimerFreq