	.text
	.p2align	4, 0x90                         # -- Begin function path_append
path_append:                            # @path_append
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_3
# %bb.1:
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	movl	-12(%rbp), %esi
	callq	jv_array_append@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_free@PLT
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB0_4
.LBB0_3:
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movl	-16(%rbp), %edi
	callq	jv_free@PLT
.LBB0_4:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym path_append
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_append
	.addrsig_sym assert
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_ARRAY