	.text
	.globl	jv_array_get                    # -- Begin function jv_array_get
	.p2align	4, 0x90
jv_array_get:                           # @jv_array_get
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	JV_KIND_ARRAY(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	jvp_array_read@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, -20(%rbp)
.LBB0_3:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-20(%rbp), %eax
	addq	$32, %rsp
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
	.addrsig_sym jvp_array_read
	.addrsig_sym jv_copy
	.addrsig_sym jv_invalid
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_ARRAY