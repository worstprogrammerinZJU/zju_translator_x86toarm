	.text
	.p2align	4, 0x90                         # -- Begin function minmax_by
minmax_by:                              # @minmax_by
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	leaq	.L.str(%rip), %rdx
	callq	type_error2@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_2:
	movl	-12(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	je	.LBB0_4
# %bb.3:
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	leaq	.L.str(%rip), %rdx
	callq	type_error2@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_4:
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, %ecx
	movl	-40(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	je	.LBB0_6
# %bb.5:
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	leaq	.L.str.1(%rip), %rdx
	callq	type_error2@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_6:
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_16
.LBB0_8:
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	jv_array_get@PLT
	movl	%eax, -24(%rbp)
	movl	$1, -28(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, %ecx
	movl	-44(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-28(%rbp), %esi
	callq	jv_array_get@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %edi
	callq	jv_copy@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_cmp@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	setl	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	$1, -16(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-28(%rbp), %esi
	callq	jv_array_get@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-32(%rbp), %edi
	callq	jv_free@PLT
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_9
.LBB0_15:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_16:
	movl	-4(%rbp), %eax
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
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be iterated over"
.L.str.1:
	.asciz	"have wrong length"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym minmax_by
	.addrsig_sym jv_get_kind
	.addrsig_sym type_error2
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym jv_null
	.addrsig_sym jv_array_get
	.addrsig_sym jv_cmp
	.addrsig_sym JV_KIND_ARRAY