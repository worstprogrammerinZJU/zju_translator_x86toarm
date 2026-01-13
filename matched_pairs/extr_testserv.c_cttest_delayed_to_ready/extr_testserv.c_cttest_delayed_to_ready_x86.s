	.text
	.globl	cttest_delayed_to_ready         # -- Begin function cttest_delayed_to_ready
	.p2align	4, 0x90
cttest_delayed_to_ready:                # @cttest_delayed_to_ready
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
	leaq	.L.str.4(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.6(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.7(%rip), %rsi
	callq	ckrespsub@PLT
	movl	$1010000, %edi                  # imm = 0xF6950
	callq	usleep@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.8(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.9(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.7(%rip), %rsi
	callq	ckrespsub@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 1 1 0\r\n"
.L.str.1:
	.asciz	"\r\n"
.L.str.2:
	.asciz	"INSERTED 1\r\n"
.L.str.3:
	.asciz	"stats-tube default\r\n"
.L.str.4:
	.asciz	"OK "
.L.str.5:
	.asciz	"\ncurrent-jobs-ready: 0\n"
.L.str.6:
	.asciz	"\ncurrent-jobs-delayed: 1\n"
.L.str.7:
	.asciz	"\ntotal-jobs: 1\n"
.L.str.8:
	.asciz	"\ncurrent-jobs-ready: 1\n"
.L.str.9:
	.asciz	"\ncurrent-jobs-delayed: 0\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym ckrespsub
	.addrsig_sym usleep