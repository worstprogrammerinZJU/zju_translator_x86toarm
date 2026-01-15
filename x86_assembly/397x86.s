	.text
	.p2align	4, 0x90                         # -- Begin function expand_all
expand_all:                             # @expand_all
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	vec_reverse@PLT
	movl	%eax, %edi
	callq	token_buffer_stash@PLT
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	read_expand@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TEOF(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	jmp	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	vec_push@PLT
	jmp	.LBB0_1
.LBB0_4:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	propagate_space@PLT
	movb	$0, %al
	callq	token_buffer_unstash@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym expand_all
	.addrsig_sym token_buffer_stash
	.addrsig_sym vec_reverse
	.addrsig_sym make_vector
	.addrsig_sym read_expand
	.addrsig_sym vec_push
	.addrsig_sym propagate_space
	.addrsig_sym token_buffer_unstash
	.addrsig_sym TEOF