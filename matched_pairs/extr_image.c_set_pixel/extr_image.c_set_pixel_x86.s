	.text
	.p2align	4, 0x90                         # -- Begin function set_pixel
set_pixel:                              # @set_pixel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jl	.LBB0_6
# %bb.1:
	cmpl	$0, -8(%rbp)
	jl	.LBB0_6
# %bb.2:
	cmpl	$0, -12(%rbp)
	jl	.LBB0_6
# %bb.3:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-4(%rbp), %eax
	cmpl	(%rcx), %eax
	jge	.LBB0_6
# %bb.4:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-8(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_6
# %bb.5:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	8(%rcx), %eax
	jl	.LBB0_7
.LBB0_6:
	jmp	.LBB0_11
.LBB0_7:
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movl	-4(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	(%rdx), %ecx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	jge	.LBB0_10
# %bb.8:
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movl	-8(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	4(%rdx), %ecx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	jge	.LBB0_10
# %bb.9:
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	8(%rcx), %eax
	setl	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_10:
	movb	-25(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	16(%rsi), %rax
	movl	-12(%rbp), %ecx
	imull	4(%rsi), %ecx
	imull	(%rsi), %ecx
	movl	-8(%rbp), %edx
	imull	(%rsi), %edx
	addl	%edx, %ecx
	addl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_11:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_pixel
	.addrsig_sym assert