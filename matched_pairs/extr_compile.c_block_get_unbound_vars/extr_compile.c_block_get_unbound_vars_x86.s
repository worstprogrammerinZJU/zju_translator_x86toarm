	.text
	.p2align	4, 0x90                         # -- Begin function block_get_unbound_vars
block_get_unbound_vars:                 # @block_get_unbound_vars
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_OBJECT(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_10
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	24(%rax), %rdi
	callq	block_get_unbound_vars
	jmp	.LBB0_9
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	STOREV(%rip), %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	STOREVN(%rip), %rax
	jne	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_string@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	jv_true@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jv_object_set@PLT
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_10:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.quad	0                               # 0x0
	.globl	STOREV
	.p2align	3
STOREV:
	.quad	0                               # 0x0
	.globl	STOREVN
	.p2align	3
STOREVN:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_get_unbound_vars
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string
	.addrsig_sym jv_true
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym STOREV
	.addrsig_sym STOREVN