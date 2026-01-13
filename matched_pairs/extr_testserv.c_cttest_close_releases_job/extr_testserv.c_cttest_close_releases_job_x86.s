	.text
	.globl	cttest_close_releases_job       # -- Begin function cttest_close_releases_job
	.p2align	4, 0x90
cttest_close_releases_job:              # @cttest_close_releases_job
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	SERVER@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	mustdiallocal@PLT
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	mustdiallocal@PLT
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	ckresp@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.6(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.7(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	callq	close@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckresp@PLT
	movl	-12(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	ckresp@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"reserve-with-timeout 1\r\n"
.L.str.1:
	.asciz	"put 0 0 100 1\r\n"
.L.str.2:
	.asciz	"a\r\n"
.L.str.3:
	.asciz	"INSERTED 1\r\n"
.L.str.4:
	.asciz	"RESERVED 1 1\r\n"
.L.str.5:
	.asciz	"stats-job 1\r\n"
.L.str.6:
	.asciz	"OK "
.L.str.7:
	.asciz	"\nstate: reserved\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym ckrespsub
	.addrsig_sym close