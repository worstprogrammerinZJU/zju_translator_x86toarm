	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function load_data_swag
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	load_data_swag
	.p2align	4, 0x90
load_data_swag:                         # @load_data_swag
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$320, %rsp                      # imm = 0x140
	movq	%rdi, -296(%rbp)                # 8-byte Spill
	movq	%rdi, -312(%rbp)                # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	xorl	%eax, %eax
	movl	%eax, -300(%rbp)                # 4-byte Spill
	movb	%al, -281(%rbp)                 # 1-byte Spill
	callq	rand@PLT
	movl	-12(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movl	-300(%rbp), %edx                # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	%edx, %esi
	callq	load_image_color@PLT
	movq	-296(%rbp), %rdi                # 8-byte Reload
	movl	%edx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -72(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rdi)
	movups	%xmm0, 16(%rdi)
	movups	%xmm0, (%rdi)
	movq	$0, 32(%rdi)
	movl	-72(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-68(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	$1, 16(%rdi)
	movl	16(%rdi), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-296(%rbp), %rdi                # 8-byte Reload
	movq	%rax, 24(%rdi)
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %eax
	imull	%eax, %ecx
                                        # implicit-def: $rax
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, 20(%rdi)
	movl	-16(%rbp), %eax
	imull	$90, %eax, %eax
	addl	$360, %eax                      # imm = 0x168
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %esi
	movl	$1, %edi
	callq	make_matrix@PLT
	movq	-296(%rbp), %rdi                # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdi)
	cvtsi2ssl	-72(%rbp), %xmm0
	movss	-20(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -92(%rbp)
	cvtsi2ssl	-68(%rbp), %xmm0
	movss	-20(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %esi
	movl	%esi, %edi
	negl	%edi
	callq	rand_uniform@PLT
	movl	%eax, -100(%rbp)
	movl	-92(%rbp), %esi
	movl	%esi, %edi
	negl	%edi
	callq	rand_uniform@PLT
	movl	%eax, -104(%rbp)
	movl	-96(%rbp), %esi
	movl	%esi, %edi
	negl	%edi
	callq	rand_uniform@PLT
	movl	%eax, -108(%rbp)
	movl	-96(%rbp), %esi
	movl	%esi, %edi
	negl	%edi
	callq	rand_uniform@PLT
	movl	%eax, %ecx
	movb	-281(%rbp), %al                 # 1-byte Reload
	movl	%ecx, -112(%rbp)
	movl	-72(%rbp), %ecx
	movl	-100(%rbp), %edx
	subl	%edx, %ecx
	movl	-104(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -116(%rbp)
	movl	-68(%rbp), %ecx
	movl	-108(%rbp), %edx
	subl	%edx, %ecx
	movl	-112(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -120(%rbp)
	cvtsi2ssl	-116(%rbp), %xmm0
	cvtsi2ssl	-72(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -124(%rbp)
	cvtsi2ssl	-120(%rbp), %xmm0
	cvtsi2ssl	-68(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -128(%rbp)
	callq	rand@PLT
	movl	%eax, %edx
	shrl	$31, %edx
	movl	%eax, %ecx
	addl	%edx, %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	movl	%eax, -132(%rbp)
	movl	-100(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movl	-40(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movl	-152(%rbp), %esi
	callq	crop_image@PLT
	movl	%edx, -168(%rbp)
	movq	%rax, -176(%rbp)
	movl	-168(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -144(%rbp)
	cvtsi2ssl	-100(%rbp), %xmm0
	cvtsi2ssl	-72(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	-124(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -180(%rbp)
	cvtsi2ssl	-108(%rbp), %xmm0
	cvtsi2ssl	-68(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	-128(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -184(%rbp)
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-136(%rbp), %eax
	movl	%eax, -208(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	movl	-208(%rbp), %esi
	callq	resize_image@PLT
	movl	%edx, -224(%rbp)
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-224(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-200(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	-192(%rbp), %eax
	movl	%eax, -240(%rbp)
	movq	-248(%rbp), %rdi
	movl	-240(%rbp), %esi
	callq	flip_image@PLT
.LBB0_2:
	movq	-296(%rbp), %rax                # 8-byte Reload
	movl	-192(%rbp), %edx
	movq	24(%rax), %rcx
	movl	%edx, (%rcx)
	movq	-32(%rbp), %rdi
	movq	8(%rax), %rax
	movl	(%rax), %esi
	movl	-16(%rbp), %edx
	movl	-132(%rbp), %ecx
	movss	-180(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	movss	-184(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	-124(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm3
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %r8d
	movss	-128(%rbp), %xmm2               # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm3
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %r9d
	callq	fill_truth_swag@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -256(%rbp)
	movq	-264(%rbp), %rdi
	movl	-256(%rbp), %esi
	callq	free_image@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -280(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -272(%rbp)
	movq	-280(%rbp), %rdi
	movl	-272(%rbp), %esi
	callq	free_image@PLT
                                        # kill: def $ecx killed $eax
	movq	-312(%rbp), %rax                # 8-byte Reload
	addq	$320, %rsp                      # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand
	.addrsig_sym load_image_color
	.addrsig_sym calloc
	.addrsig_sym make_matrix
	.addrsig_sym rand_uniform
	.addrsig_sym crop_image
	.addrsig_sym resize_image
	.addrsig_sym flip_image
	.addrsig_sym fill_truth_swag
	.addrsig_sym free_image