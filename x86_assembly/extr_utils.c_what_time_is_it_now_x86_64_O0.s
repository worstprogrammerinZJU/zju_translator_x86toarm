	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function what_time_is_it_now
.LCPI0_0:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	what_time_is_it_now
	.p2align	4, 0x90
what_time_is_it_now:                    # @what_time_is_it_now
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gettimeofday@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	cvtsi2sdq	-16(%rbp), %xmm1
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB0_3:
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gettimeofday