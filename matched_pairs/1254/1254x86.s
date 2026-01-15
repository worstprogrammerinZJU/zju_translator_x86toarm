	.text
	.globl	jv_string_implode               # -- Begin function jv_string_implode
	.p2align	4, 0x90
jv_string_implode:                      # @jv_string_implode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	JV_KIND_ARRAY(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_string_empty@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -8(%rbp)
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-16(%rbp), %esi
	callq	jv_array_get@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	movl	JV_KIND_NUMBER(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-20(%rbp), %edi
	callq	jv_number_value@PLT
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	cmpl	$1114111, -24(%rbp)             # imm = 0x10FFFF
	jle	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$65533, -24(%rbp)               # imm = 0xFFFD
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	jv_string_append_codepoint@PLT
	movl	%eax, -12(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-12(%rbp), %eax
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
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_string_empty
	.addrsig_sym jv_array_get
	.addrsig_sym jv_number_value
	.addrsig_sym jv_free
	.addrsig_sym jv_string_append_codepoint
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_NUMBER