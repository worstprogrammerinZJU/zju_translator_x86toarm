	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function bilinear_interpolate
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.p2align	4, 0x90
bilinear_interpolate:                   # @bilinear_interpolate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movss	%xmm0, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movl	%esi, -16(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	floorf@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	floorf@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -24(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-20(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-24(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-32(%rbp), %xmm0
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)                # 4-byte Spill
	movl	-4(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	get_pixel_extend@PLT
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	subss	-28(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -64(%rbp)                # 4-byte Spill
	movl	-4(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movl	-16(%rbp), %ecx
	callq	get_pixel_extend@PLT
	movss	-64(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm2                # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm3
	movss	-56(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	-32(%rbp), %xmm0
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)                # 4-byte Spill
	movl	-4(%rbp), %edi
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movl	-24(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	get_pixel_extend@PLT
	movss	-52(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm2
	movss	-48(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)                # 4-byte Spill
	movl	-4(%rbp), %edi
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movl	-16(%rbp), %ecx
	callq	get_pixel_extend@PLT
	movss	-44(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm2
	movss	-40(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bilinear_interpolate
	.addrsig_sym floorf
	.addrsig_sym get_pixel_extend