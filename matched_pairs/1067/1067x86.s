	.text
	.globl	im2col_get_pixel                # -- Begin function im2col_get_pixel
	.p2align	4, 0x90
im2col_get_pixel:                       # @im2col_get_pixel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	24(%rbp), %ecx
	movl	-32(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -32(%rbp)
	movl	24(%rbp), %ecx
	movl	-36(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -32(%rbp)
	jl	.LBB0_4
# %bb.1:
	cmpl	$0, -36(%rbp)
	jl	.LBB0_4
# %bb.2:
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_4
# %bb.3:
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB0_5
.LBB0_4:
	xorps	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	-20(%rbp), %edi
	imull	16(%rbp), %edi
	addl	%edi, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB0_6:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig