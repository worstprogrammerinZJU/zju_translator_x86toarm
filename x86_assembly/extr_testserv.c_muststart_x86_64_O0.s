	.text
	.p2align	4, 0x90                         # -- Begin function muststart
muststart:                              # @muststart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movb	$0, %al
	callq	fork@PLT
	movl	%eax, srvpid(%rip)
	cmpl	$0, srvpid(%rip)
	jge	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_2:
	cmpl	$0, srvpid(%rip)
	jle	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	srvpid(%rip), %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$100000, %edi                   # imm = 0x186A0
	callq	usleep@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	$0, (%rsp)
	callq	execlp@PLT
.LBB0_5:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	srvpid
	.p2align	2
srvpid:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fork"
.L.str.1:
	.asciz	"%s %s %s %s %s\n"
.L.str.2:
	.asciz	"start server pid=%d\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym muststart
	.addrsig_sym fork
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym printf
	.addrsig_sym usleep
	.addrsig_sym execlp
	.addrsig_sym srvpid