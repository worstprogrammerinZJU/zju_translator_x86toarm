	.text
	.globl	job_free                        # -- Begin function job_free
	.p2align	4, 0x90
job_free:                               # @job_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_4
# %bb.1:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	TUBE_ASSIGN@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	Copy(%rip), %rax
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rdi
	callq	job_hash_free@PLT
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:
	movq	-8(%rbp), %rdi
	callq	free@PLT
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym TUBE_ASSIGN
	.addrsig_sym job_hash_free
	.addrsig_sym free
	.addrsig_sym Copy