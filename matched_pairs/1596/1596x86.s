	.text
	.p2align	4, 0x90                         # -- Begin function optimizechoice
optimizechoice:                         # @optimizechoice
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	IChoice(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	callq	ischeck@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.1:
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	callq	sizei@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	$1, %edx
	callq	rotate@PLT
	movq	-8(%rbp), %rdi
	callq	ischeck@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -13(%rbp)                  # 1-byte Spill
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	IChoice(%rip), %rax
	sete	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rdi
	callq	op_step@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %esi
	callq	check2test@PLT
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, 8(%rax)
.LBB0_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IChoice
	.p2align	3
IChoice:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optimizechoice
	.addrsig_sym assert
	.addrsig_sym ischeck
	.addrsig_sym sizei
	.addrsig_sym rotate
	.addrsig_sym op_step
	.addrsig_sym check2test
	.addrsig_sym IChoice