	.text
	.p2align	4, 0x90                         # -- Begin function printjmp
printjmp:                               # @printjmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	xorl	%edi, %edi
	callq	dest@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	subq	%rax, %rsi
	sarq	$2, %rsi
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-> %ld"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printjmp
	.addrsig_sym printf
	.addrsig_sym dest