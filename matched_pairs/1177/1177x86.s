	.text
	.globl	fwrite                          # -- Begin function fwrite
	.p2align	4, 0x90
fwrite:                                 # @fwrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	leaq	fwrite(%rip), %rdi
	callq	GET_REAL@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	real_fwrite@PLT
	movq	%rax, -48(%rbp)
	movq	fail_write(%rip), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	fail_write
	.p2align	3
fail_write:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fwrite
	.addrsig_sym GET_REAL
	.addrsig_sym real_fwrite
	.addrsig_sym fail_write