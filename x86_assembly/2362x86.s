	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function set
.LCPI0_0:
	.quad	0x41dfffffffc00000              # double 2147483647
.LCPI0_1:
	.quad	0x40dfffc000000000              # double 32767
.LCPI0_2:
	.quad	0x405fc00000000000              # double 127
.LCPI0_3:
	.quad	0x3ff0000000000000              # double 1
	.text
	.p2align	4, 0x90
set:                                    # @set
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	-24(%rbp), %edi
	callq	av_sample_fmt_is_planar@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %edi
	xorl	%esi, %esi
	callq	av_get_alt_sample_fmt@PLT
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	-20(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -16(%rbp)
.LBB0_3:
	movl	-24(%rbp), %eax
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
	movsd	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	lrint@PLT
	movl	%eax, %edi
	callq	av_clip_uint8@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_10
.LBB0_5:
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	callq	lrint@PLT
	movl	%eax, %edi
	callq	av_clip_int16@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_10
.LBB0_6:
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	callq	llrint@PLT
	movl	%eax, %edi
	callq	av_clipl_int32@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_10
.LBB0_7:
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	jmp	.LBB0_10
.LBB0_8:
	movsd	-32(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	jmp	.LBB0_10
.LBB0_9:
	xorl	%edi, %edi
	callq	av_assert2@PLT
.LBB0_10:
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
	.addrsig_sym set
	.addrsig_sym av_sample_fmt_is_planar
	.addrsig_sym av_get_alt_sample_fmt
	.addrsig_sym av_clip_uint8
	.addrsig_sym lrint
	.addrsig_sym av_clip_int16
	.addrsig_sym av_clipl_int32
	.addrsig_sym llrint
	.addrsig_sym av_assert2