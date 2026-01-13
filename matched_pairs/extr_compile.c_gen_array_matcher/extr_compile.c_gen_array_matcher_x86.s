	.text
	.globl	gen_array_matcher               # -- Begin function gen_array_matcher
	.p2align	4, 0x90
gen_array_matcher:                      # @gen_array_matcher
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	block_is_noop@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$0, -28(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	DUP(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	PUSHK_UNDER(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	SUBEXP_BEGIN(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	cmpq	LOADK(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB0_5:
	movq	-40(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_number_value@PLT
                                        # kill: def $eax killed $eax killed $rax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB0_6:
	movq	DUP(%rip), %rdi
	callq	gen_op_simple@PLT
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movl	-28(%rbp), %edi
	callq	jv_number@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	%eax, %edi
	callq	gen_subexp@PLT
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	INDEX(%rip), %rdi
	callq	gen_op_simple@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	-44(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %r8
	callq	BLOCK@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DUP
	.p2align	3
DUP:
	.quad	0                               # 0x0
	.globl	PUSHK_UNDER
	.p2align	3
PUSHK_UNDER:
	.quad	0                               # 0x0
	.globl	SUBEXP_BEGIN
	.p2align	3
SUBEXP_BEGIN:
	.quad	0                               # 0x0
	.globl	LOADK
	.p2align	3
LOADK:
	.quad	0                               # 0x0
	.globl	INDEX
	.p2align	3
INDEX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_is_noop
	.addrsig_sym assert
	.addrsig_sym jv_number_value
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_subexp
	.addrsig_sym gen_const
	.addrsig_sym jv_number
	.addrsig_sym DUP
	.addrsig_sym PUSHK_UNDER
	.addrsig_sym SUBEXP_BEGIN
	.addrsig_sym LOADK
	.addrsig_sym INDEX