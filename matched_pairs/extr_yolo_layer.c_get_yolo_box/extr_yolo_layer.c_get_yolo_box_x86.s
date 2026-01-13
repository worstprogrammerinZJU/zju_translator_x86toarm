	.text
	.globl	get_yolo_box                    # -- Begin function get_yolo_box
	.p2align	4, 0x90
get_yolo_box:                           # @get_yolo_box
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	48(%rbp), %eax
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	cvtsi2ssl	-44(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	cvtsi2ssl	16(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -16(%rbp)
	cvtsi2ssl	-48(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	48(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	cvtsi2ssl	24(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %esi
	movl	48(%rbp), %ecx
                                        # implicit-def: $rdx
	movl	%ecx, %edx
                                        # implicit-def: $rcx
	movl	%esi, %ecx
	leal	(%rcx,%rdx,2), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	callq	exp@PLT
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvtsi2ssl	32(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	48(%rbp), %esi
                                        # implicit-def: $rdx
	movl	%esi, %edx
	leal	(%rdx,%rdx,2), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	callq	exp@PLT
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	movss	4(%rax,%rcx,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvtsi2ssl	40(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-16(%rbp), %rax
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exp