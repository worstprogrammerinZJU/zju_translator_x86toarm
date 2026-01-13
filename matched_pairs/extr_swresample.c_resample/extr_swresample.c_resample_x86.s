	.text
	.p2align	4, 0x90                         # -- Begin function resample
resample:                               # @resample
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, ARCH_X86(%rip)
	movb	%al, -173(%rbp)                 # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	SWR_ENGINE_SWR(%rip), %rax
	sete	%al
	movb	%al, -173(%rbp)                 # 1-byte Spill
.LBB0_2:
	movb	-173(%rbp), %dl                 # 1-byte Reload
	xorl	%eax, %eax
	movl	$7, %ecx
	testb	$1, %dl
	cmovnel	%ecx, %eax
	movl	%eax, -156(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert1@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert1@PLT
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rcx
	cmpq	16(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert1@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	56(%rcx), %edi
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %r8
	addq	$8, %r8
	movq	-16(%rbp), %r9
	addq	$12, %r9
	leaq	-80(%rbp), %rdx
	callq	*%rax
	movl	%eax, -152(%rbp)
	movl	-152(%rbp), %eax
	cmpl	INT_MAX(%rip), %eax
	jne	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_42
.LBB0_4:
	cmpl	$0, -152(%rbp)
	jge	.LBB0_6
# %bb.5:
	movl	-152(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_42
.LBB0_6:
	cmpl	$0, -152(%rbp)
	je	.LBB0_8
# %bb.7:
	movl	-152(%rbp), %edx
	leaq	-80(%rbp), %rsi
	movq	%rsi, %rdi
	callq	buf_set@PLT
	movl	-152(%rbp), %ecx
	movl	-44(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB0_18
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB0_18
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-144(%rbp), %rdi
	callq	buf_set@PLT
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	56(%rcx), %edi
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %r8d
	leaq	-112(%rbp), %rsi
	leaq	-144(%rbp), %rcx
	leaq	-168(%rbp), %r9
	callq	*%rax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %ecx
	movl	-28(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-160(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-160(%rbp), %edx
	leaq	-112(%rbp), %rsi
	movq	%rsi, %rdi
	callq	buf_set@PLT
	movl	-168(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, 12(%rax)
	movl	-168(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	cmpl	$0, -44(%rbp)
	jne	.LBB0_15
# %bb.14:
	jmp	.LBB0_41
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-152(%rbp), %eax
	jg	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	xorl	%edx, %edx
	subl	12(%rax), %edx
	leaq	-80(%rbp), %rsi
	movq	%rsi, %rdi
	callq	buf_set@PLT
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movl	$0, -152(%rbp)
.LBB0_17:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	jne	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jle	.LBB0_22
.LBB0_20:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -192(%rbp)                # 4-byte Spill
	movl	-28(%rbp), %eax
	movl	%eax, -188(%rbp)                # 4-byte Spill
	movl	-44(%rbp), %edi
	subl	-156(%rbp), %edi
	xorl	%esi, %esi
	callq	FFMAX@PLT
	movl	-192(%rbp), %edi                # 4-byte Reload
	movl	-188(%rbp), %edx                # 4-byte Reload
	movl	%eax, %r8d
	movq	-184(%rbp), %rax                # 8-byte Reload
	leaq	-112(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-168(%rbp), %r9
	callq	*%rax
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %ecx
	movl	-28(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-160(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-160(%rbp), %edx
	leaq	-112(%rbp), %rsi
	movq	%rsi, %rdi
	callq	buf_set@PLT
	movl	-168(%rbp), %ecx
	movl	-44(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	-168(%rbp), %edx
	leaq	-80(%rbp), %rsi
	movq	%rsi, %rdi
	callq	buf_set@PLT
.LBB0_22:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movq	-16(%rbp), %rcx
	addl	12(%rcx), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jle	.LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	addl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jg	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	-144(%rbp), %rdi
	callq	buf_set@PLT
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	leaq	-144(%rbp), %rsi
	callq	copy@PLT
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.LBB0_28
.LBB0_25:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movl	-164(%rbp), %esi
	callq	swri_realloc_audio@PLT
	movl	%eax, -160(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_27
# %bb.26:
	movl	-160(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_42
.LBB0_27:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB0_39
# %bb.29:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -172(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB0_33
# %bb.30:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	addl	$2, %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	addl	$2, %eax
	movl	%eax, -172(%rbp)
.LBB0_33:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	addl	12(%rax), %edx
	leaq	-144(%rbp), %rdi
	callq	buf_set@PLT
	movl	-172(%rbp), %edx
	leaq	-144(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	copy@PLT
	movl	-172(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	12(%rax), %ecx
	movl	%ecx, 12(%rax)
	movl	-172(%rbp), %ecx
	movl	-44(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	-172(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-172(%rbp), %edx
	leaq	-80(%rbp), %rsi
	movq	%rsi, %rdi
	callq	buf_set@PLT
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-172(%rbp), %eax
	jne	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_40
.LBB0_36:                               #   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -156(%rbp)
	je	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$0, -156(%rbp)
	jmp	.LBB0_40
.LBB0_38:
	jmp	.LBB0_39
.LBB0_39:
	jmp	.LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_11 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_11
	jmp	.LBB0_41
.LBB0_41:
	cmpl	$0, -28(%rbp)
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-148(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_42:
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ARCH_X86
	.p2align	3
ARCH_X86:
	.quad	0                               # 0x0
	.globl	SWR_ENGINE_SWR
	.p2align	3
SWR_ENGINE_SWR:
	.quad	0                               # 0x0
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resample
	.addrsig_sym av_assert1
	.addrsig_sym buf_set
	.addrsig_sym FFMAX
	.addrsig_sym copy
	.addrsig_sym swri_realloc_audio
	.addrsig_sym ARCH_X86
	.addrsig_sym SWR_ENGINE_SWR
	.addrsig_sym INT_MAX