	.text
	.p2align	4, 0x90                         # -- Begin function scan_line_end
scan_line_end:                          # @scan_line_end
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movl	$13, %esi
	callq	memchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_4
# %bb.3:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	$0, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym scan_line_end
	.addrsig_sym memchr