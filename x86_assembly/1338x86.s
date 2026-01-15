	.text
	.p2align	4, 0x90                         # -- Begin function sort_items
sort_items:                             # @sort_items
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
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
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, %ecx
	movl	-32(%rbp), %eax                 # 4-byte Reload
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
	movl	-12(%rbp), %esi
	movl	$24, %edi
	callq	jv_mem_calloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-28(%rbp), %esi
	callq	jv_array_get@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rcx, 16(%rax)
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-28(%rbp), %esi
	callq	jv_array_get@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rcx, 8(%rax)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, (%rax)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	sort_cmp(%rip), %ecx
	movl	$24, %edx
	callq	qsort@PLT
	movq	-24(%rbp), %rax
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
	.globl	sort_cmp
	.p2align	2
sort_cmp:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sort_items
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_mem_calloc
	.addrsig_sym jv_array_get
	.addrsig_sym jv_free
	.addrsig_sym qsort
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym sort_cmp