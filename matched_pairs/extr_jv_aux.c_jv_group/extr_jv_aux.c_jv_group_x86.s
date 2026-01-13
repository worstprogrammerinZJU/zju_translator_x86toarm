	.text
	.globl	jv_group                        # -- Begin function jv_group
	.p2align	4, 0x90
jv_group:                               # @jv_group
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, %ecx
	movl	-44(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	sort_items@PLT
	movq	%rax, -24(%rbp)
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB0_9
# %bb.1:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	jv_array_append@PLT
	movl	%eax, -36(%rbp)
	movl	$1, -40(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-32(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movl	4(%rax,%rcx,8), %edi
	callq	jv_copy@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_equal@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movl	4(%rax,%rcx,8), %edi
	callq	jv_free@PLT
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-32(%rbp), %edi
	callq	jv_free@PLT
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movl	4(%rax,%rcx,8), %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	jv_array_append@PLT
	movl	%eax, -28(%rbp)
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, -36(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-36(%rbp), %edi
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movl	(%rax,%rcx,8), %esi
	callq	jv_array_append@PLT
	movl	%eax, -36(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_2
.LBB0_8:
	movl	-32(%rbp), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	jv_array_append@PLT
	movl	%eax, -28(%rbp)
.LBB0_9:
	movq	-24(%rbp), %rdi
	callq	jv_mem_free@PLT
	movl	-28(%rbp), %eax
	addq	$48, %rsp
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
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym sort_items
	.addrsig_sym jv_array
	.addrsig_sym jv_array_append
	.addrsig_sym jv_equal
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_KIND_ARRAY