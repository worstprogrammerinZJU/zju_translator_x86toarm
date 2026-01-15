	.text
	.globl	jv_contains                     # -- Begin function jv_contains
	.p2align	4, 0x90
jv_contains:                            # @jv_contains
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	je	.LBB0_2
# %bb.1:
	movl	$0, -12(%rbp)
	jmp	.LBB0_15
.LBB0_2:
	movl	-4(%rbp), %edi
	movl	JV_KIND_OBJECT(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	jvp_object_contains@PLT
	movl	%eax, -12(%rbp)
	jmp	.LBB0_14
.LBB0_4:
	movl	-4(%rbp), %edi
	movl	JV_KIND_ARRAY(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	jvp_array_contains@PLT
	movl	%eax, -12(%rbp)
	jmp	.LBB0_13
.LBB0_6:
	movl	-4(%rbp), %edi
	movl	JV_KIND_STRING(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.7:
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB0_9
# %bb.8:
	movl	-4(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	-16(%rbp), %ecx
	callq	_jq_memmem@PLT
	cmpq	$0, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movl	$1, -12(%rbp)
.LBB0_10:
	jmp	.LBB0_12
.LBB0_11:
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	-36(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_equal@PLT
	movl	%eax, -12(%rbp)
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-12(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.long	0                               # 0x0
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.long	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_get_kind
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_object_contains
	.addrsig_sym jvp_array_contains
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym _jq_memmem
	.addrsig_sym jv_string_value
	.addrsig_sym jv_equal
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_STRING