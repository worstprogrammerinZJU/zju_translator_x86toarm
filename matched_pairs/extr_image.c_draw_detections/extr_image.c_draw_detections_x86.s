	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function draw_detections
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
.LCPI0_1:
	.quad	0x3f789374bc6a7efa              # double 0.0060000000000000001
.LCPI0_2:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_3:
	.quad	0x3f9eb851eb851eb8              # double 0.029999999999999999
.LCPI0_4:
	.quad	0x3fe0000000000000              # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_5:
	.long	0x42c80000                      # float 100
	.text
	.globl	draw_detections
	.p2align	4, 0x90
draw_detections:                        # @draw_detections
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$4304, %rsp                     # imm = 0x10D0
	movsd	%xmm0, -16(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movss	%xmm1, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-56(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_27
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-4160(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4096, %edx                     # imm = 0x1000
	callq	memset@PLT
	movl	$-1, -4164(%rbp)
	movl	$0, -60(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_11
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movslq	-60(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	ucomiss	-32(%rbp), %xmm0
	jbe	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	cmpl	$0, -4164(%rbp)
	jge	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=2
	leaq	-4160(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	strcat@PLT
	movl	-60(%rbp), %eax
	movl	%eax, -4164(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	leaq	-4160(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcat@PLT
	leaq	-4160(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	strcat@PLT
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-40(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movslq	-60(%rbp), %rcx
	movss	.LCPI0_5(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	(%rax,%rcx,4), %xmm0
	cvttss2si	%xmm0, %edx
	leaq	.L.str.1(%rip), %rdi
	callq	printf@PLT
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_3
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -4164(%rbp)
	jl	.LBB0_25
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4168(%rbp)
	imull	$123457, -4164(%rbp), %eax      # imm = 0x1E241
	cltd
	idivl	-52(%rbp)
	movl	%edx, -4172(%rbp)
	movl	-4172(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	$2, %edi
	callq	get_color@PLT
	movss	%xmm0, -4176(%rbp)
	movl	-4172(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	$1, %edi
	callq	get_color@PLT
	movss	%xmm0, -4180(%rbp)
	movl	-4172(%rbp), %esi
	movl	-52(%rbp), %edx
	xorl	%edi, %edi
	callq	get_color@PLT
	movss	%xmm0, -4184(%rbp)
	movss	-4176(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4196(%rbp)
	movss	-4180(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4192(%rbp)
	movss	-4184(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4188(%rbp)
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rcx
	movq	%rcx, -4216(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -4208(%rbp)
	cvtsi2sdl	-4216(%rbp), %xmm0
	cvtsi2sdl	-4212(%rbp), %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4220(%rbp)
	cvtsi2sdl	-4216(%rbp), %xmm0
	cvtsi2sdl	-4212(%rbp), %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4224(%rbp)
	cvtsi2sdl	-4208(%rbp), %xmm0
	cvtsi2sdl	-4204(%rbp), %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4228(%rbp)
	cvtsi2sdl	-4208(%rbp), %xmm0
	cvtsi2sdl	-4204(%rbp), %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4232(%rbp)
	cmpl	$0, -4220(%rbp)
	jge	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -4220(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-4224(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4224(%rbp)
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -4228(%rbp)
	jge	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -4228(%rbp)
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	cvtsi2sdl	-4232(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1                # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2           # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4232(%rbp)
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-4220(%rbp), %esi
	movl	-4228(%rbp), %edx
	movl	-4224(%rbp), %ecx
	movl	-4232(%rbp), %r8d
	movl	-4168(%rbp), %r9d
	movss	-4176(%rbp), %xmm1              # xmm1 = mem[0],zero,zero,zero
	movss	-4180(%rbp), %xmm2              # xmm2 = mem[0],zero,zero,zero
	movss	-4184(%rbp), %xmm3              # xmm3 = mem[0],zero,zero,zero
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movl	-8(%rbp), %edi
	callq	draw_box_width@PLT
	cmpq	$0, -48(%rbp)
	je	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	leaq	-4160(%rbp), %rsi
	movsd	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	callq	get_label@PLT
	movsd	%xmm0, -4248(%rbp)
	movl	%eax, -4240(%rbp)
	movl	-4228(%rbp), %esi
	addl	-4168(%rbp), %esi
	movl	-4220(%rbp), %edx
	leaq	-4196(%rbp), %r8
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movl	-8(%rbp), %edi
	movsd	-4248(%rbp), %xmm1              # xmm1 = mem[0],zero
	movl	-4240(%rbp), %ecx
	callq	draw_label@PLT
	movsd	-4248(%rbp), %xmm0              # xmm0 = mem[0],zero
	movl	-4240(%rbp), %edi
	callq	free_image@PLT
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rcx
	movl	$14, %esi
	movl	$1, %edx
	movl	%esi, %edi
	callq	float_to_image@PLT
	movsd	%xmm0, -4264(%rbp)
	movl	%eax, -4256(%rbp)
	movl	-4212(%rbp), %esi
	imull	-8(%rbp), %esi
	cvtsi2sdl	-4204(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movsd	-4264(%rbp), %xmm0              # xmm0 = mem[0],zero
	movl	-4256(%rbp), %edi
	callq	resize_image@PLT
	movsd	%xmm0, -4280(%rbp)
	movl	%eax, -4272(%rbp)
	movsd	-4280(%rbp), %xmm0              # xmm0 = mem[0],zero
	movl	-4272(%rbp), %edi
	movsd	.LCPI0_4(%rip), %xmm1           # xmm1 = mem[0],zero
	callq	threshold_image@PLT
	movsd	%xmm0, -4296(%rbp)
	movl	%eax, -4288(%rbp)
	movl	-4220(%rbp), %edx
	movl	-4228(%rbp), %ecx
	movsd	-4296(%rbp), %xmm0              # xmm0 = mem[0],zero
	movl	-4288(%rbp), %edi
	movsd	-16(%rbp), %xmm1                # xmm1 = mem[0],zero
	movl	-8(%rbp), %esi
	callq	embed_image@PLT
	movsd	-4264(%rbp), %xmm0              # xmm0 = mem[0],zero
	movl	-4256(%rbp), %edi
	callq	free_image@PLT
	movsd	-4280(%rbp), %xmm0              # xmm0 = mem[0],zero
	movl	-4272(%rbp), %edi
	callq	free_image@PLT
	movsd	-4296(%rbp), %xmm0              # xmm0 = mem[0],zero
	movl	-4288(%rbp), %edi
	callq	free_image@PLT
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_1
.LBB0_27:
	addq	$4304, %rsp                     # imm = 0x10D0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	", "
.L.str.1:
	.asciz	"%s: %.0f%%\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcat
	.addrsig_sym printf
	.addrsig_sym get_color
	.addrsig_sym draw_box_width
	.addrsig_sym get_label
	.addrsig_sym draw_label
	.addrsig_sym free_image
	.addrsig_sym float_to_image
	.addrsig_sym resize_image
	.addrsig_sym threshold_image
	.addrsig_sym embed_image