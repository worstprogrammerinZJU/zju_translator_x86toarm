	.text
	.p2align	4, 0x90                         # -- Begin function fmt_stats_tube
fmt_stats_tube:                         # @fmt_stats_tube
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB0_2
# %bb.1:
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	nanoseconds@PLT
	movl	%eax, %ecx
	movl	-72(%rbp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	movl	$1000000000, %ecx               # imm = 0x3B9ACA00
	cltd
	idivl	%ecx
	movl	%eax, -68(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$0, -68(%rbp)
.LBB0_3:
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	STATS_TUBE_FMT(%rip), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-64(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	32(%rax), %r8d
	movq	-64(%rbp), %rax
	movl	48(%rax), %r9d
	movq	-64(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	movq	-64(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movq	-64(%rbp), %rax
	movl	20(%rax), %r13d
	movq	-64(%rbp), %rax
	movl	40(%rax), %r12d
	movq	-64(%rbp), %rax
	movl	36(%rax), %r15d
	movq	-64(%rbp), %rax
	movl	16(%rax), %r14d
	movq	-64(%rbp), %rax
	movl	12(%rax), %ebx
	movq	-64(%rbp), %rax
	movl	8(%rax), %r11d
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	$1000000000, %r10d              # imm = 0x3B9ACA00
	cltd
	idivl	%r10d
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movl	%eax, %r10d
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movl	-88(%rbp), %eax                 # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-84(%rbp), %eax                 # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-80(%rbp), %eax                 # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	-76(%rbp), %eax                 # 4-byte Reload
	movl	%r13d, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%r15d, 40(%rsp)
	movl	%r14d, 48(%rsp)
	movl	%ebx, 56(%rsp)
	movl	%r11d, 64(%rsp)
	movl	%r10d, 72(%rsp)
	movl	%eax, 80(%rsp)
	callq	snprintf@PLT
	addq	$152, %rsp
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
	.globl	STATS_TUBE_FMT
	.p2align	3
STATS_TUBE_FMT:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmt_stats_tube
	.addrsig_sym nanoseconds
	.addrsig_sym snprintf
	.addrsig_sym STATS_TUBE_FMT