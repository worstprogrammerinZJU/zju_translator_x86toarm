	.text
	.p2align	4, 0x90                         # -- Begin function get_pixel
get_pixel:                              # @get_pixel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edx, %eax
	leaq	16(%rbp), %rdx
	movq	%rdx, -24(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	(%rdx), %ecx
	movb	%al, -13(%rbp)                  # 1-byte Spill
	jge	.LBB0_3
# %bb.1:
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movl	-8(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	4(%rdx), %ecx
	movb	%al, -13(%rbp)                  # 1-byte Spill
	jge	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	8(%rcx), %eax
	setl	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB0_3:
	movb	-13(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movq	16(%rsi), %rax
	movl	-12(%rbp), %ecx
	imull	4(%rsi), %ecx
	imull	(%rsi), %ecx
	movl	-8(%rbp), %edx
	imull	(%rsi), %edx
	addl	%edx, %ecx
	addl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_pixel
	.addrsig_sym assert