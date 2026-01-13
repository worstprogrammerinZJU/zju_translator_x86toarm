	.text
	.globl	jv_array_slice                  # -- Begin function jv_array_slice
	.p2align	4, 0x90
jv_array_slice:                         # @jv_array_slice
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edi
	movl	JV_KIND_ARRAY(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	jvp_array_slice@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_array_slice
	.addrsig_sym JV_KIND_ARRAY