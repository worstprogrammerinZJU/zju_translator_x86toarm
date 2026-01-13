	.text
	.globl	decFloatIsPositive              # -- Begin function decFloatIsPositive
	.p2align	4, 0x90
decFloatIsPositive:                     # @decFloatIsPositive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	DFISSIGNED@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_3
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	DFISZERO@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rdi
	callq	DFISNAN@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_3:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISSIGNED
	.addrsig_sym DFISZERO
	.addrsig_sym DFISNAN