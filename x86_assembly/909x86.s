	.text
	.p2align	4, 0x90                         # -- Begin function filewrite
filewrite:                              # @filewrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	write@PLT
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movl	$1, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"write"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym filewrite
	.addrsig_sym write
	.addrsig_sym twarn