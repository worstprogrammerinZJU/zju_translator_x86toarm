	.text
	.globl	yyset_column                    # -- Begin function yyset_column
	.p2align	4, 0x90
yyset_column:                           # @yyset_column
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, YY_CURRENT_BUFFER(%rip)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	YY_FATAL_ERROR@PLT
.LBB0_2:
	movl	-4(%rbp), %eax
	movl	%eax, yycolumn(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YY_CURRENT_BUFFER
	.p2align	2
YY_CURRENT_BUFFER:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"yyset_column called with no buffer"
	.bss
	.globl	yycolumn
	.p2align	2
yycolumn:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym yycolumn