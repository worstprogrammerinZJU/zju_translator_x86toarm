	.text
	.globl	init_now                        # -- Begin function init_now
	.p2align	4, 0x90
init_now:                               # @init_now
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time@PLT
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rdi
	leaq	now(%rip), %rsi
	callq	localtime_r@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	now
	.p2align	2
now:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym time
	.addrsig_sym localtime_r
	.addrsig_sym now