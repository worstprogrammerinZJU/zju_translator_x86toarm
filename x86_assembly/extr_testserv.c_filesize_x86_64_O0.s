	.text
	.p2align	4, 0x90                         # -- Begin function filesize
filesize:                               # @filesize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	stat@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_2:
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stat"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym filesize
	.addrsig_sym stat
	.addrsig_sym twarn
	.addrsig_sym exit