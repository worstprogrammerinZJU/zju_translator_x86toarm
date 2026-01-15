	.text
	.p2align	4, 0x90                         # -- Begin function type_compatible
type_compatible:                        # @type_compatible
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	is_same_struct@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_4:
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_7
# %bb.5:
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	type_compatible
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_7:
	movq	-16(%rbp), %rdi
	callq	is_arithtype@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.8:
	movq	-24(%rbp), %rdi
	callq	is_arithtype@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	same_arith_type@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movl	$1, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym type_compatible
	.addrsig_sym is_same_struct
	.addrsig_sym is_arithtype
	.addrsig_sym same_arith_type
	.addrsig_sym KIND_STRUCT