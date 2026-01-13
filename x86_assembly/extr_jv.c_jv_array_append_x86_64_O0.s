	.text
	.globl	jv_array_append                 # -- Begin function jv_array_append
	.p2align	4, 0x90
jv_array_append:                        # @jv_array_append
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	-12(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movl	-8(%rbp), %edx
	callq	jv_array_set@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_array_set
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy