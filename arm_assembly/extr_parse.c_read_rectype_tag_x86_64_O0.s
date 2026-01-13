	.text
	.p2align	4, 0x90                         # -- Begin function read_rectype_tag
read_rectype_tag:                       # @read_rectype_tag
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	unget_token@PLT
	movq	$0, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rectype_tag
	.addrsig_sym get
	.addrsig_sym unget_token
	.addrsig_sym TIDENT