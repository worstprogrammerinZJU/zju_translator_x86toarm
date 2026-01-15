	.text
	.globl	gemm_cpu                        # -- Begin function gemm_cpu
	.p2align	4, 0x90
gemm_cpu:                               # @gemm_cpu
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	48(%rbp), %eax
	movq	40(%rbp), %rax
	movl	32(%rbp), %eax
	movq	24(%rbp), %rax
	movl	16(%rbp), %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movss	%xmm0, -24(%rbp)
	movq	%r9, -32(%rbp)
	movss	%xmm1, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -44(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	40(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	48(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	cmpl	$0, -4(%rbp)
	jne	.LBB0_11
# %bb.9:
	cmpl	$0, -8(%rbp)
	jne	.LBB0_11
# %bb.10:
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx
	movl	16(%rbp), %r8d
	movq	24(%rbp), %r9
	movl	32(%rbp), %r11d
	movq	40(%rbp), %r10
	movl	48(%rbp), %eax
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	gemm_nn@PLT
	jmp	.LBB0_20
.LBB0_11:
	cmpl	$0, -4(%rbp)
	je	.LBB0_14
# %bb.12:
	cmpl	$0, -8(%rbp)
	jne	.LBB0_14
# %bb.13:
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx
	movl	16(%rbp), %r8d
	movq	24(%rbp), %r9
	movl	32(%rbp), %r11d
	movq	40(%rbp), %r10
	movl	48(%rbp), %eax
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	gemm_tn@PLT
	jmp	.LBB0_19
.LBB0_14:
	cmpl	$0, -4(%rbp)
	jne	.LBB0_17
# %bb.15:
	cmpl	$0, -8(%rbp)
	je	.LBB0_17
# %bb.16:
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx
	movl	16(%rbp), %r8d
	movq	24(%rbp), %r9
	movl	32(%rbp), %r11d
	movq	40(%rbp), %r10
	movl	48(%rbp), %eax
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	gemm_nt@PLT
	jmp	.LBB0_18
.LBB0_17:
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx
	movl	16(%rbp), %r8d
	movq	24(%rbp), %r9
	movl	32(%rbp), %r11d
	movq	40(%rbp), %r10
	movl	48(%rbp), %eax
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	gemm_tt@PLT
.LBB0_18:
	jmp	.LBB0_19
.LBB0_19:
	jmp	.LBB0_20
.LBB0_20:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gemm_nn
	.addrsig_sym gemm_tn
	.addrsig_sym gemm_nt
	.addrsig_sym gemm_tt