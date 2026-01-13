	.text
	.p2align	4, 0x90                         # -- Begin function fmt_job_stats
fmt_job_stats:                          # @fmt_job_stats
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	$0, -76(%rbp)
	movb	$0, %al
	callq	nanoseconds@PLT
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	Reserved(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	Delayed(%rip), %rax
	jne	.LBB0_3
.LBB0_2:
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	subl	-68(%rbp), %eax
	movl	$1000000000, %ecx               # imm = 0x3B9ACA00
	cltd
	idivl	%ecx
	movl	%eax, -72(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movl	$0, -72(%rbp)
.LBB0_4:
	movq	-64(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB0_6
# %bb.5:
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -76(%rbp)
.LBB0_6:
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	STATS_JOB_FMT(%rip), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-64(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -112(%rbp)                # 4-byte Spill
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
	movq	-64(%rbp), %rdi
	callq	job_state@PLT
	movq	-128(%rbp), %rdi                # 8-byte Reload
	movq	-120(%rbp), %rsi                # 8-byte Reload
	movl	-112(%rbp), %ecx                # 4-byte Reload
	movl	-108(%rbp), %r8d                # 4-byte Reload
	movl	%eax, %r9d
	movq	-64(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movl	-68(%rbp), %eax
	movq	-64(%rbp), %rdx
	subl	12(%rdx), %eax
	movl	$1000000000, %r10d              # imm = 0x3B9ACA00
	cltd
	idivl	%r10d
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	movl	$1000000000, %r10d              # imm = 0x3B9ACA00
	cltd
	idivl	%r10d
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movq	-64(%rbp), %rax
	movl	20(%rax), %eax
	movl	$1000000000, %r10d              # imm = 0x3B9ACA00
	cltd
	idivl	%r10d
	movq	-104(%rbp), %rdx                # 8-byte Reload
	movl	%eax, %r13d
	movl	-72(%rbp), %r12d
	movl	-76(%rbp), %r15d
	movq	-64(%rbp), %rax
	movl	40(%rax), %r14d
	movq	-64(%rbp), %rax
	movl	36(%rax), %ebx
	movq	-64(%rbp), %rax
	movl	32(%rax), %r11d
	movq	-64(%rbp), %rax
	movl	28(%rax), %r10d
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movl	-92(%rbp), %eax                 # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-88(%rbp), %eax                 # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-84(%rbp), %eax                 # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	-80(%rbp), %eax                 # 4-byte Reload
	movl	%r13d, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%r15d, 40(%rsp)
	movl	%r14d, 48(%rsp)
	movl	%ebx, 56(%rsp)
	movl	%r11d, 64(%rsp)
	movl	%r10d, 72(%rsp)
	movl	%eax, 80(%rsp)
	callq	snprintf@PLT
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Reserved
	.p2align	3
Reserved:
	.quad	0                               # 0x0
	.globl	Delayed
	.p2align	3
Delayed:
	.quad	0                               # 0x0
	.globl	STATS_JOB_FMT
	.p2align	3
STATS_JOB_FMT:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmt_job_stats
	.addrsig_sym nanoseconds
	.addrsig_sym snprintf
	.addrsig_sym job_state
	.addrsig_sym Reserved
	.addrsig_sym Delayed
	.addrsig_sym STATS_JOB_FMT