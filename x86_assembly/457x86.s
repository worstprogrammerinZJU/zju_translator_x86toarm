	.text
	.p2align	4, 0x90                         # -- Begin function skip_newlines
skip_newlines:                          # @skip_newlines
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movq	-8(%rbp), %rdi
	callq	unget_token@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_newlines
	.addrsig_sym lex
	.addrsig_sym unget_token
	.addrsig_sym TNEWLINE