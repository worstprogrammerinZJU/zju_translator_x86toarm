	.text
	.p2align	4, 0x90                         # -- Begin function read_rep
read_rep:                               # @read_rep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movsbl	-1(%rbp), %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
.LBB0_3:
	movl	-16(%rbp), %edi                 # 4-byte Reload
	callq	make_keyword@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rep
	.addrsig_sym make_keyword
	.addrsig_sym next