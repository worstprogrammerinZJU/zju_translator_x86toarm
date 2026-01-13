	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function forward_yolo_layer
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_2:
	.quad	0x3fe8000000000000              # double 0.75
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	0x3f800000                      # float 1
	.text
	.globl	forward_yolo_layer
	.p2align	4, 0x90
forward_yolo_layer:                     # @forward_yolo_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$392, %rsp                      # imm = 0x188
	leaq	112(%rbp), %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	leaq	16(%rbp), %rcx
	movq	%rcx, -312(%rbp)                # 8-byte Spill
	movq	88(%rcx), %rdi
	movl	24(%rax), %esi
	movl	(%rcx), %eax
	imull	4(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movl	$0, -52(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -60(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-60(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %edi
	movl	-60(%rbp), %esi
	imull	12(%rcx), %esi
	imull	16(%rcx), %esi
	xorl	%eax, %eax
	movups	80(%rcx), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edx, %edx
	callq	entry_index@PLT
	movl	%eax, %ecx
	movq	-312(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -64(%rbp)
	movq	88(%rax), %rdi
	movslq	-64(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdi
	movl	12(%rax), %esi
	shll	$1, %esi
	imull	16(%rax), %esi
	movl	LOGISTIC(%rip), %edx
	callq	activate_array@PLT
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %edi
	movl	-60(%rbp), %esi
	imull	12(%rcx), %esi
	imull	16(%rcx), %esi
	movups	80(%rcx), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movl	$4, %edx
	callq	entry_index@PLT
	movl	%eax, %ecx
	movq	-312(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -64(%rbp)
	movq	88(%rax), %rdi
	movslq	-64(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdi
	movl	20(%rax), %esi
	addl	$1, %esi
	imull	12(%rax), %esi
	imull	16(%rax), %esi
	movl	LOGISTIC(%rip), %edx
	callq	activate_array@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movq	72(%rcx), %rdi
	movl	(%rcx), %eax
	imull	4(%rcx), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	xorl	%esi, %esi
	callq	memset@PLT
                                        # kill: def $ecx killed $eax
	movq	-320(%rbp), %rax                # 8-byte Reload
	cmpl	$0, 20(%rax)
	jne	.LBB0_10
# %bb.9:
	jmp	.LBB0_61
.LBB0_10:
	movq	-312(%rbp), %rax                # 8-byte Reload
	xorps	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -84(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	80(%rax), %rax
	movq	$0, (%rax)
	movl	$0, -52(%rbp)
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #         Child Loop BB0_17 Depth 4
                                        #           Child Loop BB0_19 Depth 5
                                        #     Child Loop BB0_39 Depth 2
                                        #       Child Loop BB0_43 Depth 3
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %eax
	cmpl	4(%rcx), %eax
	jge	.LBB0_60
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$0, -48(%rbp)
.LBB0_13:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #         Child Loop BB0_17 Depth 4
                                        #           Child Loop BB0_19 Depth 5
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-48(%rbp), %eax
	cmpl	16(%rcx), %eax
	jge	.LBB0_38
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	movl	$0, -44(%rbp)
.LBB0_15:                               #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_17 Depth 4
                                        #           Child Loop BB0_19 Depth 5
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-44(%rbp), %eax
	cmpl	12(%rcx), %eax
	jge	.LBB0_36
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=3
	movl	$0, -60(%rbp)
.LBB0_17:                               #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        #       Parent Loop BB0_15 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_19 Depth 5
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-60(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_34
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=4
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %edi
	movl	-60(%rbp), %esi
	imull	12(%rcx), %esi
	imull	16(%rcx), %esi
	movl	-48(%rbp), %eax
	imull	12(%rcx), %eax
	addl	%eax, %esi
	addl	-44(%rbp), %esi
	xorl	%eax, %eax
	movups	80(%rcx), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edx, %edx
	callq	entry_index@PLT
	movq	-312(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %ecx
	movq	-320(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -100(%rbp)
	movq	88(%rdi), %rsi
	movq	24(%rdi), %rdx
	movq	32(%rdi), %rcx
	movslq	-60(%rbp), %r8
	movl	(%rcx,%r8,4), %ecx
	movl	-100(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r15d
	movl	12(%rdi), %r14d
	movl	16(%rdi), %ebx
	movl	(%rax), %r11d
	movl	4(%rax), %r10d
	movl	12(%rdi), %eax
	imull	16(%rdi), %eax
	leaq	-120(%rbp), %rdi
	movl	%r15d, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%eax, 40(%rsp)
	callq	get_yolo_box@PLT
	xorps	%xmm0, %xmm0
	movss	%xmm0, -124(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -56(%rbp)
.LBB0_19:                               #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        #       Parent Loop BB0_15 Depth=3
                                        #         Parent Loop BB0_17 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-56(%rbp), %eax
	cmpl	40(%rcx), %eax
	jge	.LBB0_26
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=5
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movq	-320(%rbp), %rax                # 8-byte Reload
	movq	8(%rax), %rsi
	imull	$5, -56(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movl	-52(%rbp), %eax
	imull	44(%rcx), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	leaq	-152(%rbp), %rdi
	movl	$1, %edx
	callq	float_to_box@PLT
	cmpl	$0, -152(%rbp)
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=4
	jmp	.LBB0_26
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=5
	leaq	-120(%rbp), %rcx
	leaq	-152(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movl	16(%rcx), %ecx
	movl	%ecx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movl	16(%rax), %eax
	movl	%eax, 40(%rsp)
	callq	box_iou@PLT
	movss	%xmm0, -156(%rbp)
	movss	-156(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	ucomiss	-124(%rbp), %xmm0
	jbe	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=5
	movss	-156(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -124(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB0_24:                               #   in Loop: Header=BB0_19 Depth=5
	jmp	.LBB0_25
.LBB0_25:                               #   in Loop: Header=BB0_19 Depth=5
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_19
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=4
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %edi
	movl	-60(%rbp), %esi
	imull	12(%rcx), %esi
	imull	16(%rcx), %esi
	movl	-48(%rbp), %eax
	imull	12(%rcx), %eax
	addl	%eax, %esi
	addl	-44(%rbp), %esi
	movups	80(%rcx), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movl	$4, %edx
	callq	entry_index@PLT
	movl	%eax, %ecx
	movq	-312(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -160(%rbp)
	movq	88(%rax), %rcx
	movslq	-160(%rbp), %rdx
	cvtsi2ssq	(%rcx,%rdx,8), %xmm0
	addss	-88(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	movq	88(%rax), %rcx
	movslq	-160(%rbp), %rdx
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	(%rcx,%rdx,8), %rsi
	movq	72(%rax), %rcx
	movslq	-160(%rbp), %rdx
	movq	%rsi, (%rcx,%rdx,8)
	movss	-124(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	ucomiss	48(%rax), %xmm0
	jbe	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_17 Depth=4
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	72(%rax), %rax
	movslq	-160(%rbp), %rcx
	movq	$0, (%rax,%rcx,8)
.LBB0_28:                               #   in Loop: Header=BB0_17 Depth=4
	movq	-312(%rbp), %rax                # 8-byte Reload
	movss	-124(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	ucomiss	52(%rax), %xmm0
	jbe	.LBB0_32
# %bb.29:                               #   in Loop: Header=BB0_17 Depth=4
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	-320(%rbp), %rcx                # 8-byte Reload
	movq	88(%rax), %rdx
	movslq	-160(%rbp), %rsi
	movl	$1, %edi
	subq	(%rdx,%rsi,8), %rdi
	movq	72(%rax), %rdx
	movslq	-160(%rbp), %rsi
	movq	%rdi, (%rdx,%rsi,8)
	movq	8(%rcx), %rcx
	imull	$5, -128(%rbp), %edx
	movl	-52(%rbp), %esi
	imull	44(%rax), %esi
	addl	%esi, %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	%ecx, -164(%rbp)
	cmpq	$0, 56(%rax)
	je	.LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_17 Depth=4
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	56(%rax), %rax
	movslq	-164(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -164(%rbp)
.LBB0_31:                               #   in Loop: Header=BB0_17 Depth=4
	movq	-312(%rbp), %r13                # 8-byte Reload
	movl	-52(%rbp), %edi
	movl	-60(%rbp), %esi
	imull	12(%r13), %esi
	imull	16(%r13), %esi
	movl	-48(%rbp), %eax
	imull	12(%r13), %eax
	addl	%eax, %esi
	addl	-44(%rbp), %esi
	movups	80(%r13), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 80(%rax)
	movups	64(%r13), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movl	$5, %edx
	callq	entry_index@PLT
	movl	%eax, -168(%rbp)
	movq	88(%r13), %rdi
	movq	72(%r13), %rsi
	movl	-168(%rbp), %edx
	movl	-164(%rbp), %ecx
	movl	20(%r13), %r8d
	movl	12(%r13), %r9d
	imull	16(%r13), %r9d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	$0, (%rsp)
	callq	delta_yolo_class@PLT
                                        # kill: def $ecx killed $eax
	movq	-320(%rbp), %rax                # 8-byte Reload
	movq	8(%rax), %rsi
	imull	$5, -128(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movl	-52(%rbp), %eax
	imull	44(%r13), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	leaq	-192(%rbp), %rdi
	movl	$1, %edx
	callq	float_to_box@PLT
	movq	-320(%rbp), %rax                # 8-byte Reload
	movq	88(%r13), %rdi
	movq	24(%r13), %rsi
	movq	32(%r13), %rcx
	movslq	-60(%rbp), %rdx
	movl	(%rcx,%rdx,4), %edx
	movl	-100(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	12(%r13), %r12d
	movl	16(%r13), %r15d
	movl	(%rax), %r14d
	movl	4(%rax), %ebx
	movq	72(%r13), %r11
	movl	-188(%rbp), %eax
	imull	-184(%rbp), %eax
	movl	$2, %r10d
	subl	%eax, %r10d
	movl	12(%r13), %eax
	imull	16(%r13), %eax
	movl	%eax, -324(%rbp)                # 4-byte Spill
	leaq	-192(%rbp), %r13
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movl	-324(%rbp), %eax                # 4-byte Reload
	movl	16(%r13), %r13d
	movl	%r13d, 16(%rsp)
	movl	%r12d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movl	%r14d, 40(%rsp)
	movl	%ebx, 48(%rsp)
	movq	%r11, 56(%rsp)
	movl	%r10d, 64(%rsp)
	movl	%eax, 72(%rsp)
	callq	delta_yolo_box@PLT
.LBB0_32:                               #   in Loop: Header=BB0_17 Depth=4
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_17 Depth=4
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_17
.LBB0_34:                               #   in Loop: Header=BB0_15 Depth=3
	jmp	.LBB0_35
.LBB0_35:                               #   in Loop: Header=BB0_15 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_15
.LBB0_36:                               #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_37
.LBB0_37:                               #   in Loop: Header=BB0_13 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_13
.LBB0_38:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$0, -56(%rbp)
.LBB0_39:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_43 Depth 3
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-56(%rbp), %eax
	cmpl	40(%rcx), %eax
	jge	.LBB0_58
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=2
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movq	-320(%rbp), %rax                # 8-byte Reload
	movq	8(%rax), %rsi
	imull	$5, -56(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movl	-52(%rbp), %eax
	imull	44(%rcx), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	leaq	-216(%rbp), %rdi
	movl	$1, %edx
	callq	float_to_box@PLT
	cmpl	$0, -216(%rbp)
	jne	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_58
.LBB0_42:                               #   in Loop: Header=BB0_39 Depth=2
	movq	-312(%rbp), %rcx                # 8-byte Reload
	xorps	%xmm0, %xmm0
	movss	%xmm0, -220(%rbp)
	movl	$0, -224(%rbp)
	movl	-216(%rbp), %eax
	imull	12(%rcx), %eax
	movl	%eax, -44(%rbp)
	movl	-204(%rbp), %eax
	imull	16(%rcx), %eax
	movl	%eax, -48(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, -232(%rbp)
	movl	$0, -236(%rbp)
	movl	$0, -248(%rbp)
	movl	$0, -60(%rbp)
.LBB0_43:                               #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-60(%rbp), %eax
	cmpl	64(%rcx), %eax
	jge	.LBB0_48
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=3
	leaq	-272(%rbp), %rdi
	xorl	%esi, %esi
	movl	$20, %edx
	callq	memset@PLT
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	-320(%rbp), %rcx                # 8-byte Reload
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	cltd
	idivl	(%rcx)
	movl	%eax, %edx
	movq	-312(%rbp), %rax                # 8-byte Reload
	movl	%edx, -268(%rbp)
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	cltd
	idivl	4(%rcx)
	movl	%eax, -264(%rbp)
	leaq	-272(%rbp), %rcx
	leaq	-248(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movl	16(%rcx), %ecx
	movl	%ecx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movl	16(%rax), %eax
	movl	%eax, 40(%rsp)
	callq	box_iou@PLT
	movss	%xmm0, -276(%rbp)
	movss	-276(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	ucomiss	-220(%rbp), %xmm0
	jbe	.LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_43 Depth=3
	movss	-276(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -220(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -224(%rbp)
.LBB0_46:                               #   in Loop: Header=BB0_43 Depth=3
	jmp	.LBB0_47
.LBB0_47:                               #   in Loop: Header=BB0_43 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_43
.LBB0_48:                               #   in Loop: Header=BB0_39 Depth=2
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	32(%rax), %rdi
	movl	-224(%rbp), %esi
	movl	8(%rax), %edx
	callq	int_index@PLT
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	jl	.LBB0_56
# %bb.49:                               #   in Loop: Header=BB0_39 Depth=2
	movq	-312(%rbp), %r13                # 8-byte Reload
	movl	-52(%rbp), %edi
	movl	-280(%rbp), %esi
	imull	12(%r13), %esi
	imull	16(%r13), %esi
	movl	-48(%rbp), %eax
	imull	12(%r13), %eax
	addl	%eax, %esi
	addl	-44(%rbp), %esi
	xorl	%eax, %eax
	movups	80(%r13), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 80(%rax)
	movups	64(%r13), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edx, %edx
	callq	entry_index@PLT
	movl	%eax, %ecx
	movq	-320(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -284(%rbp)
	movq	88(%r13), %rdi
	movq	24(%r13), %rsi
	movl	-224(%rbp), %edx
	movl	-284(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	12(%r13), %r12d
	movl	16(%r13), %r15d
	movl	(%rax), %r14d
	movl	4(%rax), %ebx
	movq	72(%r13), %r11
	movl	-212(%rbp), %eax
	imull	-208(%rbp), %eax
	movl	$2, %r10d
	subl	%eax, %r10d
	movl	12(%r13), %eax
	imull	16(%r13), %eax
	movl	%eax, -328(%rbp)                # 4-byte Spill
	leaq	-216(%rbp), %r13
	movq	(%r13), %rax
	movq	%rax, (%rsp)
	movq	8(%r13), %rax
	movq	%rax, 8(%rsp)
	movl	-328(%rbp), %eax                # 4-byte Reload
	movl	16(%r13), %r13d
	movl	%r13d, 16(%rsp)
	movl	%r12d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movl	%r14d, 40(%rsp)
	movl	%ebx, 48(%rsp)
	movq	%r11, 56(%rsp)
	movl	%r10d, 64(%rsp)
	movl	%eax, 72(%rsp)
	callq	delta_yolo_box@PLT
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movss	%xmm0, -288(%rbp)
	movl	-52(%rbp), %edi
	movl	-280(%rbp), %esi
	imull	12(%rcx), %esi
	imull	16(%rcx), %esi
	movl	-48(%rbp), %eax
	imull	12(%rcx), %eax
	addl	%eax, %esi
	addl	-44(%rbp), %esi
	movups	80(%rcx), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movl	$4, %edx
	callq	entry_index@PLT
	movq	-320(%rbp), %rcx                # 8-byte Reload
	movl	%eax, %edx
	movq	-312(%rbp), %rax                # 8-byte Reload
	movl	%edx, -292(%rbp)
	movq	88(%rax), %rdx
	movslq	-292(%rbp), %rsi
	cvtsi2ssq	(%rdx,%rsi,8), %xmm0
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movq	88(%rax), %rdx
	movslq	-292(%rbp), %rsi
	movl	$1, %edi
	subq	(%rdx,%rsi,8), %rdi
	movq	72(%rax), %rdx
	movslq	-292(%rbp), %rsi
	movq	%rdi, (%rdx,%rsi,8)
	movq	8(%rcx), %rcx
	imull	$5, -56(%rbp), %edx
	movl	-52(%rbp), %esi
	imull	44(%rax), %esi
	addl	%esi, %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %ecx
	movl	%ecx, -296(%rbp)
	cmpq	$0, 56(%rax)
	je	.LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_39 Depth=2
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	56(%rax), %rax
	movslq	-296(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -296(%rbp)
.LBB0_51:                               #   in Loop: Header=BB0_39 Depth=2
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movl	-52(%rbp), %edi
	movl	-280(%rbp), %esi
	imull	12(%rcx), %esi
	imull	16(%rcx), %esi
	movl	-48(%rbp), %eax
	imull	12(%rcx), %eax
	addl	%eax, %esi
	addl	-44(%rbp), %esi
	movups	80(%rcx), %xmm0
	movq	%rsp, %rax
	movups	%xmm0, 80(%rax)
	movups	64(%rcx), %xmm0
	movups	%xmm0, 64(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movl	$5, %edx
	callq	entry_index@PLT
	movl	%eax, %ecx
	movq	-312(%rbp), %rax                # 8-byte Reload
	movl	%ecx, -300(%rbp)
	movq	88(%rax), %rdi
	movq	72(%rax), %rsi
	movl	-300(%rbp), %edx
	movl	-296(%rbp), %ecx
	movl	20(%rax), %r8d
	movl	12(%rax), %r9d
	imull	16(%rax), %r9d
	leaq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	callq	delta_yolo_class@PLT
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	movss	-288(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_39 Depth=2
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
.LBB0_53:                               #   in Loop: Header=BB0_39 Depth=2
	movss	-288(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_39 Depth=2
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	-76(%rbp), %xmm0
	movss	%xmm0, -76(%rbp)
.LBB0_55:                               #   in Loop: Header=BB0_39 Depth=2
	movss	-288(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	addss	-68(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
.LBB0_56:                               #   in Loop: Header=BB0_39 Depth=2
	jmp	.LBB0_57
.LBB0_57:                               #   in Loop: Header=BB0_39 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_39
.LBB0_58:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_59
.LBB0_59:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_11
.LBB0_60:
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	72(%rax), %rdi
	movl	(%rax), %esi
	imull	4(%rax), %esi
	callq	mag_array@PLT
	movl	%eax, %edi
	movl	$2, %esi
	callq	pow@PLT
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movq	%rax, %rsi
	movq	-320(%rbp), %rax                # 8-byte Reload
	movq	80(%rcx), %rdx
	movq	%rsi, (%rdx)
	movl	16(%rax), %esi
	movss	-68(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-92(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	-80(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtsi2ssl	-96(%rbp), %xmm2
	divss	%xmm2, %xmm1
	movss	-84(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	cvtsi2ssl	-92(%rbp), %xmm3
	divss	%xmm3, %xmm2
	movss	-88(%rbp), %xmm3                # xmm3 = mem[0],zero,zero,zero
	movl	12(%rcx), %eax
	imull	16(%rcx), %eax
	imull	8(%rcx), %eax
	imull	4(%rcx), %eax
	cvtsi2ss	%eax, %xmm4
	divss	%xmm4, %xmm3
	movss	-72(%rbp), %xmm4                # xmm4 = mem[0],zero,zero,zero
	cvtsi2ssl	-92(%rbp), %xmm5
	divss	%xmm5, %xmm4
	movss	-76(%rbp), %xmm5                # xmm5 = mem[0],zero,zero,zero
	cvtsi2ssl	-92(%rbp), %xmm6
	divss	%xmm6, %xmm5
	movl	-92(%rbp), %edx
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
.LBB0_61:
	addq	$392, %rsp                      # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	.asciz	"Region %d Avg IOU: %f, Class: %f, Obj: %f, No Obj: %f, .5R: %f, .75R: %f,  count: %d\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memcpy
	.addrsig_sym entry_index
	.addrsig_sym activate_array
	.addrsig_sym memset
	.addrsig_sym get_yolo_box
	.addrsig_sym float_to_box
	.addrsig_sym box_iou
	.addrsig_sym delta_yolo_class
	.addrsig_sym delta_yolo_box
	.addrsig_sym int_index
	.addrsig_sym pow
	.addrsig_sym mag_array
	.addrsig_sym printf
	.addrsig_sym LOGISTIC