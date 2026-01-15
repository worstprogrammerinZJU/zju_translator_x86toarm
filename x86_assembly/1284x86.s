	.text
	.globl	jvp_number_is_nan               # -- Begin function jvp_number_is_nan
	.p2align	4, 0x90
jvp_number_is_nan:                      # @jvp_number_is_nan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	JV_KIND_NUMBER(%rip), %esi
	movq	-16(%rbp), %rdi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	JVP_FLAGS_NUMBER_LITERAL(%rip), %esi
	movq	-16(%rbp), %rdi
	callq	JVP_HAS_FLAGS@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	jvp_dec_number_ptr@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decNumberIsNaN@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.long	0                               # 0x0
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_dec_number_ptr
	.addrsig_sym decNumberIsNaN
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL