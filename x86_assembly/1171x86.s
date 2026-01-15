	.text
	.globl	clearerr                        # -- Begin function clearerr
	.p2align	4, 0x90
clearerr:                               # @clearerr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	clearerr(%rip), %rdi
	callq	GET_REAL@PLT
	movq	-8(%rbp), %rdi
	callq	real_clearerr@PLT
	movq	fail(%rip), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB0_2
# %bb.1:
	movq	$0, fail_close(%rip)
	movq	$0, fail_write(%rip)
	movq	$0, fail_read(%rip)
	movq	$0, fail(%rip)
	movq	$0, error(%rip)
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	fail
	.p2align	3
fail:
	.quad	0
	.globl	fail_close
	.p2align	3
fail_close:
	.quad	0
	.globl	fail_write
	.p2align	3
fail_write:
	.quad	0
	.globl	fail_read
	.p2align	3
fail_read:
	.quad	0
	.globl	error
	.p2align	3
error:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clearerr
	.addrsig_sym GET_REAL
	.addrsig_sym real_clearerr
	.addrsig_sym fail
	.addrsig_sym fail_close
	.addrsig_sym fail_write
	.addrsig_sym fail_read
	.addrsig_sym error