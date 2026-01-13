	.text
	.globl	jv_array_length                 # -- Begin function jv_array_length
	.p2align	4, 0x90
jv_array_length:                        # @jv_array_length
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	JV_KIND_ARRAY(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jvp_array_length@PLT
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %eax
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
	.addrsig_sym jvp_array_length
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_ARRAY