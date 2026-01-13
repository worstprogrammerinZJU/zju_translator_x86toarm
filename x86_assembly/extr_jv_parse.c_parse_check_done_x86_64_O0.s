	.text
	.p2align	4, 0x90                         # -- Begin function parse_check_done
parse_check_done:                       # @parse_check_done
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
	movl	8(%rax), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movl	$0, -4(%rbp)
.LBB0_4:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_check_done
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_invalid