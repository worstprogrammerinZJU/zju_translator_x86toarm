	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function yuv_to_rgb
.LCPI0_0:
	.quad	0x400041c2e33eff19              # double 2.0321099999999999
.LCPI0_1:
	.quad	0xbfe294467381d7dc              # double -0.5806
.LCPI0_2:
	.quad	0xbfd941f212d77319              # double -0.39465
.LCPI0_3:
	.quad	0x3ff23cbe61cffeb0              # double 1.1398299999999999
	.text
	.globl	yuv_to_rgb
	.p2align	4, 0x90
yuv_to_rgb:                             # @yuv_to_rgb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
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
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -36(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_6
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
	movss	%xmm0, -56(%rbp)
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
	movss	%xmm0, -60(%rbp)
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
	movss	%xmm0, -64(%rbp)
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_3(%rip), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-60(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI0_2(%rip), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movss	-64(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-128(%rbp), %rdi
	movl	-120(%rbp), %esi
	xorl	%r8d, %r8d
	callq	set_pixel@PLT
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-144(%rbp), %rdi
	movl	-136(%rbp), %esi
	movl	$1, %r8d
	callq	set_pixel@PLT
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-160(%rbp), %rdi
	movl	-152(%rbp), %esi
	movl	$2, %r8d
	callq	set_pixel@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym get_pixel
	.addrsig_sym set_pixel