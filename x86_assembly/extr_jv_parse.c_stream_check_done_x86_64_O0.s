	.text
	.p2align	4, 0x90                         # -- Begin function stream_check_done
stream_check_done:                      # @stream_check_done
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	jv_copy@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	JV_ARRAY@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_9
.LBB0_3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.4:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	jv_copy@PLT
	movq	%rax, %rdi
	callq	jv_array_length@PLT
	cmpl	$2, %eax
	jle	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	jv_copy@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	jv_array_slice@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	jv_array_slice@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	jmp	.LBB0_7
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
.LBB0_7:
	movl	$1, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	$0, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stream_check_done
	.addrsig_sym jv_is_valid
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_copy
	.addrsig_sym jv_invalid
	.addrsig_sym jv_array_length
	.addrsig_sym jv_array_slice