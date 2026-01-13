	.text
	.p2align	4, 0x90                         # -- Begin function read_rectype_fields
read_rectype_fields:                    # @read_rectype_fields
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$123, %edi
	callq	next_token@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movb	$0, %al
	callq	read_rectype_fields_sub@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	fix_rectype_flexible_member@PLT
	cmpl	$0, -28(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	update_struct_offset@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	update_union_offset@PLT
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rectype_fields
	.addrsig_sym next_token
	.addrsig_sym read_rectype_fields_sub
	.addrsig_sym fix_rectype_flexible_member
	.addrsig_sym update_struct_offset
	.addrsig_sym update_union_offset