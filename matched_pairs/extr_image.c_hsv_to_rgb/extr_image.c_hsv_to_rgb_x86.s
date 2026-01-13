	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function hsv_to_rgb
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	hsv_to_rgb
	.p2align	4, 0x90
hsv_to_rgb:                             # @hsv_to_rgb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$3, -16(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$0, -40(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_26
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -36(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_24
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-96(%rbp), %rdi
	movl	-88(%rbp), %esi
	xorl	%r8d, %r8d
	callq	get_pixel@PLT
	imull	$6, %eax, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -56(%rbp)
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-112(%rbp), %rdi
	movl	-104(%rbp), %esi
	movl	$1, %r8d
	callq	get_pixel@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-128(%rbp), %rdi
	movl	-120(%rbp), %esi
	movl	$2, %r8d
	callq	get_pixel@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_6
	jp	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movss	%xmm0, -48(%rbp)
	movss	%xmm0, -44(%rbp)
	jmp	.LBB0_22
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	floor@PLT
	movl	%eax, -132(%rbp)
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-132(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	-60(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-68(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm1
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	subss	-68(%rbp), %xmm2
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm1
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	cmpl	$0, -132(%rbp)
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=2
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	-80(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movss	-72(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	jmp	.LBB0_21
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	cmpl	$1, -132(%rbp)
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=2
	movss	-76(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movss	-72(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	jmp	.LBB0_20
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$2, -132(%rbp)
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=2
	movss	-72(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movss	-80(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	jmp	.LBB0_19
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$3, -132(%rbp)
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=2
	movss	-72(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	-76(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	jmp	.LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$4, -132(%rbp)
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=2
	movss	-80(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	-72(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	jmp	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=2
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	-72(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movss	-76(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_22
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -144(%rbp)
	movq	-152(%rbp), %rdi
	movl	-144(%rbp), %esi
	xorl	%r8d, %r8d
	callq	set_pixel@PLT
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -160(%rbp)
	movq	-168(%rbp), %rdi
	movl	-160(%rbp), %esi
	movl	$1, %r8d
	callq	set_pixel@PLT
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -176(%rbp)
	movq	-184(%rbp), %rdi
	movl	-176(%rbp), %esi
	movl	$2, %r8d
	callq	set_pixel@PLT
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_26:
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym get_pixel
	.addrsig_sym floor
	.addrsig_sym set_pixel