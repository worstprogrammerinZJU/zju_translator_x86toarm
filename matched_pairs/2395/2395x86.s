	.text
	.globl	ffail                           # -- Begin function ffail
	.p2align	4, 0x90
ffail:                                  # @ffail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, %al
	callq	printfail@PLT
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rcx
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	movl	$1, %edi
	callq	exit@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d: %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printfail
	.addrsig_sym printf
	.addrsig_sym exit