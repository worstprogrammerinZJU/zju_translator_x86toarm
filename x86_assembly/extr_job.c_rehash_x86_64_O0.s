	.text
	.p2align	4, 0x90                         # -- Begin function rehash
rehash:                                 # @rehash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	all_jobs(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	all_jobs_cap(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	all_jobs_used(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	cur_prime(%rip), %eax
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %edx
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -48(%rbp)
	movl	cur_prime(%rip), %eax
	addl	-48(%rbp), %eax
	cmpl	NUM_PRIMES(%rip), %eax
	jl	.LBB0_2
# %bb.1:
	jmp	.LBB0_18
.LBB0_2:
	movl	cur_prime(%rip), %eax
	addl	-48(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB0_4
# %bb.3:
	jmp	.LBB0_18
.LBB0_4:
	cmpl	$0, -4(%rbp)
	je	.LBB0_7
# %bb.5:
	cmpl	$0, hash_table_was_oom(%rip)
	je	.LBB0_7
# %bb.6:
	jmp	.LBB0_18
.LBB0_7:
	movl	-48(%rbp), %eax
	addl	cur_prime(%rip), %eax
	movl	%eax, cur_prime(%rip)
	movq	primes(%rip), %rax
	movslq	cur_prime(%rip), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, all_jobs_cap(%rip)
	movq	all_jobs_cap(%rip), %rdi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, all_jobs(%rip)
	cmpq	$0, all_jobs(%rip)
	jne	.LBB0_9
# %bb.8:
	movq	all_jobs_cap(%rip), %rsi
	leaq	.L.str(%rip), %rdi
	callq	twarnx@PLT
	movl	$1, hash_table_was_oom(%rip)
	movl	-44(%rbp), %eax
	movl	%eax, cur_prime(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, all_jobs(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, all_jobs_cap(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, all_jobs_used(%rip)
	jmp	.LBB0_18
.LBB0_9:
	movq	$0, all_jobs_used(%rip)
	movl	$0, hash_table_was_oom(%rip)
	movq	$0, -40(%rbp)
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB0_16
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rdi
	callq	store_job@PLT
	jmp	.LBB0_12
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_10
.LBB0_16:
	movq	-16(%rbp), %rax
	cmpq	all_jobs_init(%rip), %rax
	je	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rdi
	callq	free@PLT
.LBB0_18:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	all_jobs
	.p2align	3
all_jobs:
	.quad	0
	.globl	all_jobs_cap
	.p2align	3
all_jobs_cap:
	.quad	0                               # 0x0
	.globl	all_jobs_used
	.p2align	3
all_jobs_used:
	.quad	0                               # 0x0
	.globl	cur_prime
	.p2align	2
cur_prime:
	.long	0                               # 0x0
	.globl	NUM_PRIMES
	.p2align	2
NUM_PRIMES:
	.long	0                               # 0x0
	.globl	hash_table_was_oom
	.p2align	2
hash_table_was_oom:
	.long	0                               # 0x0
	.globl	primes
	.p2align	3
primes:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Failed to allocate %zu new hash buckets"
	.bss
	.globl	all_jobs_init
	.p2align	3
all_jobs_init:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rehash
	.addrsig_sym calloc
	.addrsig_sym twarnx
	.addrsig_sym store_job
	.addrsig_sym free
	.addrsig_sym all_jobs
	.addrsig_sym all_jobs_cap
	.addrsig_sym all_jobs_used
	.addrsig_sym cur_prime
	.addrsig_sym NUM_PRIMES
	.addrsig_sym hash_table_was_oom
	.addrsig_sym primes
	.addrsig_sym all_jobs_init