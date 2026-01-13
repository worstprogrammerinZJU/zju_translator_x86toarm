	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function stbi__ldr_to_hdr
.LCPI0_0:
	.long	0x437f0000                      # float 255
	.text
	.p2align	4, 0x90
stbi__ldr_to_hdr:                       # @stbi__ldr_to_hdr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_18
.LBB0_2:
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	callq	stbi__malloc_mad4@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	STBI_FREE@PLT
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_18
.LBB0_4:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB0_7:
	movl	$0, -32(%rbp)
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movl	-32(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_17
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movl	$0, -36(%rbp)
.LBB0_10:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movl	stbi__l2h_gamma(%rip), %edi
	callq	pow@PLT
	imull	stbi__l2h_scale(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-48(%rbp), %rax
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_10
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_8
.LBB0_17:
	movq	-16(%rbp), %rdi
	callq	STBI_FREE@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_18:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"outofmem"
.L.str.1:
	.asciz	"Out of memory"
	.bss
	.globl	stbi__l2h_gamma
	.p2align	2
stbi__l2h_gamma:
	.long	0                               # 0x0
	.globl	stbi__l2h_scale
	.p2align	2
stbi__l2h_scale:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__ldr_to_hdr
	.addrsig_sym stbi__malloc_mad4
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__errpf
	.addrsig_sym pow
	.addrsig_sym stbi__l2h_gamma
	.addrsig_sym stbi__l2h_scale