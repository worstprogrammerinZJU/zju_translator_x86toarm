	.text
	.p2align	4, 0x90                         # -- Begin function su
su:                                     # @su
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, errno(%rip)
	movq	-8(%rbp), %rdi
	callq	getpwnam@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, errno(%rip)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
	movl	$32, %edi
	callq	exit@PLT
.LBB0_2:
	cmpq	$0, -16(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rsi
	leaq	.L.str.1(%rip), %rdi
	callq	twarnx@PLT
	movl	$33, %edi
	callq	exit@PLT
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	setgid@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movslq	4(%rax), %rsi
	movq	-8(%rbp), %rdx
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
	movl	$34, %edi
	callq	exit@PLT
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	setuid@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rax
	movslq	(%rax), %rsi
	movq	-8(%rbp), %rdx
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	twarn@PLT
	movl	$34, %edi
	callq	exit@PLT
.LBB0_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	errno
	.p2align	3
errno:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"getpwnam(\"%s\")"
.L.str.1:
	.asciz	"getpwnam(\"%s\"): no such user"
.L.str.2:
	.asciz	"setgid(%d \"%s\")"
.L.str.3:
	.asciz	"setuid(%d \"%s\")"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym su
	.addrsig_sym getpwnam
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym twarnx
	.addrsig_sym setgid
	.addrsig_sym setuid
	.addrsig_sym errno