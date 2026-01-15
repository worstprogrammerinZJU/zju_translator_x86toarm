	.text
	.globl	jv_number_value                 # -- Begin function jv_number_value
	.p2align	4, 0x90
jv_number_value:                        # @jv_number_value
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -8(%rbp)
	movl	JV_KIND_NUMBER(%rip), %esi
	movq	-16(%rbp), %rdi
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.long	0                               # 0x0
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.long	0                               # 0x0
	.globl	JV_NUMBER_SIZE_CONVERTED
	.p2align	3
JV_NUMBER_SIZE_CONVERTED:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JV_KIND_NUMBER