	.text
	.p2align	4, 0x90                         # -- Begin function f_getpath
f_getpath:                              # @f_getpath
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	-16(%rbp), %edi
	callq	jv_copy@PLT
	movl	-36(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_getpath@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	-24(%rbp), %esi                 # 4-byte Reload
	movl	-20(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	callq	_jq_path_append@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_getpath
	.addrsig_sym _jq_path_append
	.addrsig_sym jv_getpath
	.addrsig_sym jv_copy