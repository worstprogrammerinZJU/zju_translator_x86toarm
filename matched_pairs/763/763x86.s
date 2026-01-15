	.text
	.p2align	4, 0x90                         # -- Begin function _ledcSetupTimerFreq
_ledcSetupTimerFreq:                    # @_ledcSetupTimerFreq
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movb	$0, %al
	callq	getApbFrequency@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	cvtsi2sd	%eax, %xmm0
	divsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movl	$1, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	LEDC_DIV_NUM_HSTIMER0_V(%rip), %eax
	jle	.LBB0_4
# %bb.1:
	movl	-24(%rbp), %eax
	movl	$80, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	cvtsi2sd	%eax, %xmm0
	divsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	LEDC_DIV_NUM_HSTIMER0_V(%rip), %eax
	jle	.LBB0_3
# %bb.2:
	movl	LEDC_DIV_NUM_HSTIMER0_V(%rip), %eax
	movl	%eax, -28(%rbp)
.LBB0_3:
	movl	$0, -32(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	cmpl	$256, -28(%rbp)                 # imm = 0x100
	jge	.LBB0_6
# %bb.5:
	movl	$256, -28(%rbp)                 # imm = 0x100
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	movl	-4(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	_ledcSetupTimer@PLT
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	cvtsi2sd	%eax, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LEDC_DIV_NUM_HSTIMER0_V
	.p2align	2
LEDC_DIV_NUM_HSTIMER0_V:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ledcSetupTimerFreq
	.addrsig_sym getApbFrequency
	.addrsig_sym _ledcSetupTimer
	.addrsig_sym LEDC_DIV_NUM_HSTIMER0_V