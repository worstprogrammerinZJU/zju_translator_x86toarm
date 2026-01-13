	.text
	.p2align	4, 0x90                         # -- Begin function jvp_array_offset
jvp_array_offset:                       # @jvp_array_offset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	JV_KIND_ARRAY(%rip), %esi
	movl	-8(%rbp), %edi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
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
	.addrsig_sym jvp_array_offset
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JV_KIND_ARRAY