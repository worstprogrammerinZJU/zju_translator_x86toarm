	.text
	.globl	jv_object_set                   # -- Begin function jv_object_set
	.p2align	4, 0x90
jv_object_set:                          # @jv_object_set
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edi
	movl	JV_KIND_OBJECT(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-8(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-8(%rbp), %esi
	leaq	-4(%rbp), %rdi
	callq	jvp_object_write@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_free@PLT
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.long	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_object_write
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_STRING