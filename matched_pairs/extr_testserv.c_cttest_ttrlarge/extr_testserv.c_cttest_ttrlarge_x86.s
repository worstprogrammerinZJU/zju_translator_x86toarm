	.text
	.globl	cttest_ttrlarge                 # -- Begin function cttest_ttrlarge
	.p2align	4, 0x90
cttest_ttrlarge:                        # @cttest_ttrlarge
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
	movl	-8(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.6(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.7(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.8(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.9(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.10(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.11(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.12(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.13(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.14(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.15(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.16(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.17(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.18(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.16(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.19(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.20(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.16(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.21(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.22(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.16(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.23(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.24(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.16(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.25(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.26(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.16(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.27(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.28(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.16(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.29(%rip), %rsi
	callq	ckrespsub@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 120 1\r\n"
.L.str.1:
	.asciz	"a\r\n"
.L.str.2:
	.asciz	"INSERTED 1\r\n"
.L.str.3:
	.asciz	"put 0 0 4294 1\r\n"
.L.str.4:
	.asciz	"INSERTED 2\r\n"
.L.str.5:
	.asciz	"put 0 0 4295 1\r\n"
.L.str.6:
	.asciz	"INSERTED 3\r\n"
.L.str.7:
	.asciz	"put 0 0 4296 1\r\n"
.L.str.8:
	.asciz	"INSERTED 4\r\n"
.L.str.9:
	.asciz	"put 0 0 4297 1\r\n"
.L.str.10:
	.asciz	"INSERTED 5\r\n"
.L.str.11:
	.asciz	"put 0 0 5000 1\r\n"
.L.str.12:
	.asciz	"INSERTED 6\r\n"
.L.str.13:
	.asciz	"put 0 0 21600 1\r\n"
.L.str.14:
	.asciz	"INSERTED 7\r\n"
.L.str.15:
	.asciz	"stats-job 1\r\n"
.L.str.16:
	.asciz	"OK "
.L.str.17:
	.asciz	"\nttr: 120\n"
.L.str.18:
	.asciz	"stats-job 2\r\n"
.L.str.19:
	.asciz	"\nttr: 4294\n"
.L.str.20:
	.asciz	"stats-job 3\r\n"
.L.str.21:
	.asciz	"\nttr: 4295\n"
.L.str.22:
	.asciz	"stats-job 4\r\n"
.L.str.23:
	.asciz	"\nttr: 4296\n"
.L.str.24:
	.asciz	"stats-job 5\r\n"
.L.str.25:
	.asciz	"\nttr: 4297\n"
.L.str.26:
	.asciz	"stats-job 6\r\n"
.L.str.27:
	.asciz	"\nttr: 5000\n"
.L.str.28:
	.asciz	"stats-job 7\r\n"
.L.str.29:
	.asciz	"\nttr: 21600\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym ckrespsub