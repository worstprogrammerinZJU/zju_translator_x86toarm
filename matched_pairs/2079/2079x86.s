	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function get_region_detections
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	get_region_detections
	.p2align	4, 0x90
get_region_detections:                  # @get_region_detections
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$232, %rsp
	movq	72(%rbp), %rax
	leaq	16(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movq	%r8, -40(%rbp)
	movss	%xmm1, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, -72(%rbp)
	cmpl	$2, 8(%rax)
	jne	.LBB0_24
# %bb.1:
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movq	(%rcx), %rax
	movslq	12(%rcx), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -56(%rbp)
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_6 Depth 3
                                        #         Child Loop BB0_8 Depth 4
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-56(%rbp), %eax
	cmpl	16(%rcx), %eax
	jge	.LBB0_19
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$0, -52(%rbp)
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
                                        #         Child Loop BB0_8 Depth 4
	movq	-152(%rbp), %rax                # 8-byte Reload
	movl	-52(%rbp), %ecx
	movl	%ecx, -156(%rbp)                # 4-byte Spill
	movl	20(%rax), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-156(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_17
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	movl	$0, -60(%rbp)
.LBB0_6:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_8 Depth 4
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-60(%rbp), %eax
	cmpl	24(%rcx), %eax
	jge	.LBB0_15
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=3
	movl	$0, -64(%rbp)
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        #       Parent Loop BB0_6 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-152(%rbp), %rdx                # 8-byte Reload
	movl	-64(%rbp), %eax
	movl	28(%rdx), %ecx
	addl	32(%rdx), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_13
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=4
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-64(%rbp), %eax
	imull	20(%rcx), %eax
	imull	16(%rcx), %eax
	imull	24(%rcx), %eax
	movl	-60(%rbp), %edx
	imull	20(%rcx), %edx
	imull	16(%rcx), %edx
	addl	%edx, %eax
	movl	-56(%rbp), %edx
	imull	20(%rcx), %edx
	addl	%edx, %eax
	addl	-52(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-64(%rbp), %eax
	imull	20(%rcx), %eax
	imull	16(%rcx), %eax
	imull	24(%rcx), %eax
	movl	-60(%rbp), %edx
	imull	20(%rcx), %edx
	imull	16(%rcx), %edx
	addl	%edx, %eax
	movl	-56(%rbp), %edx
	imull	20(%rcx), %edx
	addl	%edx, %eax
	movl	20(%rcx), %ecx
	subl	-52(%rbp), %ecx
	subl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)
	movq	-80(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-92(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	cmpl	$0, -64(%rbp)
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=4
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-80(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movq	-80(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=4
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=4
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_8
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=3
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_6
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_4
.LBB0_17:                               #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_2 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_2
.LBB0_19:
	movl	$0, -52(%rbp)
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %eax
	cmpl	12(%rcx), %eax
	jge	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %rcx
	movslq	-52(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	addss	(%rcx,%rdx,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	(%rax), %rax
	movslq	-52(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_20
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	movl	$0, -52(%rbp)
.LBB0_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #       Child Loop BB0_61 Depth 3
	movq	-152(%rbp), %rdx                # 8-byte Reload
	movl	-52(%rbp), %eax
	movl	20(%rdx), %ecx
	imull	16(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_73
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=1
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %eax
	cltd
	idivl	20(%rcx)
	movl	%eax, -96(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	20(%rcx)
	movl	%edx, -100(%rbp)
	movl	$0, -60(%rbp)
.LBB0_27:                               #   Parent Loop BB0_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #       Child Loop BB0_61 Depth 3
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-60(%rbp), %eax
	cmpl	24(%rcx), %eax
	jge	.LBB0_71
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=2
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-60(%rbp), %eax
	imull	20(%rcx), %eax
	imull	16(%rcx), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	$0, -56(%rbp)
.LBB0_29:                               #   Parent Loop BB0_25 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-56(%rbp), %eax
	cmpl	28(%rcx), %eax
	jge	.LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=3
	movq	72(%rbp), %rax
	movslq	-104(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movslq	-56(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.31:                               #   in Loop: Header=BB0_29 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_29
.LBB0_32:                               #   in Loop: Header=BB0_27 Depth=2
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-60(%rbp), %esi
	imull	20(%rcx), %esi
	imull	16(%rcx), %esi
	addl	-52(%rbp), %esi
	movl	32(%rcx), %edx
	xorl	%eax, %eax
	movq	48(%rcx), %rdi
	movq	%rsp, %rax
	movq	%rdi, 48(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edi, %edi
	callq	entry_index@PLT
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	%eax, -108(%rbp)
	movl	-60(%rbp), %esi
	imull	20(%rcx), %esi
	imull	16(%rcx), %esi
	addl	-52(%rbp), %esi
	xorl	%eax, %eax
	movq	48(%rcx), %rdx
	movq	%rsp, %rax
	movq	%rdx, 48(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edx, %edx
	movl	%edx, %edi
	callq	entry_index@PLT
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	%eax, -112(%rbp)
	movl	-60(%rbp), %esi
	imull	20(%rcx), %esi
	imull	16(%rcx), %esi
	addl	-52(%rbp), %esi
	xorl	%eax, %eax
	movq	48(%rcx), %rdx
	movq	%rsp, %rax
	movq	%rdx, 48(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edi, %edi
	movl	$4, %edx
	callq	entry_index@PLT
	movl	%eax, %ecx
	movq	-152(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -116(%rbp)
	cmpq	$0, 40(%rax)
	je	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_27 Depth=2
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
	jmp	.LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_27 Depth=2
	movq	-72(%rbp), %rax
	movslq	-108(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -160(%rbp)               # 4-byte Spill
.LBB0_35:                               #   in Loop: Header=BB0_27 Depth=2
	movq	-152(%rbp), %rbx                # 8-byte Reload
	movss	-160(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -120(%rbp)
	movq	-72(%rbp), %rdi
	movl	48(%rbx), %esi
	movl	-60(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-100(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	20(%rbx), %r11d
	movl	16(%rbx), %r10d
	movl	20(%rbx), %eax
	imull	16(%rbx), %eax
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	get_region_box@PLT
	movl	%eax, %ecx
	movq	72(%rbp), %rax
	movslq	-104(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movl	%ecx, 24(%rax)
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	ucomiss	-28(%rbp), %xmm0
	jbe	.LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_27 Depth=2
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	jmp	.LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_27 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -164(%rbp)               # 4-byte Spill
	jmp	.LBB0_38
.LBB0_38:                               #   in Loop: Header=BB0_27 Depth=2
	movss	-164(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	72(%rbp), %rax
	movslq	-104(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 8(%rax)
	movq	72(%rbp), %rax
	movslq	-104(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_44
# %bb.39:                               #   in Loop: Header=BB0_27 Depth=2
	movl	$0, -56(%rbp)
.LBB0_40:                               #   Parent Loop BB0_25 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-56(%rbp), %eax
	movl	32(%rcx), %ecx
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_43
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=3
	movq	-152(%rbp), %rsi                # 8-byte Reload
	movq	(%rsi), %rax
	movl	-116(%rbp), %ecx
	movl	-56(%rbp), %edx
	imull	20(%rsi), %edx
	imull	16(%rsi), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	72(%rbp), %rax
	movslq	-104(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movslq	-56(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.42:                               #   in Loop: Header=BB0_40 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_40
.LBB0_43:                               #   in Loop: Header=BB0_27 Depth=2
	jmp	.LBB0_44
.LBB0_44:                               #   in Loop: Header=BB0_27 Depth=2
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-60(%rbp), %esi
	imull	20(%rcx), %esi
	imull	16(%rcx), %esi
	addl	-52(%rbp), %esi
	movl	32(%rcx), %edx
	cmpq	$0, 40(%rcx)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addl	%eax, %edx
	xorl	%eax, %eax
	movq	48(%rcx), %rdi
	movq	%rsp, %rax
	movq	%rdi, 48(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edi, %edi
	callq	entry_index@PLT
	movl	%eax, %ecx
	movq	-152(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -124(%rbp)
	cmpl	$0, 36(%rax)
	je	.LBB0_59
# %bb.45:                               #   in Loop: Header=BB0_27 Depth=2
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	-72(%rbp), %rdi
	movslq	-124(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdi
	movl	28(%rax), %esi
	movl	36(%rax), %edx
	movl	20(%rax), %r8d
	imull	16(%rax), %r8d
	xorl	%ecx, %ecx
	callq	hierarchy_predictions@PLT
	cmpq	$0, -40(%rbp)
	je	.LBB0_54
# %bb.46:                               #   in Loop: Header=BB0_27 Depth=2
	movl	$0, -56(%rbp)
.LBB0_47:                               #   Parent Loop BB0_25 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$200, -56(%rbp)
	jge	.LBB0_53
# %bb.48:                               #   in Loop: Header=BB0_47 Depth=3
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-60(%rbp), %esi
	imull	20(%rcx), %esi
	imull	16(%rcx), %esi
	addl	-52(%rbp), %esi
	movl	32(%rcx), %edx
	addl	$1, %edx
	movq	-40(%rbp), %rax
	movslq	-56(%rbp), %rdi
	addl	(%rax,%rdi,4), %edx
	xorl	%eax, %eax
	movq	48(%rcx), %rdi
	movq	%rsp, %rax
	movq	%rdi, 48(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edi, %edi
	callq	entry_index@PLT
	movl	%eax, -128(%rbp)
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	-72(%rbp), %rax
	movslq	-128(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	-132(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	ucomiss	-28(%rbp), %xmm0
	jbe	.LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_47 Depth=3
	movss	-132(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)               # 4-byte Spill
	jmp	.LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_47 Depth=3
	xorps	%xmm0, %xmm0
	movss	%xmm0, -168(%rbp)               # 4-byte Spill
	jmp	.LBB0_51
.LBB0_51:                               #   in Loop: Header=BB0_47 Depth=3
	movss	-168(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	72(%rbp), %rax
	movslq	-104(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movslq	-56(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.52:                               #   in Loop: Header=BB0_47 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_47
.LBB0_53:                               #   in Loop: Header=BB0_27 Depth=2
	jmp	.LBB0_58
.LBB0_54:                               #   in Loop: Header=BB0_27 Depth=2
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	-72(%rbp), %rdi
	movslq	-124(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdi
	movl	36(%rax), %esi
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	20(%rax), %edx
	imull	16(%rax), %edx
	callq	hierarchy_top_prediction@PLT
	movl	%eax, -136(%rbp)
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	ucomiss	-28(%rbp), %xmm0
	jbe	.LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_27 Depth=2
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -172(%rbp)               # 4-byte Spill
	jmp	.LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_27 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -172(%rbp)               # 4-byte Spill
	jmp	.LBB0_57
.LBB0_57:                               #   in Loop: Header=BB0_27 Depth=2
	movss	-172(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	72(%rbp), %rax
	movslq	-104(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movslq	-136(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_58:                               #   in Loop: Header=BB0_27 Depth=2
	jmp	.LBB0_69
.LBB0_59:                               #   in Loop: Header=BB0_27 Depth=2
	movq	72(%rbp), %rax
	movslq	-104(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_60
	jp	.LBB0_60
	jmp	.LBB0_68
.LBB0_60:                               #   in Loop: Header=BB0_27 Depth=2
	movl	$0, -56(%rbp)
.LBB0_61:                               #   Parent Loop BB0_25 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-56(%rbp), %eax
	cmpl	28(%rcx), %eax
	jge	.LBB0_67
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=3
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movl	-60(%rbp), %esi
	imull	20(%rcx), %esi
	imull	16(%rcx), %esi
	addl	-52(%rbp), %esi
	movl	32(%rcx), %edx
	addl	$1, %edx
	addl	-56(%rbp), %edx
	xorl	%eax, %eax
	movq	48(%rcx), %rdi
	movq	%rsp, %rax
	movq	%rdi, 48(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edi, %edi
	callq	entry_index@PLT
	movl	%eax, -140(%rbp)
	movss	-120(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	-72(%rbp), %rax
	movslq	-140(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	-144(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	ucomiss	-28(%rbp), %xmm0
	jbe	.LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_61 Depth=3
	movss	-144(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -176(%rbp)               # 4-byte Spill
	jmp	.LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_61 Depth=3
	xorps	%xmm0, %xmm0
	movss	%xmm0, -176(%rbp)               # 4-byte Spill
	jmp	.LBB0_65
.LBB0_65:                               #   in Loop: Header=BB0_61 Depth=3
	movss	-176(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	72(%rbp), %rax
	movslq	-104(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movslq	-56(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.66:                               #   in Loop: Header=BB0_61 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_61
.LBB0_67:                               #   in Loop: Header=BB0_27 Depth=2
	jmp	.LBB0_68
.LBB0_68:                               #   in Loop: Header=BB0_27 Depth=2
	jmp	.LBB0_69
.LBB0_69:                               #   in Loop: Header=BB0_27 Depth=2
	jmp	.LBB0_70
.LBB0_70:                               #   in Loop: Header=BB0_27 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_27
.LBB0_71:                               #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_72
.LBB0_72:                               #   in Loop: Header=BB0_25 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_25
.LBB0_73:
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	72(%rbp), %rdi
	movl	20(%rax), %esi
	imull	16(%rax), %esi
	imull	24(%rax), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	-48(%rbp), %eax
	movl	%eax, (%rsp)
	callq	correct_region_boxes@PLT
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym entry_index
	.addrsig_sym get_region_box
	.addrsig_sym hierarchy_predictions
	.addrsig_sym hierarchy_top_prediction
	.addrsig_sym correct_region_boxes