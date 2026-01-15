	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function rand_normal
.LCPI0_0:
	.quad	0x2b2bff2ee48e0530              # double 1.0E-100
	.text
	.globl	rand_normal
	.p2align	4, 0x90
rand_normal:                            # @rand_normal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	cmpl	$0, rand_normal.haveSpare(%rip)
	je	.LBB0_2
# %bb.1:
	movl	$0, rand_normal.haveSpare(%rip)
	movsd	rand_normal.rand1(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	sqrt@PLT
	movss	%xmm0, -8(%rbp)                 # 4-byte Spill
	movsd	rand_normal.rand2(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	sin@PLT
	movaps	%xmm0, %xmm1
	movss	-8(%rbp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	$1, rand_normal.haveSpare(%rip)
	movb	$0, %al
	callq	rand@PLT
	cvtsi2sdq	RAND_MAX(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, rand_normal.rand1(%rip)
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	rand_normal.rand1(%rip), %xmm0
	jbe	.LBB0_4
# %bb.3:
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, rand_normal.rand1(%rip)
.LBB0_4:
	movsd	rand_normal.rand1(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	log@PLT
	imull	$4294967294, %eax, %eax         # imm = 0xFFFFFFFE
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, rand_normal.rand1(%rip)
	movb	$0, %al
	callq	rand@PLT
	cvtsi2sdq	RAND_MAX(%rip), %xmm1
	divsd	%xmm1, %xmm0
	mulsd	TWO_PI(%rip), %xmm0
	movsd	%xmm0, rand_normal.rand2(%rip)
	movsd	rand_normal.rand1(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	sqrt@PLT
	movss	%xmm0, -12(%rbp)                # 4-byte Spill
	movsd	rand_normal.rand2(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	cos@PLT
	movaps	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
.LBB0_5:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.local	rand_normal.haveSpare
	.comm	rand_normal.haveSpare,4,4
	.local	rand_normal.rand1
	.comm	rand_normal.rand1,8,8
	.local	rand_normal.rand2
	.comm	rand_normal.rand2,8,8
	.bss
	.globl	RAND_MAX
	.p2align	3
RAND_MAX:
	.quad	0                               # 0x0
	.globl	TWO_PI
	.p2align	3
TWO_PI:
	.quad	0x0000000000000000              # double 0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sqrt
	.addrsig_sym sin
	.addrsig_sym rand
	.addrsig_sym log
	.addrsig_sym cos
	.addrsig_sym rand_normal.haveSpare
	.addrsig_sym rand_normal.rand1
	.addrsig_sym rand_normal.rand2
	.addrsig_sym RAND_MAX
	.addrsig_sym TWO_PI