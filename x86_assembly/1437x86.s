	.text
	.p2align	4, 0x90                         # -- Begin function skip_line
skip_line:                              # @skip_line
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	EOF(%rip), %eax
	jne	.LBB0_3
# %bb.2:
	jmp	.LBB0_6
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$10, -4(%rbp)
	jne	.LBB0_5
# %bb.4:
	movl	-4(%rbp), %edi
	callq	unreadc@PLT
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_6:
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
	.addrsig_sym skip_line
	.addrsig_sym readc
	.addrsig_sym unreadc
	.addrsig_sym EOF