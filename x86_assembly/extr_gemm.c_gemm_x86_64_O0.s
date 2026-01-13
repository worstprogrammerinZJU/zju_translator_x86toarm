	.text
	.globl	gemm                            # -- Begin function gemm
	.p2align	4, 0x90
gemm:                                   # @gemm
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
	movl	48(%rbp), %eax
	movq	40(%rbp), %rax
	movl	32(%rbp), %eax
	movq	24(%rbp), %rax
	movl	16(%rbp), %eax
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movss	%xmm0, -40(%rbp)
	movq	%r9, -48(%rbp)
	movss	%xmm1, -52(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %r9
	movl	16(%rbp), %r14d
	movq	24(%rbp), %rbx
	movl	32(%rbp), %r11d
	movss	-52(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	40(%rbp), %r10
	movl	48(%rbp), %eax
	movl	%r14d, (%rsp)
	movq	%rbx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%r10, 24(%rsp)
	movl	%eax, 32(%rsp)
	callq	gemm_cpu@PLT
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gemm_cpu