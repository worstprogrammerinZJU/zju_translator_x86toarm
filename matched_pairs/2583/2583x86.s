	.text
	.globl	rand_uniform                    # -- Begin function rand_uniform
	.p2align	4, 0x90
rand_uniform:                           # @rand_uniform
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_2
# %bb.1:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -8(%rbp)
.LBB0_2:
	movb	$0, %al
	callq	rand@PLT
	cvtsi2ss	%rax, %xmm0
	divss	RAND_MAX(%rip), %xmm0
	movss	-8(%rbp), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	subss	-4(%rbp), %xmm2
	movss	-4(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	RAND_MAX
	.p2align	2
RAND_MAX:
	.long	0x00000000                      # float 0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rand
	.addrsig_sym RAND_MAX