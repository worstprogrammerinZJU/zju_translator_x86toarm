	.text
	.globl	jv_string_split                 # -- Begin function jv_string_split
	.p2align	4, 0x90
jv_string_split:                        # @jv_string_split
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
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
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, %ecx
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -32(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -52(%rbp)
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %edi
	callq	jv_get_refcnt@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpl	$0, -52(%rbp)
	jne	.LBB0_5
# %bb.1:
	jmp	.LBB0_2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	callq	jvp_utf8_next@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	movl	-60(%rbp), %esi
	callq	jv_string_append_codepoint@PLT
	movl	-76(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_array_append@PLT
	movl	%eax, -56(%rbp)
	jmp	.LBB0_2
.LBB0_4:
	jmp	.LBB0_15
.LBB0_5:
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB0_14
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %ecx
	callq	_jq_memmem@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	callq	jv_string_sized@PLT
	movl	-80(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_array_append@PLT
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	-84(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_array_append@PLT
	movl	%eax, -56(%rbp)
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_6
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-56(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jv_array
	.addrsig_sym jv_get_refcnt
	.addrsig_sym jvp_utf8_next
	.addrsig_sym jv_array_append
	.addrsig_sym jv_string_append_codepoint
	.addrsig_sym jv_string
	.addrsig_sym _jq_memmem
	.addrsig_sym jv_string_sized
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_STRING