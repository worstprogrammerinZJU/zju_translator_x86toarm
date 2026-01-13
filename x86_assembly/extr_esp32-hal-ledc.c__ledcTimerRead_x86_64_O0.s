	.text
	.p2align	4, 0x90                         # -- Begin function _ledcTimerRead
_ledcTimerRead:                         # @_ledcTimerRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -32(%rbp)
	movb	$0, %al
	callq	LEDC_MUTEX_LOCK@PLT
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	LEDC_TIMER@PLT
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	LEDC_TIMER@PLT
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	LEDC_TIMER@PLT
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -24(%rbp)
	movb	$0, %al
	callq	LEDC_MUTEX_UNLOCK@PLT
	movl	$1000000, -84(%rbp)             # imm = 0xF4240
	cmpl	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	getApbFrequency@PLT
	movl	%eax, -84(%rbp)
.LBB0_2:
	movl	-84(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	-20(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	cvtsi2sd	%eax, %xmm0
	cvtsi2sdq	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ledcTimerRead
	.addrsig_sym LEDC_MUTEX_LOCK
	.addrsig_sym LEDC_TIMER
	.addrsig_sym LEDC_MUTEX_UNLOCK
	.addrsig_sym getApbFrequency