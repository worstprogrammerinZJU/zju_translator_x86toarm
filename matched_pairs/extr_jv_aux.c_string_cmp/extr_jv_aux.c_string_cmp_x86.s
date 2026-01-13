	.text
	.p2align	4, 0x90                         # -- Begin function string_cmp
string_cmp:                             # @string_cmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_2
# %bb.1:
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	-40(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
.LBB0_3:
	movl	-52(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_string_value@PLT
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_string_value@PLT
	movl	-56(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movl	-44(%rbp), %edx
	callq	memcmp@PLT
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB0_5
# %bb.4:
	movl	-36(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB0_5:
	movl	-48(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym string_cmp
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym memcmp
	.addrsig_sym jv_string_value