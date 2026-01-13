	.text
	.p2align	4, 0x90                         # -- Begin function maybe_convert_keyword
maybe_convert_keyword:                  # @maybe_convert_keyword
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	keywords(%rip), %edi
	movq	-16(%rbp), %rax
	movl	12(%rax), %esi
	callq	map_get@PLT
	cltq
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	copy_token@PLT
	movq	%rax, -32(%rbp)
	movq	TKEYWORD(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.globl	keywords
	.p2align	2
keywords:
	.long	0                               # 0x0
	.globl	TKEYWORD
	.p2align	3
TKEYWORD:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_convert_keyword
	.addrsig_sym map_get
	.addrsig_sym copy_token
	.addrsig_sym TIDENT
	.addrsig_sym keywords
	.addrsig_sym TKEYWORD