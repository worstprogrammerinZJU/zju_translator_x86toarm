	.text
	.p2align	4, 0x90                         # -- Begin function job_hash_free
job_hash_free:                          # @job_hash_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	all_jobs(%rip), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	_get_job_hash_index@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	setne	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-25(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_5:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	all_jobs_used(%rip), %eax
	addl	$-1, %eax
	movl	%eax, all_jobs_used(%rip)
.LBB0_7:
	movl	all_jobs_used(%rip), %eax
	movl	all_jobs_cap(%rip), %ecx
	sarl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_9
# %bb.8:
	xorl	%edi, %edi
	callq	rehash@PLT
.LBB0_9:
	addq	$32, %rsp
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
	.addrsig_sym job_hash_free
	.addrsig_sym _get_job_hash_index
	.addrsig_sym rehash
	.addrsig_sym all_jobs
	.addrsig_sym all_jobs_used
	.addrsig_sym all_jobs_cap