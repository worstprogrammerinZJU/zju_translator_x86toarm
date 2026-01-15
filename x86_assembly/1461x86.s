	.text
	.globl	yyget_lineno                    # -- Begin function yyget_lineno
	.p2align	4, 0x90
yyget_lineno:                           # @yyget_lineno
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, YY_CURRENT_BUFFER(%rip)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	yylineno(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	YY_CURRENT_BUFFER
	.p2align	2
YY_CURRENT_BUFFER:
	.long	0                               # 0x0
	.globl	yylineno
	.p2align	2
yylineno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym yylineno