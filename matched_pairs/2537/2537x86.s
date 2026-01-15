	.text
	.globl	jq_util_input_init              # -- Begin function jq_util_input_init
	.p2align	4, 0x90
jq_util_input_init:                     # @jq_util_input_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	fprinter(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	stderr(%rip), %rax
	movq	%rax, -16(%rbp)
.LBB0_2:
	movl	$1, %edi
	movl	$32, %esi
	callq	jv_mem_calloc@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 16(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	fprinter
	.p2align	3
fprinter:
	.quad	0
	.globl	stderr
	.p2align	3
stderr:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_calloc
	.addrsig_sym jv_invalid
	.addrsig_sym fprinter
	.addrsig_sym stderr