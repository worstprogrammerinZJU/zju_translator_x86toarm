	.text
	.globl	jq_set_error_cb                 # -- Begin function jq_set_error_cb
	.p2align	4, 0x90
jq_set_error_cb:                        # @jq_set_error_cb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	default_err_cb(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	stderr(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_3:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	default_err_cb
	.p2align	3
default_err_cb:
	.quad	0
	.globl	stderr
	.p2align	3
stderr:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym default_err_cb
	.addrsig_sym stderr