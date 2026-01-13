	.text
	.globl	jv_sort                         # -- Begin function jv_sort
	.p2align	4, 0x90
jv_sort:                                # @jv_sort
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
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, %ecx
	movl	-36(%rbp), %eax                 # 4-byte Reload
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
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	4(%rax,%rcx,8), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,8), %edx
	callq	jv_array_set@PLT
	movl	%eax, -28(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_4:
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
	.addrsig_sym jv_free
	.addrsig_sym jv_array_set
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_KIND_ARRAY