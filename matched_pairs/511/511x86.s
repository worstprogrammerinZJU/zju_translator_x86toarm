	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function fill_truth_detection
.LCPI0_0:
	.quad	0x3f50624dd2f1a9fc              # double 0.001
	.text
	.globl	fill_truth_detection
	.p2align	4, 0x90
fill_truth_detection:                   # @fill_truth_detection
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$4192, %rsp                     # imm = 0x1060
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movss	%xmm1, -40(%rbp)
	movss	%xmm2, -44(%rbp)
	movss	%xmm3, -48(%rbp)
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
	leaq	.L.str.1(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.4(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.6(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.7(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.8(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
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
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm3                # xmm3 = mem[0],zero,zero,zero
	movl	-32(%rbp), %edx
	callq	correct_boxes@PLT
	movl	-4148(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB0_2
# %bb.1:
	movl	-12(%rbp), %eax
	movl	%eax, -4148(%rbp)
.LBB0_2:
	movl	$0, -4188(%rbp)
	movl	$0, -4184(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-4184(%rbp), %eax
	cmpl	-4148(%rbp), %eax
	jge	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
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
	ja	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movss	-4176(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-4188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4188(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movss	-4164(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	-4184(%rbp), %ecx
	subl	-4188(%rbp), %ecx
	imull	$5, %ecx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-4168(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	-4184(%rbp), %ecx
	subl	-4188(%rbp), %ecx
	imull	$5, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-4172(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	-4184(%rbp), %ecx
	subl	-4188(%rbp), %ecx
	imull	$5, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-4176(%rbp), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	-4184(%rbp), %ecx
	subl	-4188(%rbp), %ecx
	imull	$5, %ecx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	cvtsi2ssl	-4180(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movl	-4184(%rbp), %ecx
	subl	-4188(%rbp), %ecx
	imull	$5, %ecx, %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-4184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4184(%rbp)
	jmp	.LBB0_3
.LBB0_9:
	movq	-4160(%rbp), %rdi
	callq	free@PLT
	addq	$4192, %rsp                     # imm = 0x1060
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
	.asciz	"raw"
.L.str.4:
	.asciz	".jpg"
.L.str.5:
	.asciz	".txt"
.L.str.6:
	.asciz	".png"
.L.str.7:
	.asciz	".JPG"
.L.str.8:
	.asciz	".JPEG"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_replace
	.addrsig_sym read_boxes
	.addrsig_sym randomize_boxes
	.addrsig_sym correct_boxes
	.addrsig_sym free