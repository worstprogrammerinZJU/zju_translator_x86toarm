	.text
	.globl	get_yolo_detections             # -- Begin function get_yolo_detections
	.p2align	4, 0x90
get_yolo_detections:                    # @get_yolo_detections
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
	movq	64(%rbp), %rax
	leaq	16(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, -80(%rbp)
	cmpl	$2, 8(%rax)
	jne	.LBB0_2
# %bb.1:
	movq	-120(%rbp), %rax                # 8-byte Reload
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movq	%rsp, %rax
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	callq	avg_flipped_yolo@PLT
.LBB0_2:
	movl	$0, -84(%rbp)
	movl	$0, -64(%rbp)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_9 Depth 3
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movl	-64(%rbp), %eax
	movl	12(%rdx), %ecx
	imull	16(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_19
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-120(%rbp), %rcx                # 8-byte Reload
	movl	-64(%rbp), %eax
	cltd
	idivl	12(%rcx)
	movl	%eax, -88(%rbp)
	movl	-64(%rbp), %eax
	cltd
	idivl	12(%rcx)
	movl	%edx, -92(%rbp)
	movl	$0, -72(%rbp)
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
	movq	-120(%rbp), %rcx                # 8-byte Reload
	movl	-72(%rbp), %eax
	cmpl	20(%rcx), %eax
	jge	.LBB0_17
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-120(%rbp), %rax                # 8-byte Reload
	movl	-72(%rbp), %esi
	imull	12(%rax), %esi
	imull	16(%rax), %esi
	addl	-64(%rbp), %esi
	xorl	%ecx, %ecx
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movq	%rsp, %rax
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edi, %edi
	movl	$4, %edx
	callq	entry_index@PLT
	movl	%eax, -96(%rbp)
	movq	-80(%rbp), %rax
	movslq	-96(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -100(%rbp)
	movss	-100(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_16
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-120(%rbp), %r15                # 8-byte Reload
	movl	-72(%rbp), %esi
	imull	12(%r15), %esi
	imull	16(%r15), %esi
	addl	-64(%rbp), %esi
	xorl	%eax, %eax
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movq	%rsp, %rax
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edx, %edx
	movl	%edx, %edi
	callq	entry_index@PLT
	movl	%eax, -104(%rbp)
	movq	-80(%rbp), %rdi
	movl	40(%r15), %esi
	movq	32(%r15), %rax
	movslq	-72(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	-104(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movl	-88(%rbp), %r9d
	movl	12(%r15), %r14d
	movl	16(%r15), %ebx
	movl	-36(%rbp), %r11d
	movl	-40(%rbp), %r10d
	movl	12(%r15), %eax
	imull	16(%r15), %eax
	movl	%r14d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%eax, 32(%rsp)
	callq	get_yolo_box@PLT
	movl	%eax, %edx
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	64(%rbp), %rcx
	movslq	-84(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rcx
	movl	%edx, 16(%rcx)
	movss	-100(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	64(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movss	%xmm0, (%rcx)
	movl	24(%rax), %ecx
	movq	64(%rbp), %rax
	movslq	-84(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 4(%rax)
	movl	$0, -68(%rbp)
.LBB0_9:                                #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-120(%rbp), %rcx                # 8-byte Reload
	movl	-68(%rbp), %eax
	cmpl	24(%rcx), %eax
	jge	.LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=3
	movq	-120(%rbp), %rax                # 8-byte Reload
	movl	-72(%rbp), %esi
	imull	12(%rax), %esi
	imull	16(%rax), %esi
	addl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	addl	$5, %edx
	xorl	%ecx, %ecx
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movq	%rsp, %rax
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	xorl	%edi, %edi
	callq	entry_index@PLT
	movl	%eax, -108(%rbp)
	movss	-100(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movslq	-108(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	-112(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	ucomiss	-44(%rbp), %xmm0
	jbe	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=3
	movss	-112(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=3
	xorps	%xmm0, %xmm0
	movss	%xmm0, -124(%rbp)               # 4-byte Spill
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=3
	movss	-124(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	64(%rbp), %rax
	movslq	-84(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movslq	-68(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_9
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB0_5
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_3
.LBB0_19:
	movq	64(%rbp), %rdi
	movl	-84(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	-60(%rbp), %eax
	movl	%eax, (%rsp)
	callq	correct_yolo_boxes@PLT
	movl	-84(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym avg_flipped_yolo
	.addrsig_sym entry_index
	.addrsig_sym get_yolo_box
	.addrsig_sym correct_yolo_boxes