	.text
	.p2align	4, 0x90                         # -- Begin function do_stats
do_stats:                               # @do_stats
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%esi, %esi
	callq	*%rax
	addl	$16, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %edi
	callq	allocate_job@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movl	MSG_OUT_OF_MEMORY(%rip), %esi
	callq	reply_serr@PLT
	jmp	.LBB0_5
.LBB0_2:
	movl	Copy(%rip), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rdi
	movl	-32(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%ecx, (%rax)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	movl	MSG_INTERNAL_ERROR(%rip), %esi
	callq	reply_serr@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rdi
	movl	STATE_SEND_JOB(%rip), %esi
	movl	-28(%rbp), %ecx
	subl	$2, %ecx
	leaq	.L.str(%rip), %rdx
	callq	reply_line@PLT
.LBB0_5:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MSG_OUT_OF_MEMORY
	.p2align	2
MSG_OUT_OF_MEMORY:
	.long	0                               # 0x0
	.globl	Copy
	.p2align	2
Copy:
	.long	0                               # 0x0
	.globl	MSG_INTERNAL_ERROR
	.p2align	2
MSG_INTERNAL_ERROR:
	.long	0                               # 0x0
	.globl	STATE_SEND_JOB
	.p2align	2
STATE_SEND_JOB:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OK %d\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_stats
	.addrsig_sym allocate_job
	.addrsig_sym reply_serr
	.addrsig_sym reply_line
	.addrsig_sym MSG_OUT_OF_MEMORY
	.addrsig_sym Copy
	.addrsig_sym MSG_INTERNAL_ERROR
	.addrsig_sym STATE_SEND_JOB