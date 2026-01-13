	.text
	.globl	srv_acquire_wal                 # -- Begin function srv_acquire_wal
	.p2align	4, 0x90
srv_acquire_wal:                        # @srv_acquire_wal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_6
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	waldirlock@PLT
	cmpl	$0, %eax
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	twarnx@PLT
	movl	$10, %edi
	callq	exit@PLT
.LBB0_3:
	leaq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	walinit@PLT
	movq	-8(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	prot_replay@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB0_5
# %bb.4:
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	twarnx@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed to lock wal dir %s"
.L.str.1:
	.asciz	"failed to replay log"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym waldirlock
	.addrsig_sym twarnx
	.addrsig_sym exit
	.addrsig_sym walinit
	.addrsig_sym prot_replay