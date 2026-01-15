	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function swri_rematrix
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	swri_rematrix
	.p2align	4, 0x90
swri_rematrix:                          # @swri_rematrix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movl	36(%rcx), %edx
	movl	-36(%rbp), %ecx
	callq	*%rax
	movl	$0, -4(%rbp)
	jmp	.LBB0_68
.LBB0_2:
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB0_5
.LBB0_4:
	movl	-36(%rbp), %eax
	andl	$-16, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	imull	(%rcx), %eax
	movl	%eax, -64(%rbp)
.LBB0_5:
	movq	-16(%rbp), %rcx
	movb	$1, %al
	cmpl	$0, 84(%rcx)
	movb	%al, -93(%rbp)                  # 1-byte Spill
	je	.LBB0_7
# %bb.6:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	84(%rax), %edi
	callq	av_get_channel_layout_nb_channels@PLT
	movq	%rax, %rcx
	movq	-104(%rbp), %rax                # 8-byte Reload
	cmpq	%rcx, %rax
	sete	%al
	movb	%al, -93(%rbp)                  # 1-byte Spill
.LBB0_7:
	movb	-93(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movq	-16(%rbp), %rcx
	movb	$1, %al
	cmpl	$0, 80(%rcx)
	movb	%al, -105(%rbp)                 # 1-byte Spill
	je	.LBB0_9
# %bb.8:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	80(%rax), %edi
	callq	av_get_channel_layout_nb_channels@PLT
	movq	%rax, %rcx
	movq	-120(%rbp), %rax                # 8-byte Reload
	cmpq	%rcx, %rax
	sete	%al
	movb	%al, -105(%rbp)                 # 1-byte Spill
.LBB0_9:
	movb	-105(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	av_assert0@PLT
	movl	$0, -44(%rbp)
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
                                        #       Child Loop BB0_38 Depth 3
                                        #     Child Loop BB0_46 Depth 2
                                        #       Child Loop BB0_48 Depth 3
                                        #     Child Loop BB0_55 Depth 2
                                        #       Child Loop BB0_57 Depth 3
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB0_67
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	testl	%eax, %eax
	je	.LBB0_12
	jmp	.LBB0_69
.LBB0_69:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-124(%rbp), %eax                # 4-byte Reload
	subl	$1, %eax
	je	.LBB0_15
	jmp	.LBB0_70
.LBB0_70:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-124(%rbp), %eax                # 4-byte Reload
	subl	$2, %eax
	je	.LBB0_27
	jmp	.LBB0_34
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movl	-36(%rbp), %eax
	movl	%eax, -140(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	32(%rax), %edi
	callq	av_get_bytes_per_sample@PLT
	movl	-140(%rbp), %edx                # 4-byte Reload
	movq	-136(%rbp), %rdi                # 8-byte Reload
	imull	%eax, %edx
	xorl	%esi, %esi
	callq	memset@PLT
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_65
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	4(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-48(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_16
	jp	.LBB0_16
	jmp	.LBB0_22
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-44(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-48(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-44(%rbp), %r8
	imulq	%r8, %rcx
	movslq	-48(%rbp), %r8
	addq	%r8, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	-60(%rbp), %r8d
	callq	*%rax
.LBB0_19:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-44(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-64(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%ecx, %edi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-48(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-64(%rbp), %rdx
	addq	%rdx, %rcx
	movl	%ecx, %esi
	movq	-16(%rbp), %rcx
	movl	36(%rcx), %edx
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-44(%rbp), %r8
	imulq	%r8, %rcx
	movslq	-48(%rbp), %r8
	addq	%r8, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	-36(%rbp), %r8d
	subl	-60(%rbp), %r8d
	callq	*%rax
.LBB0_21:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_26
.LBB0_22:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	imull	(%rax), %edx
	callq	memcpy@PLT
	jmp	.LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
.LBB0_25:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_65
.LBB0_27:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	4(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	8(%rax), %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-44(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-68(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-72(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %ecx
	movq	-32(%rbp), %r8
	movq	8(%r8), %r8
	movslq	-44(%rbp), %r9
	imulq	%r9, %r8
	movslq	-68(%rbp), %r9
	addq	%r9, %r8
                                        # kill: def $r8d killed $r8d killed $r8
	movq	-32(%rbp), %r9
	movq	8(%r9), %r9
	movslq	-44(%rbp), %r10
	imulq	%r10, %r9
	movslq	-72(%rbp), %r10
	addq	%r10, %r9
                                        # kill: def $r9d killed $r9d killed $r9
	movl	-60(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
	jmp	.LBB0_31
.LBB0_30:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-44(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-68(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-72(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movq	-16(%rbp), %rcx
	movl	36(%rcx), %ecx
	movq	-32(%rbp), %r8
	movq	8(%r8), %r8
	movslq	-44(%rbp), %r9
	imulq	%r9, %r8
	movslq	-68(%rbp), %r9
	addq	%r9, %r8
                                        # kill: def $r8d killed $r8d killed $r8
	movq	-32(%rbp), %r9
	movq	8(%r9), %r9
	movslq	-44(%rbp), %r10
	imulq	%r10, %r9
	movslq	-72(%rbp), %r10
	addq	%r10, %r9
                                        # kill: def $r9d killed $r9d killed $r9
	movl	-60(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
.LBB0_31:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-44(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdi
	movslq	-64(%rbp), %rcx
	addq	%rcx, %rdi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-68(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movslq	-64(%rbp), %rcx
	addq	%rcx, %rsi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-72(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rdx
	movslq	-64(%rbp), %rcx
	addq	%rcx, %rdx
	movq	-16(%rbp), %rcx
	movl	36(%rcx), %ecx
	movq	-32(%rbp), %r8
	movq	8(%r8), %r8
	movslq	-44(%rbp), %r9
	imulq	%r9, %r8
	movslq	-68(%rbp), %r9
	addq	%r9, %r8
                                        # kill: def $r8d killed $r8d killed $r8
	movq	-32(%rbp), %r9
	movq	8(%r9), %r9
	movslq	-44(%rbp), %r10
	imulq	%r10, %r9
	movslq	-72(%rbp), %r10
	addq	%r10, %r9
                                        # kill: def $r9d killed $r9d killed $r9
	movl	-36(%rbp), %r10d
	subl	-60(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
.LBB0_33:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_65
.LBB0_34:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	AV_SAMPLE_FMT_FLTP(%rip), %eax
	jne	.LBB0_44
# %bb.35:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, -52(%rbp)
.LBB0_36:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_43
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	movl	$0, -56(%rbp)
.LBB0_38:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-44(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_41
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=3
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-48(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm2            # xmm2 = mem[0],zero,zero,zero
	movss	-76(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_38
.LBB0_41:                               #   in Loop: Header=BB0_36 Depth=2
	movss	-76(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.42:                               #   in Loop: Header=BB0_36 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_36
.LBB0_43:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_64
.LBB0_44:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	AV_SAMPLE_FMT_DBLP(%rip), %eax
	jne	.LBB0_54
# %bb.45:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, -52(%rbp)
.LBB0_46:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_48 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_53
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	$0, -56(%rbp)
.LBB0_48:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-44(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_51
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=3
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-48(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm2            # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm1                # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
# %bb.50:                               #   in Loop: Header=BB0_48 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_48
.LBB0_51:                               #   in Loop: Header=BB0_46 Depth=2
	movsd	-88(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
# %bb.52:                               #   in Loop: Header=BB0_46 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_46
.LBB0_53:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_63
.LBB0_54:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, -52(%rbp)
.LBB0_55:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_62
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$0, -92(%rbp)
	movl	$0, -56(%rbp)
.LBB0_57:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-44(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_60
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=3
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movslq	-44(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-48(%rbp), %rdx
	imull	(%rcx,%rdx,4), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
# %bb.59:                               #   in Loop: Header=BB0_57 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_57
.LBB0_60:                               #   in Loop: Header=BB0_55 Depth=2
	movl	-92(%rbp), %edx
	addl	$16384, %edx                    # imm = 0x4000
	sarl	$15, %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.61:                               #   in Loop: Header=BB0_55 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_55
.LBB0_62:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_63
.LBB0_63:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_64
.LBB0_64:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_65
.LBB0_65:                               #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_66
.LBB0_66:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_10
.LBB0_67:
	movl	$0, -4(%rbp)
.LBB0_68:
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AV_SAMPLE_FMT_FLTP
	.p2align	2
AV_SAMPLE_FMT_FLTP:
	.long	0                               # 0x0
	.globl	AV_SAMPLE_FMT_DBLP
	.p2align	2
AV_SAMPLE_FMT_DBLP:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_assert0
	.addrsig_sym av_get_channel_layout_nb_channels
	.addrsig_sym memset
	.addrsig_sym av_get_bytes_per_sample
	.addrsig_sym memcpy
	.addrsig_sym AV_SAMPLE_FMT_FLTP
	.addrsig_sym AV_SAMPLE_FMT_DBLP