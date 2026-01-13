	.text
	.p2align	4, 0x90                         # -- Begin function jvp_literal_number_literal
jvp_literal_number_literal:             # @jvp_literal_number_literal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	JVP_FLAGS_NUMBER_LITERAL(%rip), %esi
	callq	JVP_HAS_FLAGS@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-12(%rbp), %edi
	callq	jvp_dec_number_ptr@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	jvp_literal_number_ptr@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	decNumberIsNaN@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movq	-24(%rbp), %rdi
	callq	decNumberIsInfinite@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.3:
	movq	-24(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	DBL_MIN_STR(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_5:
	movq	DBL_MAX_STR(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_8
# %bb.7:
	movl	-12(%rbp), %edi
	callq	jvp_dec_number_ptr@PLT
	movl	(%rax), %eax
	addl	$14, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	decNumberToString@PLT
.LBB0_8:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB0_9:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"null"
	.bss
	.globl	DBL_MIN_STR
	.p2align	3
DBL_MIN_STR:
	.quad	0
	.globl	DBL_MAX_STR
	.p2align	3
DBL_MAX_STR:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_literal_number_literal
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_dec_number_ptr
	.addrsig_sym jvp_literal_number_ptr
	.addrsig_sym decNumberIsNaN
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym decNumberIsNegative
	.addrsig_sym jv_mem_alloc
	.addrsig_sym decNumberToString
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL
	.addrsig_sym DBL_MIN_STR
	.addrsig_sym DBL_MAX_STR