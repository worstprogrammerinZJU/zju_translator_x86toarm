	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function get
.LCPI0_0:
	.quad	0x41dfffffffc00000              # double 2147483647
.LCPI0_1:
	.quad	0x40dfffc000000000              # double 32767
.LCPI0_2:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_3:
	.quad	0x405fc00000000000              # double 127
	.text
	.p2align	4, 0x90
get:                                    # @get
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-32(%rbp), %edi
	callq	av_sample_fmt_is_planar@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-32(%rbp), %edi
	xorl	%esi, %esi
	callq	av_get_alt_sample_fmt@PLT
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -24(%rbp)
.LBB0_3:
	movl	-32(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	subl	$4, %eax
	ja	.LBB0_9
# %bb.11:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_4:
	movq	-40(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_10
.LBB0_5:
	movq	-40(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_10
.LBB0_6:
	movq	-40(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_10
.LBB0_7:
	movq	-40(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_10
.LBB0_8:
	movq	-40(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	xorl	%edi, %edi
	callq	av_assert0@PLT
.LBB0_10:
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get
	.addrsig_sym av_sample_fmt_is_planar
	.addrsig_sym av_get_alt_sample_fmt
	.addrsig_sym av_assert0