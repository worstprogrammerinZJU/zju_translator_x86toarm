	.text
	.p2align	4, 0x90                         # -- Begin function maybe_enqueue_incoming_job
maybe_enqueue_incoming_job:             # @maybe_enqueue_incoming_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	enqueue_incoming_job@PLT
	jmp	.LBB0_3
.LBB0_2:
	movl	STATE_WANT_DATA(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STATE_WANT_DATA
	.p2align	2
STATE_WANT_DATA:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_enqueue_incoming_job
	.addrsig_sym enqueue_incoming_job
	.addrsig_sym STATE_WANT_DATA