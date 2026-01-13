	.text
	.p2align	4, 0x90                         # -- Begin function conntickat
conntickat:                             # @conntickat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	INT64_MAX(%rip), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	conn_waiting@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	SAFETY_MARGIN(%rip), %eax
	movl	%eax, -20(%rbp)
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	has_reserved_job@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	connsoonestjob@PLT
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	nanoseconds@PLT
	movl	%eax, %ecx
	movl	-32(%rbp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$1, -24(%rbp)
.LBB0_4:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jl	.LBB0_6
# %bb.5:
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
                                        # kill: def $eax killed $eax killed $rax
	imull	$1000000000, %eax, %esi         # imm = 0x3B9ACA00
	callq	min@PLT
	movl	%eax, -28(%rbp)
	movl	$1, -24(%rbp)
.LBB0_6:
	cmpl	$0, -24(%rbp)
	je	.LBB0_8
# %bb.7:
	movb	$0, %al
	callq	nanoseconds@PLT
	addl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	$0, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	INT64_MAX
	.p2align	2
INT64_MAX:
	.long	0                               # 0x0
	.globl	SAFETY_MARGIN
	.p2align	2
SAFETY_MARGIN:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conntickat
	.addrsig_sym conn_waiting
	.addrsig_sym has_reserved_job
	.addrsig_sym connsoonestjob
	.addrsig_sym nanoseconds
	.addrsig_sym min
	.addrsig_sym INT64_MAX
	.addrsig_sym SAFETY_MARGIN