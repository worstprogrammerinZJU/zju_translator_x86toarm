	.text
	.globl	jq_util_input_add_input         # -- Begin function jq_util_input_add_input
	.p2align	4, 0x90
jq_util_input_add_input:                # @jq_util_input_add_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	jv_mem_realloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rdi
	callq	jv_mem_strdup@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, (%rsi)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_realloc
	.addrsig_sym jv_mem_strdup