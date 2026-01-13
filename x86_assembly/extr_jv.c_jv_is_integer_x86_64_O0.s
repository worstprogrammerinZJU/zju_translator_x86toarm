	.text
	.globl	jv_is_integer                   # -- Begin function jv_is_integer
	.p2align	4, 0x90
jv_is_integer:                          # @jv_is_integer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	JV_KIND_NUMBER(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-8(%rbp), %edi
	callq	jv_number_value@PLT
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	-24(%rbp), %rdi
	callq	modf@PLT
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	fabs@PLT
	cmpq	DBL_EPSILON(%rip), %rax
	setl	%al
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
	.globl	DBL_EPSILON
	.p2align	3
DBL_EPSILON:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_number_value
	.addrsig_sym modf
	.addrsig_sym fabs
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym DBL_EPSILON