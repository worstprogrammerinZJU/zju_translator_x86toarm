	.text
	.globl	jv_string_indexes               # -- Begin function jv_string_indexes
	.p2align	4, 0x90
jv_string_indexes:                      # @jv_string_indexes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-8(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -36(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -40(%rbp)
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_5
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	-24(%rbp), %rdx
	movl	-40(%rbp), %ecx
	callq	_jq_memmem@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edi
	callq	jv_number@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_array_append@PLT
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_2
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-44(%rbp), %eax
	addq	$48, %rsp
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
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jv_array
	.addrsig_sym _jq_memmem
	.addrsig_sym jv_array_append
	.addrsig_sym jv_number
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING