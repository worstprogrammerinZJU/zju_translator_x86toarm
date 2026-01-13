	.text
	.globl	ferror                          # -- Begin function ferror
	.p2align	4, 0x90
ferror:                                 # @ferror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	leaq	ferror(%rip), %rdi
	callq	GET_REAL@PLT
	movq	-16(%rbp), %rdi
	callq	real_ferror@PLT
	movl	%eax, -20(%rbp)
	movq	fail(%rip), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB0_2
# %bb.1:
	movl	error(%rip), %eax
	movl	%eax, errno(%rip)
	movl	$1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	fail
	.p2align	3
fail:
	.quad	0
	.globl	error
	.p2align	2
error:
	.long	0                               # 0x0
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ferror
	.addrsig_sym GET_REAL
	.addrsig_sym real_ferror
	.addrsig_sym fail
	.addrsig_sym error
	.addrsig_sym errno