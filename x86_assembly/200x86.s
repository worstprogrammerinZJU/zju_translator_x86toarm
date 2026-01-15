	.text
	.p2align	4, 0x90                         # -- Begin function jv2tm
jv2tm:                                  # @jv2tm
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	-4(%rbp), %esi
	xorl	%edx, %edx
	callq	TO_TM_FIELD@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1900, %ecx                     # imm = 0x76C
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movl	-4(%rbp), %esi
	movl	$1, %edx
	callq	TO_TM_FIELD@PLT
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movl	-4(%rbp), %esi
	movl	$2, %edx
	callq	TO_TM_FIELD@PLT
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	movl	-4(%rbp), %esi
	movl	$3, %edx
	callq	TO_TM_FIELD@PLT
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movl	-4(%rbp), %esi
	movl	$4, %edx
	callq	TO_TM_FIELD@PLT
	movq	-16(%rbp), %rax
	movl	20(%rax), %edi
	movl	-4(%rbp), %esi
	movl	$5, %edx
	callq	TO_TM_FIELD@PLT
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	movl	-4(%rbp), %esi
	movl	$6, %edx
	callq	TO_TM_FIELD@PLT
	movq	-16(%rbp), %rax
	movl	28(%rax), %edi
	movl	-4(%rbp), %esi
	movl	$7, %edx
	callq	TO_TM_FIELD@PLT
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv2tm
	.addrsig_sym memset
	.addrsig_sym TO_TM_FIELD
	.addrsig_sym jv_free