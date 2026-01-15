	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_find_slot
jvp_object_find_slot:                   # @jvp_object_find_slot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-16(%rbp), %edi
	callq	jvp_string_hash@PLT
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	jvp_object_get_slot@PLT
	movq	%rax, -40(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %edi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	jvp_string_equal@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_8
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	jvp_object_next_slot@PLT
	movq	%rax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movq	$0, -8(%rbp)
.LBB0_8:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_find_slot
	.addrsig_sym jvp_string_hash
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jvp_string_equal
	.addrsig_sym jvp_object_next_slot