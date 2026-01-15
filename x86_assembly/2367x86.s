	.text
	.p2align	4, 0x90                         # -- Begin function swr_convert_internal
swr_convert_internal:                   # @swr_convert_internal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	cmpl	$0, 192(%rax)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-16(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	callq	swri_audio_convert@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_101
.LBB0_2:
	movq	-16(%rbp), %rdi
	addq	$272, %rdi                      # imm = 0x110
	movl	-44(%rbp), %esi
	callq	swri_realloc_audio@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_4
# %bb.3:
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_101
.LBB0_4:
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB0_8
# %bb.5:
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-16(%rbp), %rdi
	addq	$240, %rdi
	movl	-28(%rbp), %esi
	callq	swri_realloc_audio@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_7
# %bb.6:
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_101
.LBB0_7:
	jmp	.LBB0_11
.LBB0_8:
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	176(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-16(%rbp), %rdi
	addq	$240, %rdi
	movl	-44(%rbp), %esi
	callq	swri_realloc_audio@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_10
# %bb.9:
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_101
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movq	-16(%rbp), %rdi
	addq	$208, %rdi
	movl	-28(%rbp), %esi
	callq	swri_realloc_audio@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_13
# %bb.12:
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_101
.LBB0_13:
	movq	-16(%rbp), %rax
	addq	$272, %rax                      # imm = 0x110
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	240(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	248(%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	256(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	264(%rax), %rax
	movq	%rax, -120(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	216(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	224(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	232(%rax), %rax
	movq	%rax, -88(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB0_17
# %bb.14:
	movq	-16(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB0_17
# %bb.15:
	movq	-16(%rbp), %rax
	cmpl	$0, 200(%rax)
	jne	.LBB0_17
# %bb.16:
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB0_17:
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB0_19
# %bb.18:
	movq	-16(%rbp), %rax
	cmpl	$0, 192(%rax)
	jne	.LBB0_21
	jmp	.LBB0_20
.LBB0_19:
	movq	-16(%rbp), %rax
	cmpl	$0, 196(%rax)
	jne	.LBB0_21
.LBB0_20:
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB0_21:
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB0_23
# %bb.22:
	movq	-16(%rbp), %rax
	cmpl	$0, 196(%rax)
	jne	.LBB0_25
	jmp	.LBB0_24
.LBB0_23:
	movq	-16(%rbp), %rax
	cmpl	$0, 192(%rax)
	jne	.LBB0_25
.LBB0_24:
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB0_25:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jne	.LBB0_39
# %bb.26:
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB0_39
# %bb.27:
	movq	-16(%rbp), %rax
	cmpl	$128, 16(%rax)
	jne	.LBB0_29
# %bb.28:
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	andl	$31, %eax
	cmpl	$0, %eax
	jne	.LBB0_39
.LBB0_29:
	movq	-72(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_31
# %bb.30:
	movl	-28(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	FFMIN@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	168(%rax), %edi
	callq	av_assert0@PLT
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	copy@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_101
.LBB0_31:
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_33
# %bb.32:
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	%rax, -72(%rbp)
	jmp	.LBB0_37
.LBB0_33:
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_35
# %bb.34:
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rax, -72(%rbp)
	jmp	.LBB0_36
.LBB0_35:
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB0_36:
	jmp	.LBB0_37
.LBB0_37:
	jmp	.LBB0_38
.LBB0_38:
	jmp	.LBB0_39
.LBB0_39:
	movq	-40(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB0_41
# %bb.40:
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	callq	swri_audio_convert@PLT
.LBB0_41:
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB0_47
# %bb.42:
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB0_44
# %bb.43:
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	resample@PLT
	movl	%eax, -28(%rbp)
.LBB0_44:
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB0_46
# %bb.45:
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r8d
	callq	swri_rematrix@PLT
.LBB0_46:
	jmp	.LBB0_52
.LBB0_47:
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB0_49
# %bb.48:
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r8d
	callq	swri_rematrix@PLT
.LBB0_49:
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB0_51
# %bb.50:
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-64(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	resample@PLT
	movl	%eax, -28(%rbp)
.LBB0_51:
	jmp	.LBB0_52
.LBB0_52:
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB0_100
# %bb.53:
	cmpl	$0, -28(%rbp)
	je	.LBB0_100
# %bb.54:
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB0_99
# %bb.55:
	movl	-28(%rbp), %edi
	movl	$65536, %esi                    # imm = 0x10000
	callq	FFMAX@PLT
	movl	%eax, -160(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_59
# %bb.56:
	movq	-16(%rbp), %rax
	addq	$32, %rax
	addq	$56, %rax
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rdi
	addq	$32, %rdi
	addq	$56, %rdi
	movl	-160(%rbp), %esi
	callq	swri_realloc_audio@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_58
# %bb.57:
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_101
.LBB0_58:
	jmp	.LBB0_59
.LBB0_59:
	movq	-16(%rbp), %rdi
	addq	$32, %rdi
	addq	$24, %rdi
	movl	-160(%rbp), %esi
	callq	swri_realloc_audio@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_61
# %bb.60:
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_101
.LBB0_61:
	cmpl	$0, -76(%rbp)
	je	.LBB0_69
# %bb.62:
	movl	$0, -156(%rbp)
.LBB0_63:                               # =>This Inner Loop Header: Depth=1
	movslq	-156(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jge	.LBB0_68
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=1
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movslq	-156(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -172(%rbp)                # 4-byte Spill
	movslq	-156(%rbp), %rax
	movabsq	$12345678913579, %rcx           # imm = 0xB3A73CE602B
	imulq	%rcx, %rax
	addq	$3141592, %rax                  # imm = 0x2FEFD8
	movl	$2718281828, %ecx               # imm = 0xA205B064
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rdx, %rcx
	movl	-172(%rbp), %edx                # 4-byte Reload
	movq	-16(%rbp), %rax
	movl	80(%rax), %r8d
	callq	swri_get_dither@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jge	.LBB0_66
# %bb.65:
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_101
.LBB0_66:                               #   in Loop: Header=BB0_63 Depth=1
	jmp	.LBB0_67
.LBB0_67:                               #   in Loop: Header=BB0_63 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB0_63
.LBB0_68:
	jmp	.LBB0_69
.LBB0_69:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	addl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	64(%rcx), %eax
	jle	.LBB0_71
# %bb.70:
	movq	-16(%rbp), %rax
	movl	$0, 48(%rax)
.LBB0_71:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	SWR_DITHER_NS(%rip), %rax
	jge	.LBB0_92
# %bb.72:
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB0_86
# %bb.73:
	movl	-28(%rbp), %eax
	andl	$-16, %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	movq	-72(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB0_79
# %bb.74:
	movl	$0, -156(%rbp)
.LBB0_75:                               # =>This Inner Loop Header: Depth=1
	movslq	-156(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB0_78
# %bb.76:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	-152(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-156(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-156(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movslq	-156(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	movq	-16(%rbp), %r8
	imull	48(%r8), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdx
	movq	-16(%rbp), %rcx
	movl	136(%rcx), %ecx
	movl	-164(%rbp), %r10d
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	%r10d, (%rsp)
	callq	*%rax
# %bb.77:                               #   in Loop: Header=BB0_75 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB0_75
.LBB0_78:
	jmp	.LBB0_79
.LBB0_79:
	movl	-28(%rbp), %eax
	cmpl	-164(%rbp), %eax
	je	.LBB0_85
# %bb.80:
	movl	$0, -156(%rbp)
.LBB0_81:                               # =>This Inner Loop Header: Depth=1
	movslq	-156(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB0_84
# %bb.82:                               #   in Loop: Header=BB0_81 Depth=1
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	-152(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-156(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movslq	-168(%rbp), %rcx
	addq	%rcx, %rdi
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-156(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movslq	-168(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movslq	-156(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	movq	-16(%rbp), %r8
	imull	48(%r8), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdx
	movslq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movq	-16(%rbp), %rcx
	movl	120(%rcx), %ecx
	movl	-28(%rbp), %r10d
	subl	-164(%rbp), %r10d
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	%r10d, (%rsp)
	callq	*%rax
# %bb.83:                               #   in Loop: Header=BB0_81 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB0_81
.LBB0_84:
	jmp	.LBB0_85
.LBB0_85:
	jmp	.LBB0_91
.LBB0_86:
	movl	$0, -156(%rbp)
.LBB0_87:                               # =>This Inner Loop Header: Depth=1
	movslq	-156(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB0_90
# %bb.88:                               #   in Loop: Header=BB0_87 Depth=1
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	-152(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-156(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-156(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movslq	-156(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	movq	-16(%rbp), %r8
	imull	48(%r8), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdx
	movq	-16(%rbp), %rcx
	movl	120(%rcx), %ecx
	movl	-28(%rbp), %r10d
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	%r10d, (%rsp)
	callq	*%rax
# %bb.89:                               #   in Loop: Header=BB0_87 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB0_87
.LBB0_90:
	jmp	.LBB0_91
.LBB0_91:
	jmp	.LBB0_98
.LBB0_92:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)                # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_97
# %bb.102:
	movq	-184(%rbp), %rax                # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_93:
	movq	-16(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	$32, %rcx
	addq	$24, %rcx
	movl	-28(%rbp), %r8d
	callq	swri_noise_shaping_int16@PLT
	jmp	.LBB0_97
.LBB0_94:
	movq	-16(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	$32, %rcx
	addq	$24, %rcx
	movl	-28(%rbp), %r8d
	callq	swri_noise_shaping_int32@PLT
	jmp	.LBB0_97
.LBB0_95:
	movq	-16(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	$32, %rcx
	addq	$24, %rcx
	movl	-28(%rbp), %r8d
	callq	swri_noise_shaping_float@PLT
	jmp	.LBB0_97
.LBB0_96:
	movq	-16(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	$32, %rcx
	addq	$24, %rcx
	movl	-28(%rbp), %r8d
	callq	swri_noise_shaping_double@PLT
.LBB0_97:
	jmp	.LBB0_98
.LBB0_98:
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	48(%rax), %ecx
	movl	%ecx, 48(%rax)
.LBB0_99:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	swri_audio_convert@PLT
.LBB0_100:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_101:
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_94-.LJTI0_0
	.long	.LBB0_93-.LJTI0_0
	.long	.LBB0_95-.LJTI0_0
	.long	.LBB0_96-.LJTI0_0
                                        # -- End function
	.bss
	.globl	SWR_DITHER_NS
	.p2align	3
SWR_DITHER_NS:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym swr_convert_internal
	.addrsig_sym av_assert0
	.addrsig_sym swri_audio_convert
	.addrsig_sym swri_realloc_audio
	.addrsig_sym FFMIN
	.addrsig_sym copy
	.addrsig_sym resample
	.addrsig_sym swri_rematrix
	.addrsig_sym FFMAX
	.addrsig_sym swri_get_dither
	.addrsig_sym swri_noise_shaping_int16
	.addrsig_sym swri_noise_shaping_int32
	.addrsig_sym swri_noise_shaping_float
	.addrsig_sym swri_noise_shaping_double
	.addrsig_sym SWR_DITHER_NS