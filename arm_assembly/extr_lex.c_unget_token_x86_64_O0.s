	.text
	.globl	unget_token                     # -- Begin function unget_token
	.p2align	4, 0x90
unget_token:                            # @unget_token
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TEOF(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movl	buffers(%rip), %edi
	callq	vec_tail@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.quad	0                               # 0x0
	.globl	buffers
	.p2align	2
buffers:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_tail
	.addrsig_sym vec_push
	.addrsig_sym TEOF
	.addrsig_sym buffers