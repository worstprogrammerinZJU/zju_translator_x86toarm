	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function stbi__hdr_to_ldr
.LCPI0_0:
	.long	0x437f0000                      # float 255
.LCPI0_1:
	.long	0x3f000000                      # float 0.5
	.text
	.p2align	4, 0x90
stbi__hdr_to_ldr:                       # @stbi__hdr_to_ldr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_26
.LBB0_2:
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	xorl	%ecx, %ecx
	callq	stbi__malloc_mad3@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	STBI_FREE@PLT
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_26
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
	jge	.LBB0_25
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movl	$0, -36(%rbp)
.LBB0_10:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_17
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	stbi__h2l_scale_i(%rip), %xmm0
	movl	stbi__h2l_gamma_i(%rip), %edi
	callq	pow@PLT
	cvtsi2ss	%rax, %xmm0
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	-52(%rbp), %xmm0
	jbe	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=2
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=2
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=2
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	stbi__float2int@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.16:                               #   in Loop: Header=BB0_10 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_10
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_23
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	xorps	%xmm0, %xmm0
	ucomiss	-56(%rbp), %xmm0
	jbe	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_8 Depth=1
	xorps	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	stbi__float2int@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_8
.LBB0_25:
	movq	-16(%rbp), %rdi
	callq	STBI_FREE@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_26:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
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
	.globl	stbi__h2l_scale_i
	.p2align	2
stbi__h2l_scale_i:
	.long	0x00000000                      # float 0
	.globl	stbi__h2l_gamma_i
	.p2align	2
stbi__h2l_gamma_i:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_to_ldr
	.addrsig_sym stbi__malloc_mad3
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__errpuc
	.addrsig_sym pow
	.addrsig_sym stbi__float2int
	.addrsig_sym stbi__h2l_scale_i
	.addrsig_sym stbi__h2l_gamma_i