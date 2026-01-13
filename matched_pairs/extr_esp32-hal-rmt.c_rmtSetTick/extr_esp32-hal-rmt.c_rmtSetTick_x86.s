	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function rmtSetTick
.LCPI0_0:
	.quad	0x408f400000000000              # double 1000
.LCPI0_1:
	.quad	0x4029000000000000              # double 12.5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_2:
	.long	0x447a0000                      # float 1000
	.text
	.globl	rmtSetTick
	.p2align	4, 0x90
rmtSetTick:                             # @rmtSetTick
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	xorps	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	$256, %edi                      # imm = 0x100
	callq	_LIMIT@PLT
	movl	%eax, -24(%rbp)
	movss	-20(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movl	$256, %edi                      # imm = 0x100
	callq	_LIMIT@PLT
	movl	%eax, -28(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm1
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-20(%rbp), %xmm0
	callq	_ABS@PLT
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	subss	-20(%rbp), %xmm0
	callq	_ABS@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jge	.LBB0_4
# %bb.3:
	movl	-24(%rbp), %edx
	andl	$255, %edx
	movq	RMT(%rip), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, 4(%rax,%rcx,8)
	movq	RMT(%rip), %rax
	movq	-48(%rbp), %rcx
	movl	$1, (%rax,%rcx,8)
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	-28(%rbp), %edx
	andl	$255, %edx
	movq	RMT(%rip), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, 4(%rax,%rcx,8)
	movq	RMT(%rip), %rax
	movq	-48(%rbp), %rcx
	movl	$0, (%rax,%rcx,8)
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB0_5:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	RMT
	.p2align	3
RMT:
	.zero	8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _LIMIT
	.addrsig_sym _ABS
	.addrsig_sym RMT