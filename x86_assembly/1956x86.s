	.text
	.p2align	4, 0x90                         # -- Begin function usual_arith_conv
usual_arith_conv:                       # @usual_arith_conv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	is_arithtype@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	is_arithtype@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	is_inttype@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	type_int(%rip), %rcx
	cmpq	(%rcx), %rax
	setge	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_6:
	movb	-41(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	is_inttype@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -42(%rbp)                  # 1-byte Spill
	je	.LBB0_8
# %bb.7:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	type_int(%rip), %rcx
	cmpq	(%rcx), %rax
	setge	%al
	movb	%al, -42(%rbp)                  # 1-byte Spill
.LBB0_8:
	movb	-42(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB0_10
# %bb.9:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_10:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB0_12
# %bb.11:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movq	-16(%rbp), %rdi
	callq	copy_type@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	$1, 16(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_13:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_int
	.p2align	3
type_int:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usual_arith_conv
	.addrsig_sym assert
	.addrsig_sym is_arithtype
	.addrsig_sym is_flotype
	.addrsig_sym is_inttype
	.addrsig_sym copy_type
	.addrsig_sym type_int