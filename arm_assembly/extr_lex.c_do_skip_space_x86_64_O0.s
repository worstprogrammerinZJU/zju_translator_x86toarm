	.text
	.p2align	4, 0x90                         # -- Begin function do_skip_space
do_skip_space:                          # @do_skip_space
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	EOF(%rip), %eax
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_2:
	movl	-8(%rbp), %edi
	callq	iswhitespace@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_11
.LBB0_4:
	cmpl	$47, -8(%rbp)
	jne	.LBB0_10
# %bb.5:
	movl	$42, %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:
	movb	$0, %al
	callq	skip_block_comment@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_11
.LBB0_7:
	movl	$47, %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:
	movb	$0, %al
	callq	skip_line@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_11
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	movl	-8(%rbp), %edi
	callq	unreadc@PLT
	movl	$0, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_skip_space
	.addrsig_sym readc
	.addrsig_sym iswhitespace
	.addrsig_sym next
	.addrsig_sym skip_block_comment
	.addrsig_sym skip_line
	.addrsig_sym unreadc
	.addrsig_sym EOF