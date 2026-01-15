	.text
	.globl	_jq_path_append                 # -- Begin function _jq_path_append
	.p2align	4, 0x90
_jq_path_append:                        # @_jq_path_append
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movl	-28(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
.LBB0_3:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_4:
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_copy@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_identical@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_6:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	movl	-24(%rbp), %esi
	callq	jv_array_concat@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
	jmp	.LBB0_9
.LBB0_8:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	movl	-24(%rbp), %esi
	callq	jv_array_append@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
.LBB0_9:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	%edi, 8(%rax)
	callq	jv_copy@PLT
	movl	%eax, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
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
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym jv_identical
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_concat
	.addrsig_sym jv_array_append
	.addrsig_sym JV_KIND_ARRAY