	.text
	.p2align	4, 0x90                         # -- Begin function tail_call_analyze
tail_call_analyze:                      # @tail_call_analyze
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CALL_JQ(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	jle	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	cmpq	$0, (%rax)
	jne	.LBB0_4
# %bb.3:
	movq	CALL_JQ(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	ret_follows@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:
	movq	TAIL_CALL_JQ(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movq	CALL_JQ(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_9:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CALL_JQ
	.p2align	3
CALL_JQ:
	.quad	0                               # 0x0
	.globl	TAIL_CALL_JQ
	.p2align	3
TAIL_CALL_JQ:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tail_call_analyze
	.addrsig_sym assert
	.addrsig_sym ret_follows
	.addrsig_sym CALL_JQ
	.addrsig_sym TAIL_CALL_JQ