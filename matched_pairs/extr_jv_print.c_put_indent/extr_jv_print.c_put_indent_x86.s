	.text
	.p2align	4, 0x90                         # -- Begin function put_indent
put_indent:                             # @put_indent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-8(%rbp), %eax
	andl	JV_PRINT_TAB(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.1:
	jmp	.LBB0_2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$9, %edi
	callq	put_char@PLT
	jmp	.LBB0_2
.LBB0_4:
	jmp	.LBB0_9
.LBB0_5:
	movl	-8(%rbp), %eax
	movl	JV_PRINT_SPACE0(%rip), %ecx
	orl	JV_PRINT_SPACE1(%rip), %ecx
	orl	JV_PRINT_SPACE2(%rip), %ecx
	andl	%ecx, %eax
	sarl	$8, %eax
	imull	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, %eax
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$32, %edi
	callq	put_char@PLT
	jmp	.LBB0_6
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_PRINT_TAB
	.p2align	2
JV_PRINT_TAB:
	.long	0                               # 0x0
	.globl	JV_PRINT_SPACE0
	.p2align	2
JV_PRINT_SPACE0:
	.long	0                               # 0x0
	.globl	JV_PRINT_SPACE1
	.p2align	2
JV_PRINT_SPACE1:
	.long	0                               # 0x0
	.globl	JV_PRINT_SPACE2
	.p2align	2
JV_PRINT_SPACE2:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym put_indent
	.addrsig_sym put_char
	.addrsig_sym JV_PRINT_TAB
	.addrsig_sym JV_PRINT_SPACE0
	.addrsig_sym JV_PRINT_SPACE1
	.addrsig_sym JV_PRINT_SPACE2