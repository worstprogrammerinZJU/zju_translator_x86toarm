	.text
	.globl	draw_bbox                       # -- Begin function draw_bbox
	.p2align	4, 0x90
draw_bbox:                              # @draw_bbox
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movss	%xmm1, -36(%rbp)
	movss	%xmm2, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-76(%rbp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	imull	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-72(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	imull	-8(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-68(%rbp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	imull	-4(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-64(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	imull	-4(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %esi
	addl	-60(%rbp), %esi
	movl	-52(%rbp), %edx
	addl	-60(%rbp), %edx
	movl	-48(%rbp), %ecx
	subl	-60(%rbp), %ecx
	movl	-56(%rbp), %r8d
	subl	-60(%rbp), %r8d
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rdi
	callq	draw_box@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym draw_box