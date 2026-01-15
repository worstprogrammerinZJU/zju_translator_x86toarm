	.text
	.globl	gradient                        # -- Begin function gradient
	.p2align	4, 0x90
gradient:                               # @gradient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movss	%xmm0, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	subl	$13, %eax
	ja	.LBB0_15
# %bb.17:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	linear_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_2:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	logistic_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_3:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	loggy_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_4:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	relu_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_5:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	elu_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_6:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	selu_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_7:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	relie_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_8:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	ramp_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_9:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	leaky_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_10:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	tanh_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_11:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	plse_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_12:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	stair_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_13:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	hardtan_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_14:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	lhtan_gradient@PLT
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_15:
	xorps	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
.LBB0_16:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym linear_gradient
	.addrsig_sym logistic_gradient
	.addrsig_sym loggy_gradient
	.addrsig_sym relu_gradient
	.addrsig_sym elu_gradient
	.addrsig_sym selu_gradient
	.addrsig_sym relie_gradient
	.addrsig_sym ramp_gradient
	.addrsig_sym leaky_gradient
	.addrsig_sym tanh_gradient
	.addrsig_sym plse_gradient
	.addrsig_sym stair_gradient
	.addrsig_sym hardtan_gradient
	.addrsig_sym lhtan_gradient