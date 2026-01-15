	.text
	.p2align	4, 0x90                         # -- Begin function f_min
f_min:                                  # @f_min
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	-16(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movl	$1, %edx
	callq	minmax_by@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_min
	.addrsig_sym minmax_by
	.addrsig_sym jv_copy