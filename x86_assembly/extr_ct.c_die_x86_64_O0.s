	.text
	.p2align	4, 0x90                         # -- Begin function die
die:                                    # @die
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	stderr(%rip), %esi
	movl	$10, %edi
	callq	putc@PLT
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rdi
	movl	stderr(%rip), %esi
	callq	fputs@PLT
	movl	stderr(%rip), %esi
	leaq	.L.str(%rip), %rdi
	callq	fputs@PLT
.LBB0_3:
	movl	-8(%rbp), %edi
	callq	strerror@PLT
	movq	%rax, %rdi
	movl	stderr(%rip), %esi
	callq	fputs@PLT
	movl	stderr(%rip), %esi
	movl	$10, %edi
	callq	putc@PLT
	movl	-4(%rbp), %edi
	callq	exit@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	": "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym die
	.addrsig_sym putc
	.addrsig_sym fputs
	.addrsig_sym strerror
	.addrsig_sym exit
	.addrsig_sym stderr