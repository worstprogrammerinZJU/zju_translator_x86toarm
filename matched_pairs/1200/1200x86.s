	.text
	.p2align	4, 0x90                         # -- Begin function store_job
store_job:                              # @store_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	_get_job_hash_index@PLT
	movl	%eax, -12(%rbp)
	movq	all_jobs(%rip), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rdx
	movq	all_jobs(%rip), %rax
	movslq	-12(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	all_jobs_used(%rip), %eax
	addl	$1, %eax
	movl	%eax, all_jobs_used(%rip)
	movl	all_jobs_used(%rip), %eax
	movl	all_jobs_cap(%rip), %ecx
	shll	$2, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_2
# %bb.1:
	movl	$1, %edi
	callq	rehash@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	all_jobs
	.p2align	3
all_jobs:
	.quad	0
	.globl	all_jobs_used
	.p2align	2
all_jobs_used:
	.long	0                               # 0x0
	.globl	all_jobs_cap
	.p2align	2
all_jobs_cap:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym store_job
	.addrsig_sym _get_job_hash_index
	.addrsig_sym rehash
	.addrsig_sym all_jobs
	.addrsig_sym all_jobs_used
	.addrsig_sym all_jobs_cap