	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function compare_networks
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	compare_networks
	.p2align	4, 0x90
compare_networks:                       # @compare_networks
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movl	%edx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-16(%rbp), %esi
	movq	-8(%rbp), %rdx
	callq	network_predict_data@PLT
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-16(%rbp), %esi
	movq	-8(%rbp), %rdx
	callq	network_predict_data@PLT
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_13
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	movl	-16(%rbp), %esi
	callq	max_index@PLT
	movl	%eax, -88(%rbp)
	movq	-40(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	movl	-44(%rbp), %esi
	callq	max_index@PLT
	movl	%eax, -92(%rbp)
	movq	-56(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	movl	-60(%rbp), %esi
	callq	max_index@PLT
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-96(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-96(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_1
.LBB0_13:
	cvtsi2ssl	-72(%rbp), %xmm0
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %ecx
	leaq	.L.str(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	movl	-76(%rbp), %edi
	subl	-80(%rbp), %edi
	callq	abs@PLT
	cvtsi2sd	%rax, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rdi
	movl	$2, %esi
	callq	pow@PLT
	movss	%xmm0, -100(%rbp)
	movl	-76(%rbp), %eax
	addl	-80(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-100(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	divss	-104(%rbp), %xmm0
	leaq	.L.str.1(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%5d %5d\n%5d %5d\n"
.L.str.1:
	.asciz	"%f\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym network_predict_data
	.addrsig_sym max_index
	.addrsig_sym printf
	.addrsig_sym pow
	.addrsig_sym abs