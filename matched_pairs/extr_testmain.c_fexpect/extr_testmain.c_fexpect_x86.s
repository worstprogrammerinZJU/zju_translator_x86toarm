	.text
	.globl	fexpect                         # -- Begin function fexpect
	.p2align	4, 0x90
fexpect:                                # @fexpect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	printfail@PLT
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
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
	.asciz	"%s:%d: %d expected, but got %d\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printfail
	.addrsig_sym printf
	.addrsig_sym exit