	.text
	.p2align	4, 0x90                         # -- Begin function skip_block_comment
skip_block_comment:                     # @skip_block_comment
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$4294967294, %edi               # imm = 0xFFFFFFFE
	callq	get_pos@PLT
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	EOF(%rip), %eax
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edi
	leaq	.L.str(%rip), %rsi
	callq	errorp@PLT
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$47, -12(%rbp)
	jne	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -8(%rbp)
	je	.LBB0_6
# %bb.5:
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$42, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"premature end of block comment"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_block_comment
	.addrsig_sym get_pos
	.addrsig_sym readc
	.addrsig_sym errorp
	.addrsig_sym EOF