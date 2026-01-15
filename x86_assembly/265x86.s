	.text
	.globl	block_is_const                  # -- Begin function block_is_const
	.p2align	4, 0x90
block_is_const:                         # @block_is_const
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	block_is_single@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	je	.LBB0_4
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movb	$1, %al
	cmpq	LOADK(%rip), %rcx
	movb	%al, -10(%rbp)                  # 1-byte Spill
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	PUSHK_UNDER(%rip), %rax
	sete	%al
	movb	%al, -10(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-10(%rbp), %al                  # 1-byte Reload
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_4:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LOADK
	.p2align	3
LOADK:
	.quad	0                               # 0x0
	.globl	PUSHK_UNDER
	.p2align	3
PUSHK_UNDER:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_is_single
	.addrsig_sym LOADK
	.addrsig_sym PUSHK_UNDER