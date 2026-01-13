	.text
	.globl	jv_dump_string_trunc            # -- Begin function jv_dump_string_trunc
	.p2align	4, 0x90
jv_dump_string_trunc:                   # @jv_dump_string_trunc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	xorl	%esi, %esi
	callq	jv_dump_string@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	strncpy@PLT
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	movb	$0, (%rax,%rcx)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_3
# %bb.1:
	cmpq	$4, -24(%rbp)
	jb	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$2, %rcx
	movb	$46, (%rax,%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movb	$46, (%rax,%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$4, %rcx
	movb	$46, (%rax,%rcx)
.LBB0_3:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_dump_string
	.addrsig_sym jv_string_value
	.addrsig_sym strlen
	.addrsig_sym strncpy
	.addrsig_sym jv_free