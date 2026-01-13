	.text
	.p2align	4, 0x90                         # -- Begin function conn_want_command
conn_want_command:                      # @conn_want_command
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$114, %esi
	callq	epollq_add@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_3
# %bb.1:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	cmpq	Copy(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	job_free@PLT
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movl	STATE_WANT_COMMAND(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Copy
	.p2align	3
Copy:
	.quad	0                               # 0x0
	.globl	STATE_WANT_COMMAND
	.p2align	2
STATE_WANT_COMMAND:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conn_want_command
	.addrsig_sym epollq_add
	.addrsig_sym job_free
	.addrsig_sym Copy
	.addrsig_sym STATE_WANT_COMMAND