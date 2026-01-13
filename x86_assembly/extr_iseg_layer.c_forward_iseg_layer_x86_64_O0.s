	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function forward_iseg_layer
.LCPI0_0:
	.quad	0x3f847ae147ae147b              # double 0.01
.LCPI0_1:
	.quad	0xbfb999999999999a              # double -0.10000000000000001
.LCPI0_2:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_3:
	.long	0x3f800000                      # float 1
	.text
	.globl	forward_iseg_layer
	.p2align	4, 0x90
forward_iseg_layer:                     # @forward_iseg_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	leaq	96(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movb	$0, %al
	callq	what_time_is_it_now@PLT
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movsd	%xmm0, -8(%rbp)
	movl	(%rcx), %edx
	movl	%edx, -28(%rbp)
	movq	8(%rcx), %rdi
	movl	16(%rax), %esi
	movl	16(%rcx), %eax
	imull	20(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movq	24(%rcx), %rdi
	movl	16(%rcx), %eax
	imull	20(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movl	-16(%rbp), %eax
	cmpl	20(%rcx), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-112(%rbp), %rax                # 8-byte Reload
	movl	-16(%rbp), %ecx
	imull	16(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	8(%rax), %rdi
	movslq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdi
	movl	32(%rax), %esi
	imull	36(%rax), %esi
	imull	40(%rax), %esi
	movl	LOGISTIC(%rip), %edx
	callq	activate_array@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -16(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_9 Depth 3
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_17 Depth 3
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_39 Depth 3
                                        #         Child Loop BB0_42 Depth 4
                                        #     Child Loop BB0_51 Depth 2
                                        #       Child Loop BB0_57 Depth 3
                                        #     Child Loop BB0_64 Depth 2
                                        #       Child Loop BB0_68 Depth 3
                                        #         Child Loop BB0_71 Depth 4
                                        #           Child Loop BB0_75 Depth 5
                                        #     Child Loop BB0_89 Depth 2
                                        #       Child Loop BB0_91 Depth 3
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movl	-16(%rbp), %eax
	cmpl	20(%rcx), %eax
	jge	.LBB0_98
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -12(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	32(%rcx), %eax
	jge	.LBB0_14
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movl	$0, -24(%rbp)
.LBB0_9:                                #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rdx                # 8-byte Reload
	movl	-24(%rbp), %eax
	movl	36(%rdx), %ecx
	imull	40(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=3
	movq	-112(%rbp), %rax                # 8-byte Reload
	movl	-16(%rbp), %ecx
	imull	16(%rax), %ecx
	movl	-12(%rbp), %edx
	imull	36(%rax), %edx
	imull	40(%rax), %edx
	addl	%edx, %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	8(%rax), %rcx
	movslq	-36(%rbp), %rsi
	xorl	%edx, %edx
	subl	(%rcx,%rsi,4), %edx
	movq	24(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_7
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -12(%rbp)
.LBB0_15:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_22
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	movl	$0, -24(%rbp)
.LBB0_17:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rdx                # 8-byte Reload
	movl	-24(%rbp), %eax
	movl	36(%rdx), %ecx
	imull	40(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=3
	movq	-112(%rbp), %rax                # 8-byte Reload
	movl	-16(%rbp), %ecx
	imull	16(%rax), %ecx
	movl	-12(%rbp), %edx
	addl	32(%rax), %edx
	imull	36(%rax), %edx
	imull	40(%rax), %edx
	addl	%edx, %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movq	8(%rax), %rdx
	movslq	-40(%rbp), %rsi
	xorl	%ecx, %ecx
	subl	(%rdx,%rsi,4), %ecx
	cvtsi2sd	%ecx, %xmm1
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	24(%rax), %rax
	movslq	-40(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_15
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rdi
	xorl	%esi, %esi
	movl	$360, %edx                      # imm = 0x168
	callq	memset@PLT
	movl	$0, -12(%rbp)
.LBB0_23:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
	cmpl	$90, -12(%rbp)
	jge	.LBB0_34
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	movq	-112(%rbp), %rax                # 8-byte Reload
	movl	-28(%rbp), %edi
	movq	56(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	xorl	%esi, %esi
	movl	$1, %ecx
	callq	fill_cpu@PLT
	movq	-112(%rbp), %rdi                # 8-byte Reload
                                        # kill: def $ecx killed $eax
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %rax
	movl	-16(%rbp), %ecx
	imull	64(%rdi), %ecx
	movl	-12(%rbp), %edx
	movl	36(%rdi), %esi
	imull	40(%rdi), %esi
	addl	$1, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_34
.LBB0_26:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$0, -24(%rbp)
.LBB0_27:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rdx                # 8-byte Reload
	movl	-24(%rbp), %eax
	movl	36(%rdx), %ecx
	imull	40(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_32
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=3
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-120(%rbp), %rax                # 8-byte Reload
	movl	-16(%rbp), %ecx
	imull	16(%rdi), %ecx
	movl	-44(%rbp), %edx
	imull	36(%rdi), %edx
	imull	40(%rdi), %edx
	addl	%edx, %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	(%rax), %rax
	movl	-16(%rbp), %ecx
	imull	64(%rdi), %ecx
	movl	-12(%rbp), %edx
	movl	36(%rdi), %esi
	imull	40(%rdi), %esi
	addl	$1, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_29
	jp	.LBB0_29
	jmp	.LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_27 Depth=3
	movq	-112(%rbp), %rax                # 8-byte Reload
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	8(%rax), %rcx
	movslq	-48(%rbp), %rdx
	cvtsi2ssl	(%rcx,%rdx,4), %xmm1
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %esi
	movq	24(%rax), %rcx
	movslq	-48(%rbp), %rdx
	movl	%esi, (%rcx,%rdx,4)
	movl	-28(%rbp), %edi
	movq	8(%rax), %rdx
	movl	-16(%rbp), %ecx
	imull	16(%rax), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movl	32(%rax), %ecx
	imull	36(%rax), %ecx
	imull	40(%rax), %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movl	36(%rax), %ecx
	imull	40(%rax), %ecx
	movq	56(%rax), %rax
	movslq	-12(%rbp), %rsi
	movq	(%rax,%rsi,8), %r8
	movl	$1, %r9d
	movl	%r9d, %esi
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
.LBB0_30:                               #   in Loop: Header=BB0_27 Depth=3
	jmp	.LBB0_31
.LBB0_31:                               #   in Loop: Header=BB0_27 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_27
.LBB0_32:                               #   in Loop: Header=BB0_23 Depth=2
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_23 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_23
.LBB0_34:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$90, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -12(%rbp)
.LBB0_35:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_39 Depth 3
                                        #         Child Loop BB0_42 Depth 4
	cmpl	$90, -12(%rbp)
	jge	.LBB0_50
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %rax
	movl	-16(%rbp), %ecx
	imull	64(%rdi), %ecx
	movl	-12(%rbp), %edx
	movl	36(%rdi), %esi
	imull	40(%rdi), %esi
	addl	$1, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jge	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_50
.LBB0_38:                               #   in Loop: Header=BB0_35 Depth=2
	movl	$0, -24(%rbp)
.LBB0_39:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_42 Depth 4
	movq	-112(%rbp), %rdx                # 8-byte Reload
	movl	-24(%rbp), %eax
	movl	36(%rdx), %ecx
	imull	40(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_48
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=3
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %rax
	movl	-16(%rbp), %ecx
	imull	64(%rdi), %ecx
	movl	-12(%rbp), %edx
	movl	36(%rdi), %esi
	imull	40(%rdi), %esi
	addl	$1, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-72(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_41
	jp	.LBB0_41
	jmp	.LBB0_46
.LBB0_41:                               #   in Loop: Header=BB0_39 Depth=3
	xorps	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	movl	$0, -76(%rbp)
.LBB0_42:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        #       Parent Loop BB0_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-76(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_45
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=4
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movl	-16(%rbp), %eax
	imull	16(%rcx), %eax
	movl	32(%rcx), %edx
	addl	-76(%rbp), %edx
	imull	36(%rcx), %edx
	imull	40(%rcx), %edx
	addl	%edx, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	56(%rcx), %rax
	movslq	-12(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movslq	-76(%rbp), %rdx
	movl	(%rax,%rdx,4), %eax
	movq	48(%rcx), %rsi
	movslq	-12(%rbp), %rdi
	cltd
	idivl	(%rsi,%rdi,4)
	movq	8(%rcx), %rcx
	movslq	-84(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cvtsi2sd	%eax, %xmm0
	movl	$2, %edi
	callq	pow@PLT
	cvtsi2ss	%rax, %xmm0
	addss	-80(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
# %bb.44:                               #   in Loop: Header=BB0_42 Depth=4
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_42
.LBB0_45:                               #   in Loop: Header=BB0_39 Depth=3
	movss	-80(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_46:                               #   in Loop: Header=BB0_39 Depth=3
	jmp	.LBB0_47
.LBB0_47:                               #   in Loop: Header=BB0_39 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_39
.LBB0_48:                               #   in Loop: Header=BB0_35 Depth=2
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rax
	movslq	-12(%rbp), %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm1
	movq	-64(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.49:                               #   in Loop: Header=BB0_35 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_35
.LBB0_50:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -12(%rbp)
.LBB0_51:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
	cmpl	$90, -12(%rbp)
	jge	.LBB0_63
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=2
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rax
	movslq	-12(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	.LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_51 Depth=2
	jmp	.LBB0_62
.LBB0_54:                               #   in Loop: Header=BB0_51 Depth=2
	movq	-112(%rbp), %rax                # 8-byte Reload
	movl	-28(%rbp), %edi
	movq	48(%rax), %rcx
	movslq	-12(%rbp), %rdx
	cvtsi2ssl	(%rcx,%rdx,4), %xmm1
	movss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movq	56(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movl	$1, %edx
	callq	scal_cpu@PLT
	cmpl	$0, -16(%rbp)
	jne	.LBB0_61
# %bb.55:                               #   in Loop: Header=BB0_51 Depth=2
	movq	-120(%rbp), %rax                # 8-byte Reload
	cmpq	$0, 8(%rax)
	jne	.LBB0_61
# %bb.56:                               #   in Loop: Header=BB0_51 Depth=2
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	movq	-64(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	.L.str(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	movl	$0, -20(%rbp)
.LBB0_57:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_60
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=3
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	56(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.59:                               #   in Loop: Header=BB0_57 Depth=3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_57
.LBB0_60:                               #   in Loop: Header=BB0_51 Depth=2
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_61:                               #   in Loop: Header=BB0_51 Depth=2
	jmp	.LBB0_62
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_51
.LBB0_63:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rdi
	callq	free@PLT
	movl	$0, -12(%rbp)
.LBB0_64:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_68 Depth 3
                                        #         Child Loop BB0_71 Depth 4
                                        #           Child Loop BB0_75 Depth 5
	cmpl	$90, -12(%rbp)
	jge	.LBB0_88
# %bb.65:                               #   in Loop: Header=BB0_64 Depth=2
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rax
	movslq	-12(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	.LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_64 Depth=2
	jmp	.LBB0_87
.LBB0_67:                               #   in Loop: Header=BB0_64 Depth=2
	movl	$0, -24(%rbp)
.LBB0_68:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_64 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_71 Depth 4
                                        #           Child Loop BB0_75 Depth 5
	movq	-112(%rbp), %rdx                # 8-byte Reload
	movl	-24(%rbp), %eax
	movl	36(%rdx), %ecx
	imull	40(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_86
# %bb.69:                               #   in Loop: Header=BB0_68 Depth=3
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %rax
	movl	-16(%rbp), %ecx
	imull	64(%rdi), %ecx
	movl	-12(%rbp), %edx
	movl	36(%rdi), %esi
	imull	40(%rdi), %esi
	addl	$1, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-88(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_70
	jp	.LBB0_70
	jmp	.LBB0_84
.LBB0_70:                               #   in Loop: Header=BB0_68 Depth=3
	movl	$0, -20(%rbp)
.LBB0_71:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_64 Depth=2
                                        #       Parent Loop BB0_68 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_75 Depth 5
	cmpl	$90, -20(%rbp)
	jge	.LBB0_83
# %bb.72:                               #   in Loop: Header=BB0_71 Depth=4
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	48(%rax), %rax
	movslq	-20(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	.LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_71 Depth=4
	jmp	.LBB0_82
.LBB0_74:                               #   in Loop: Header=BB0_71 Depth=4
	movl	$0, -92(%rbp)
.LBB0_75:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_64 Depth=2
                                        #       Parent Loop BB0_68 Depth=3
                                        #         Parent Loop BB0_71 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-92(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_81
# %bb.76:                               #   in Loop: Header=BB0_75 Depth=5
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movl	-16(%rbp), %eax
	imull	16(%rcx), %eax
	movl	32(%rcx), %edx
	addl	-92(%rbp), %edx
	imull	36(%rcx), %edx
	imull	40(%rcx), %edx
	addl	%edx, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	56(%rcx), %rax
	movslq	-20(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movslq	-92(%rbp), %rdx
	movl	(%rax,%rdx,4), %eax
	movq	8(%rcx), %rcx
	movslq	-96(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -100(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_75 Depth=5
	movss	-100(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm3           # xmm3 = mem[0],zero
	movsd	%xmm3, -136(%rbp)               # 8-byte Spill
	ucomiss	%xmm2, %xmm1
	movsd	%xmm0, -128(%rbp)               # 8-byte Spill
	ja	.LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_75 Depth=5
	movsd	-136(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)               # 8-byte Spill
.LBB0_100:                              #   in Loop: Header=BB0_75 Depth=5
	movq	-112(%rbp), %rax                # 8-byte Reload
	movsd	-128(%rbp), %xmm1               # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	24(%rax), %rax
	movslq	-96(%rbp), %rcx
	cvtsi2sdl	(%rax,%rcx,4), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_75 Depth=5
	movss	-100(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm3           # xmm3 = mem[0],zero
	movsd	%xmm3, -152(%rbp)               # 8-byte Spill
	ucomiss	%xmm2, %xmm1
	movsd	%xmm0, -144(%rbp)               # 8-byte Spill
	ja	.LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_75 Depth=5
	movsd	-152(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)               # 8-byte Spill
.LBB0_102:                              #   in Loop: Header=BB0_75 Depth=5
	movq	-112(%rbp), %rax                # 8-byte Reload
	movsd	-144(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx     # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movq	%rcx, %xmm1
	movq	24(%rax), %rax
	movslq	-96(%rbp), %rcx
	cvtsi2sdl	(%rax,%rcx,4), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, (%rax,%rcx,4)
.LBB0_79:                               #   in Loop: Header=BB0_75 Depth=5
	jmp	.LBB0_80
.LBB0_80:                               #   in Loop: Header=BB0_75 Depth=5
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_75
.LBB0_81:                               #   in Loop: Header=BB0_71 Depth=4
	jmp	.LBB0_82
.LBB0_82:                               #   in Loop: Header=BB0_71 Depth=4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_71
.LBB0_83:                               #   in Loop: Header=BB0_68 Depth=3
	jmp	.LBB0_84
.LBB0_84:                               #   in Loop: Header=BB0_68 Depth=3
	jmp	.LBB0_85
.LBB0_85:                               #   in Loop: Header=BB0_68 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_68
.LBB0_86:                               #   in Loop: Header=BB0_64 Depth=2
	jmp	.LBB0_87
.LBB0_87:                               #   in Loop: Header=BB0_64 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_64
.LBB0_88:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -12(%rbp)
.LBB0_89:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_91 Depth 3
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_96
# %bb.90:                               #   in Loop: Header=BB0_89 Depth=2
	movl	$0, -24(%rbp)
.LBB0_91:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rdx                # 8-byte Reload
	movl	-24(%rbp), %eax
	movl	36(%rdx), %ecx
	imull	40(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_94
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=3
	movq	-112(%rbp), %rax                # 8-byte Reload
	movl	-16(%rbp), %ecx
	imull	16(%rax), %ecx
	movl	-12(%rbp), %edx
	addl	32(%rax), %edx
	imull	36(%rax), %edx
	imull	40(%rax), %edx
	addl	%edx, %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movq	24(%rax), %rax
	movslq	-104(%rbp), %rcx
	cvtsi2sdl	(%rax,%rcx,4), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, (%rax,%rcx,4)
# %bb.93:                               #   in Loop: Header=BB0_91 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_91
.LBB0_94:                               #   in Loop: Header=BB0_89 Depth=2
	jmp	.LBB0_95
.LBB0_95:                               #   in Loop: Header=BB0_89 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_89
.LBB0_96:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_97
.LBB0_97:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_98:
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	24(%rax), %rdi
	movl	16(%rax), %esi
	imull	20(%rax), %esi
	callq	mag_array@PLT
	movl	$2, %edi
	callq	pow@PLT
	movq	%rax, %rcx
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	72(%rax), %rax
	movq	%rcx, (%rax)
	movb	$0, %al
	callq	what_time_is_it_now@PLT
	subsd	-8(%rbp), %xmm0
	leaq	.L.str.3(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LOGISTIC
	.p2align	2
LOGISTIC:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%4d, %6.3f, "
.L.str.1:
	.asciz	"%6.3f,"
.L.str.2:
	.asciz	"\n"
.L.str.3:
	.asciz	"took %lf sec\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym what_time_is_it_now
	.addrsig_sym memcpy
	.addrsig_sym memset
	.addrsig_sym activate_array
	.addrsig_sym fill_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym calloc
	.addrsig_sym pow
	.addrsig_sym scal_cpu
	.addrsig_sym printf
	.addrsig_sym free
	.addrsig_sym mag_array
	.addrsig_sym LOGISTIC