	.text
	.globl	swri_audio_convert              # -- Begin function swri_audio_convert
	.p2align	4, 0x90
swri_audio_convert:                     # @swri_audio_convert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$0, -44(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_2
# %bb.1:
	movl	$1, %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
.LBB0_3:
	movl	-108(%rbp), %eax                # 4-byte Reload
	movq	-24(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-16(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB0_12
# %bb.4:
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# %bb.5:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -112(%rbp)                # 4-byte Spill
	jmp	.LBB0_7
.LBB0_6:
	movl	$1, %eax
	movl	%eax, -112(%rbp)                # 4-byte Spill
	jmp	.LBB0_7
.LBB0_7:
	movl	-112(%rbp), %eax                # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -40(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movl	-60(%rbp), %eax
                                        # kill: def $rax killed $eax
	orq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -60(%rbp)
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_8
.LBB0_11:
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	andl	4(%rcx), %eax
	orl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB0_12:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB0_21
# %bb.13:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_15
# %bb.14:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	jmp	.LBB0_16
.LBB0_15:
	movl	$1, %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	jmp	.LBB0_16
.LBB0_16:
	movl	-116(%rbp), %eax                # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -40(%rbp)
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movl	-68(%rbp), %eax
                                        # kill: def $rax killed $eax
	orq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -68(%rbp)
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_17
.LBB0_20:
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	andl	8(%rcx), %eax
	orl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB0_21:
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB0_44
# %bb.22:
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB0_44
# %bb.23:
	cmpl	$0, -52(%rbp)
	jne	.LBB0_44
# %bb.24:
	movl	-36(%rbp), %eax
	andl	$-16, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert1@PLT
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	setle	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert1@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movb	$1, %al
	cmpl	SWR_CH_MAX(%rip), %ecx
	movb	%al, -117(%rbp)                 # 1-byte Spill
	je	.LBB0_26
# %bb.25:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpq	$0, (%rax,%rcx,8)
	setne	%al
	xorb	$-1, %al
	movb	%al, -117(%rbp)                 # 1-byte Spill
.LBB0_26:
	movb	-117(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert2@PLT
	cmpl	$0, -44(%rbp)
	jle	.LBB0_41
# %bb.27:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_39
# %bb.28:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_30
# %bb.29:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	jmp	.LBB0_31
.LBB0_30:
	movl	$1, %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	jmp	.LBB0_31
.LBB0_31:
	movl	-124(%rbp), %eax                # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	$0, -40(%rbp)
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB0_38
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-40(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-40(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movl	-44(%rbp), %eax
	movl	%eax, -128(%rbp)                # 4-byte Spill
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_32 Depth=1
	movl	$1, %eax
	movl	%eax, -156(%rbp)                # 4-byte Spill
	jmp	.LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_32 Depth=1
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -156(%rbp)                # 4-byte Spill
.LBB0_36:                               #   in Loop: Header=BB0_32 Depth=1
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	-136(%rbp), %rsi                # 8-byte Reload
	movq	-144(%rbp), %rdi                # 8-byte Reload
	movl	-128(%rbp), %edx                # 4-byte Reload
	movl	-156(%rbp), %ecx                # 4-byte Reload
	imull	%ecx, %edx
	callq	*%rax
# %bb.37:                               #   in Loop: Header=BB0_32 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_32
.LBB0_38:
	jmp	.LBB0_40
.LBB0_39:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rsi
	movl	-44(%rbp), %edx
	callq	*%rax
.LBB0_40:
	jmp	.LBB0_41
.LBB0_41:
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB0_43
# %bb.42:
	movl	$0, -4(%rbp)
	jmp	.LBB0_63
.LBB0_43:
	jmp	.LBB0_44
.LBB0_44:
	movl	$0, -40(%rbp)
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_62
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_45 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -160(%rbp)                # 4-byte Spill
	jmp	.LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_45 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -160(%rbp)                # 4-byte Spill
.LBB0_49:                               #   in Loop: Header=BB0_45 Depth=1
	movl	-160(%rbp), %eax                # 4-byte Reload
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jge	.LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_45 Depth=1
	xorl	%eax, %eax
	movl	%eax, -164(%rbp)                # 4-byte Spill
	jmp	.LBB0_55
.LBB0_51:                               #   in Loop: Header=BB0_45 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_45 Depth=1
	movl	$1, %eax
	movl	%eax, -168(%rbp)                # 4-byte Spill
	jmp	.LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_45 Depth=1
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -168(%rbp)                # 4-byte Spill
.LBB0_54:                               #   in Loop: Header=BB0_45 Depth=1
	movl	-168(%rbp), %eax                # 4-byte Reload
	movq	-32(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, -164(%rbp)                # 4-byte Spill
.LBB0_55:                               #   in Loop: Header=BB0_45 Depth=1
	movl	-164(%rbp), %eax                # 4-byte Reload
	movl	%eax, -80(%rbp)
	cmpl	$0, -76(%rbp)
	jge	.LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_45 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	jmp	.LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_45 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
.LBB0_58:                               #   in Loop: Header=BB0_45 Depth=1
	movq	-176(%rbp), %rax                # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	-48(%rbp), %ecx
	imull	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_45 Depth=1
	jmp	.LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_45 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-96(%rbp), %rdi
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdi
	movq	-88(%rbp), %rsi
	movl	-44(%rbp), %ecx
	imull	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rsi
	movl	-80(%rbp), %edx
	movl	-48(%rbp), %ecx
	movq	-104(%rbp), %r8
	callq	*%rax
.LBB0_61:                               #   in Loop: Header=BB0_45 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_45
.LBB0_62:
	movl	$0, -4(%rbp)
.LBB0_63:
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SWR_CH_MAX
	.p2align	2
SWR_CH_MAX:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_assert0
	.addrsig_sym av_assert1
	.addrsig_sym av_assert2
	.addrsig_sym SWR_CH_MAX