	.text
	.globl	cttest_reserve_ttr_deadline_soon # -- Begin function cttest_reserve_ttr_deadline_soon
	.p2align	4, 0x90
cttest_reserve_ttr_deadline_soon:       # @cttest_reserve_ttr_deadline_soon
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
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	ckresp@PLT
	movl	$200000, %edi                   # imm = 0x30D40
	callq	usleep@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.6(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.7(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.3(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.8(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.6(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.7(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.9(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.10(%rip), %rsi
	callq	ckresp@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.5(%rip), %rsi
	callq	mustsend@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.6(%rip), %rsi
	callq	ckrespsub@PLT
	movl	-8(%rbp), %edi
	leaq	.L.str.11(%rip), %rsi
	callq	ckrespsub@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 1 1\r\n"
.L.str.1:
	.asciz	"a\r\n"
.L.str.2:
	.asciz	"INSERTED 1\r\n"
.L.str.3:
	.asciz	"reserve-with-timeout 1\r\n"
.L.str.4:
	.asciz	"RESERVED 1 1\r\n"
.L.str.5:
	.asciz	"stats-job 1\r\n"
.L.str.6:
	.asciz	"OK "
.L.str.7:
	.asciz	"\nstate: reserved\n"
.L.str.8:
	.asciz	"DEADLINE_SOON\r\n"
.L.str.9:
	.asciz	"release 1 0 0\r\n"
.L.str.10:
	.asciz	"RELEASED\r\n"
.L.str.11:
	.asciz	"\nstate: ready\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym usleep
	.addrsig_sym ckrespsub