	.text
	.p2align	4, 0x90                         # -- Begin function emptycap_aux
emptycap_aux:                           # @emptycap_aux
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	luaL_checkint@PLT
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	newpatt@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
	cmpl	-28(%rbp), %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jge	.LBB0_2
# %bb.1:
	movl	-28(%rbp), %eax
	cmpl	SHRT_MAX(%rip), %eax
	setle	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_2:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movb	-41(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	callq	luaL_argcheck@PLT
	movq	-40(%rbp), %rdi
	movl	IEmptyCapture(%rip), %esi
	movl	-28(%rbp), %edx
	movl	-12(%rbp), %ecx
	xorl	%r8d, %r8d
	callq	setinstcap@PLT
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SHRT_MAX
	.p2align	2
SHRT_MAX:
	.long	0                               # 0x0
	.globl	IEmptyCapture
	.p2align	2
IEmptyCapture:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emptycap_aux
	.addrsig_sym luaL_checkint
	.addrsig_sym newpatt
	.addrsig_sym luaL_argcheck
	.addrsig_sym setinstcap
	.addrsig_sym SHRT_MAX
	.addrsig_sym IEmptyCapture