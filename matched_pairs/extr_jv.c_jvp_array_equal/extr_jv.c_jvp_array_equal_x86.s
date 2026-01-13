	.text
	.p2align	4, 0x90                         # -- Begin function jvp_array_equal
jvp_array_equal:                        # @jvp_array_equal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %edi
	callq	jvp_array_length@PLT
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	jvp_array_length@PLT
	movl	%eax, %ecx
	movl	-20(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	je	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_12
.LBB0_2:
	movl	-8(%rbp), %edi
	callq	jvp_array_ptr@PLT
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %edi
	callq	jvp_array_ptr@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB0_5
# %bb.3:
	movl	-8(%rbp), %edi
	callq	jvp_array_offset@PLT
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %edi
	callq	jvp_array_offset@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jne	.LBB0_5
# %bb.4:
	movl	$1, -4(%rbp)
	jmp	.LBB0_12
.LBB0_5:
	movl	$0, -16(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jvp_array_length@PLT
	movl	%eax, %ecx
	movl	-44(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_11
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-8(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	jvp_array_read@PLT
	movl	(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	jvp_array_read@PLT
	movl	(%rax), %edi
	callq	jv_copy@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_equal@PLT
	cmpl	$0, %eax
	jne	.LBB0_9
# %bb.8:
	movl	$0, -4(%rbp)
	jmp	.LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_6
.LBB0_11:
	movl	$1, -4(%rbp)
.LBB0_12:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_equal
	.addrsig_sym jvp_array_length
	.addrsig_sym jvp_array_ptr
	.addrsig_sym jvp_array_offset
	.addrsig_sym jv_equal
	.addrsig_sym jv_copy
	.addrsig_sym jvp_array_read