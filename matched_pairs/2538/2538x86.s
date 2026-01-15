	.text
	.globl	jq_util_input_next_input        # -- Begin function jq_util_input_next_input
	.p2align	4, 0x90
jq_util_input_next_input:               # @jq_util_input_next_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	jq_util_input_read_more@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_30
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	jv_string_sized@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	jv_string_concat@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB0_11
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -32(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	$1, %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$10, %eax
	jne	.LBB0_10
# %bb.9:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	$1, %rcx
	movb	$0, (%rax,%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	subq	$1, %rsi
	callq	jv_string_sized@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	jv_string_concat@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_36
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	jv_string_sized@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	jv_string_concat@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	jv_parser_remaining@PLT
	cmpl	$0, %eax
	jne	.LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	jq_util_input_read_more@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, -32(%rbp)
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	cmpl	$0, -20(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	jv_parser_set_buf@PLT
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	jv_parser_next@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_24
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	jv_parser_remaining@PLT
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	jv_array_append@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB0_23
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_has_msg@PLT
	cmpq	$0, %rax
	je	.LBB0_22
# %bb.21:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_36
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_has_msg@PLT
	cmpq	$0, %rax
	je	.LBB0_27
.LBB0_26:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_36
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$1, %al
	cmpl	$0, -20(%rbp)
	movb	%al, -57(%rbp)                  # 1-byte Spill
	je	.LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -24(%rbp)
	setne	%al
	movb	%al, -57(%rbp)                  # 1-byte Spill
.LBB0_32:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-57(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_1
# %bb.33:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_35
# %bb.34:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
.LBB0_35:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_36:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_invalid
	.addrsig_sym jq_util_input_read_more
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_string_concat
	.addrsig_sym jv_string_sized
	.addrsig_sym jv_string
	.addrsig_sym jv_parser_remaining
	.addrsig_sym jv_parser_set_buf
	.addrsig_sym jv_parser_next
	.addrsig_sym jv_array_append
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy