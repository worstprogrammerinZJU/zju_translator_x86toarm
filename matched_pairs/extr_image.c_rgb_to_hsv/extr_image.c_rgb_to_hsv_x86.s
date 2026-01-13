	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function rgb_to_hsv
.LCPI0_0:
	.long	0x40800000                      # float 4
.LCPI0_1:
	.long	0x40000000                      # float 2
.LCPI0_2:
	.long	0x40c00000                      # float 6
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_3:
	.quad	0x4018000000000000              # double 6
	.text
	.globl	rgb_to_hsv
	.p2align	4, 0x90
rgb_to_hsv:                             # @rgb_to_hsv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
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
	jge	.LBB0_19
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -36(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_17
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-80(%rbp), %rdi
	movl	-72(%rbp), %esi
	xorl	%r8d, %r8d
	callq	get_pixel@PLT
	movss	%xmm0, -44(%rbp)
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-96(%rbp), %rdi
	movl	-88(%rbp), %esi
	movl	$1, %r8d
	callq	get_pixel@PLT
	movss	%xmm0, -48(%rbp)
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-112(%rbp), %rdi
	movl	-104(%rbp), %esi
	movl	$2, %r8d
	callq	get_pixel@PLT
	movss	%xmm0, -52(%rbp)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-52(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	callq	three_way_max@PLT
	movss	%xmm0, -116(%rbp)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-52(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	callq	three_way_min@PLT
	movss	%xmm0, -120(%rbp)
	movss	-116(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	subss	-120(%rbp), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	-116(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movss	-116(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_6
	jp	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	jmp	.LBB0_15
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movss	-124(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	divss	-116(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-116(%rbp), %xmm0
	jne	.LBB0_8
	jp	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=2
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-52(%rbp), %xmm0
	divss	-124(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
	jmp	.LBB0_12
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-116(%rbp), %xmm0
	jne	.LBB0_10
	jp	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=2
	movss	-52(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	-44(%rbp), %xmm1
	divss	-124(%rbp), %xmm1
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	jmp	.LBB0_11
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	movss	-44(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	-48(%rbp), %xmm1
	divss	-124(%rbp), %xmm1
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	xorps	%xmm0, %xmm0
	ucomiss	-56(%rbp), %xmm0
	jbe	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=2
	movss	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addss	-56(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=2
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_3(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-144(%rbp), %rdi
	movl	-136(%rbp), %esi
	xorl	%r8d, %r8d
	callq	set_pixel@PLT
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-160(%rbp), %rdi
	movl	-152(%rbp), %esi
	movl	$1, %r8d
	callq	set_pixel@PLT
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -168(%rbp)
	movq	-176(%rbp), %rdi
	movl	-168(%rbp), %esi
	movl	$2, %r8d
	callq	set_pixel@PLT
# %bb.16:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_19:
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym get_pixel
	.addrsig_sym three_way_max
	.addrsig_sym three_way_min
	.addrsig_sym set_pixel