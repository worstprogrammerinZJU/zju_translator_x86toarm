	.text
	.p2align	4, 0x90                         # -- Begin function interfere
interfere:                              # @interfere
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	nofail@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_8
.LBB0_2:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	NOINFO(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_8
.LBB0_4:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_6
	jmp	.LBB0_9
.LBB0_9:
	movl	-36(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	jne	.LBB0_7
	jmp	.LBB0_5
.LBB0_5:
	movq	-32(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	callq	testchar@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_6:
	movq	-32(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rax
	movl	20(%rax), %esi
	callq	exclusiveset@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_7:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	ITestAny(%rip), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$1, -4(%rbp)
.LBB0_8:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	NOINFO
	.p2align	3
NOINFO:
	.quad	0                               # 0x0
	.globl	ITestAny
	.p2align	2
ITestAny:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym interfere
	.addrsig_sym nofail
	.addrsig_sym testchar
	.addrsig_sym exclusiveset
	.addrsig_sym assert
	.addrsig_sym NOINFO
	.addrsig_sym ITestAny