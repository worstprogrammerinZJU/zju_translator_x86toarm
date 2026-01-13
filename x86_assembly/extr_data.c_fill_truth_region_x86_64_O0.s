	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function fill_truth_region
.LCPI0_0:
	.quad	0x3f747ae147ae147b              # double 0.0050000000000000001
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	0x3f800000                      # float 1
	.text
	.globl	fill_truth_region
	.p2align	4, 0x90
fill_truth_region:                      # @fill_truth_region
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$4208, %rsp                     # imm = 0x1070
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movss	%xmm1, -36(%rbp)
	movss	%xmm2, -40(%rbp)
	movss	%xmm3, -44(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.2(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.3(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.5(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.6(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.7(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	movl	$0, -4148(%rbp)
	leaq	-4144(%rbp), %rdi
	leaq	-4148(%rbp), %rsi
	callq	read_boxes@PLT
	movq	%rax, -4160(%rbp)
	movq	-4160(%rbp), %rdi
	movl	-4148(%rbp), %esi
	callq	randomize_boxes@PLT
	movq	-4160(%rbp), %rdi
	movl	-4148(%rbp), %esi
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm3                # xmm3 = mem[0],zero,zero,zero
	movl	-28(%rbp), %edx
	callq	correct_boxes@PLT
	movl	$0, -4184(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4184(%rbp), %eax
	cmpl	-4148(%rbp), %eax
	jge	.LBB0_11
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-4160(%rbp), %rax
	movslq	-4184(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4164(%rbp)
	movq	-4160(%rbp), %rax
	movslq	-4184(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movss	4(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4168(%rbp)
	movq	-4160(%rbp), %rax
	movslq	-4184(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4172(%rbp)
	movq	-4160(%rbp), %rax
	movslq	-4184(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movss	12(%rax), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4176(%rbp)
	movq	-4160(%rbp), %rax
	movslq	-4184(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %eax
	movl	%eax, -4180(%rbp)
	movss	-4172(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-4176(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-4164(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-24(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -4188(%rbp)
	movss	-4168(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-24(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -4192(%rbp)
	movss	-4164(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-24(%rbp), %xmm2
	cvtsi2ssl	-4188(%rbp), %xmm1
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4164(%rbp)
	movss	-4168(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-24(%rbp), %xmm2
	cvtsi2ssl	-4192(%rbp), %xmm1
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4168(%rbp)
	movl	-4188(%rbp), %eax
	movl	-4192(%rbp), %ecx
	imull	-24(%rbp), %ecx
	addl	%ecx, %eax
	movl	-20(%rbp), %ecx
	addl	$5, %ecx
	imull	%ecx, %eax
	movl	%eax, -4196(%rbp)
	movq	-16(%rbp), %rax
	movslq	-4196(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_6
	jp	.LBB0_6
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-4196(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -4196(%rbp)
	movslq	%ecx, %rcx
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
	movl	-4180(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-4196(%rbp), %ecx
	addl	-4180(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	-4196(%rbp), %eax
	movl	%eax, -4196(%rbp)
	movss	-4164(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-4196(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -4196(%rbp)
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-4168(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-4196(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -4196(%rbp)
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-4172(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-4196(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -4196(%rbp)
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-4176(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-4196(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -4196(%rbp)
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-4184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4184(%rbp)
	jmp	.LBB0_1
.LBB0_11:
	movq	-4160(%rbp), %rdi
	callq	free@PLT
	addq	$4208, %rsp                     # imm = 0x1070
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"images"
.L.str.1:
	.asciz	"labels"
.L.str.2:
	.asciz	"JPEGImages"
.L.str.3:
	.asciz	".jpg"
.L.str.4:
	.asciz	".txt"
.L.str.5:
	.asciz	".png"
.L.str.6:
	.asciz	".JPG"
.L.str.7:
	.asciz	".JPEG"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_replace
	.addrsig_sym read_boxes
	.addrsig_sym randomize_boxes
	.addrsig_sym correct_boxes
	.addrsig_sym free