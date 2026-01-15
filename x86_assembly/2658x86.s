	.text
	.globl	pulseIn                         # -- Begin function pulseIn
	.p2align	4, 0x90
pulseIn:                                # @pulseIn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	UINT_MAX(%rip), %rdi
	callq	clockCyclesToMicroseconds@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	microsecondsToClockCycles@PLT
	movq	%rax, -32(%rbp)
	movb	$0, %al
	callq	xthal_get_ccount@PLT
	movq	%rax, -40(%rbp)
	cmpl	$0, -8(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	WAIT_FOR_PIN_STATE@PLT
	movl	-8(%rbp), %edi
	callq	WAIT_FOR_PIN_STATE@PLT
	movb	$0, %al
	callq	xthal_get_ccount@PLT
	movq	%rax, -48(%rbp)
	cmpl	$0, -8(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	WAIT_FOR_PIN_STATE@PLT
	movb	$0, %al
	callq	xthal_get_ccount@PLT
	movq	%rax, %rdi
	subq	-48(%rbp), %rdi
	callq	clockCyclesToMicroseconds@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.globl	UINT_MAX
	.p2align	3
UINT_MAX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clockCyclesToMicroseconds
	.addrsig_sym microsecondsToClockCycles
	.addrsig_sym xthal_get_ccount
	.addrsig_sym WAIT_FOR_PIN_STATE
	.addrsig_sym UINT_MAX