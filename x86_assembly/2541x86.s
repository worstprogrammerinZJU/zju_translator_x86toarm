	.text
	.globl	jq_util_input_set_parser        # -- Begin function jq_util_input_set_parser
	.p2align	4, 0x90
jq_util_input_set_parser:               # @jq_util_input_set_parser
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# %bb.1:
	cmpl	$0, -20(%rbp)
	je	.LBB0_3
# %bb.2:
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_7
.LBB0_3:
	cmpl	$0, -20(%rbp)
	je	.LBB0_5
# %bb.4:
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_6
.LBB0_5:
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_string
	.addrsig_sym jv_array
	.addrsig_sym jv_invalid