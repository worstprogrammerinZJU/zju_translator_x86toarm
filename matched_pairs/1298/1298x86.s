	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_read
jvp_object_read:                        # @jvp_object_read
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	-16(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	jvp_object_find_bucket@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	jvp_object_find_slot@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_read
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_object_find_bucket
	.addrsig_sym jvp_object_find_slot
	.addrsig_sym JV_KIND_STRING