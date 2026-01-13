	.text
	.p2align	4, 0x90                         # -- Begin function jq_reset
jq_reset:                               # @jq_reset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	stack_restore@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_3:
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rdi
	addq	$80, %rdi
	callq	stack_reset@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_null@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	jv_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	jv_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_INVALID(%rip), %rax
	je	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	jv_free@PLT
.LBB0_5:
	movb	$0, %al
	callq	jv_null@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_null@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_reset
	.addrsig_sym stack_restore
	.addrsig_sym assert
	.addrsig_sym stack_reset
	.addrsig_sym jv_free
	.addrsig_sym jv_null
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_INVALID