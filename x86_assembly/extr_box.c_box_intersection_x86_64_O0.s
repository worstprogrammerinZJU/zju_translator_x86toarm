	.text
	.globl	box_intersection                # -- Begin function box_intersection
	.p2align	4, 0x90
box_intersection:                       # @box_intersection
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	overlap@PLT
	movss	%xmm0, -44(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	overlap@PLT
	movss	%xmm0, -48(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	-44(%rbp), %xmm0
	ja	.LBB0_2
# %bb.1:
	xorps	%xmm0, %xmm0
	ucomiss	-48(%rbp), %xmm0
	jbe	.LBB0_3
.LBB0_2:
	xorps	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movss	-44(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB0_4:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym overlap