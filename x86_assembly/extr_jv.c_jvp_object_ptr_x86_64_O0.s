	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_ptr
jvp_object_ptr:                         # @jvp_object_ptr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	JV_KIND_OBJECT(%rip), %esi
	movq	-8(%rbp), %rdi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_ptr
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JV_KIND_OBJECT