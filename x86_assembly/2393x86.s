	.text
	.globl	fexpectl                        # -- Begin function fexpectl
	.p2align	4, 0x90
fexpectl:                               # @fexpectl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	printfail@PLT
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:%d: %ld expected, but got %ld\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printfail
	.addrsig_sym printf
	.addrsig_sym exit