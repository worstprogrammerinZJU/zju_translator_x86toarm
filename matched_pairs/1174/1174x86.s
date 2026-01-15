	.text
	.globl	fgets                           # -- Begin function fgets
	.p2align	4, 0x90
fgets:                                  # @fgets
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	fgets(%rip), %rdi
	callq	GET_REAL@PLT
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	real_fgets@PLT
	movq	%rax, -40(%rbp)
	movq	fail_read(%rip), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	fail_read
	.p2align	3
fail_read:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fgets
	.addrsig_sym GET_REAL
	.addrsig_sym real_fgets
	.addrsig_sym fail_read