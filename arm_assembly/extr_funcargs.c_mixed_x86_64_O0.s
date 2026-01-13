	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function mixed
.LCPI0_0:
	.quad	0x4043800000000000              # double 39
.LCPI0_1:
	.quad	0x4042800000000000              # double 37
.LCPI0_2:
	.quad	0x4041800000000000              # double 35
.LCPI0_3:
	.quad	0x4040800000000000              # double 33
.LCPI0_4:
	.quad	0x403f000000000000              # double 31
.LCPI0_5:
	.quad	0x403d000000000000              # double 29
.LCPI0_6:
	.quad	0x403b000000000000              # double 27
.LCPI0_7:
	.quad	0x4039000000000000              # double 25
.LCPI0_8:
	.quad	0x4037000000000000              # double 23
.LCPI0_9:
	.quad	0x4035000000000000              # double 21
.LCPI0_10:
	.quad	0x4033000000000000              # double 19
.LCPI0_11:
	.quad	0x4031000000000000              # double 17
.LCPI0_12:
	.quad	0x402e000000000000              # double 15
.LCPI0_13:
	.quad	0x402a000000000000              # double 13
.LCPI0_14:
	.quad	0x4026000000000000              # double 11
.LCPI0_15:
	.quad	0x4022000000000000              # double 9
.LCPI0_16:
	.quad	0x401c000000000000              # double 7
.LCPI0_17:
	.quad	0x4014000000000000              # double 5
.LCPI0_18:
	.quad	0x4008000000000000              # double 3
.LCPI0_19:
	.quad	0x3ff0000000000000              # double 1
	.text
	.p2align	4, 0x90
mixed:                                  # @mixed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	216(%rbp), %eax
	movss	208(%rbp), %xmm8                # xmm8 = mem[0],zero,zero,zero
	movl	200(%rbp), %eax
	movss	192(%rbp), %xmm8                # xmm8 = mem[0],zero,zero,zero
	movl	184(%rbp), %eax
	movss	176(%rbp), %xmm8                # xmm8 = mem[0],zero,zero,zero
	movl	168(%rbp), %eax
	movss	160(%rbp), %xmm8                # xmm8 = mem[0],zero,zero,zero
	movl	152(%rbp), %eax
	movss	144(%rbp), %xmm8                # xmm8 = mem[0],zero,zero,zero
	movl	136(%rbp), %eax
	movss	128(%rbp), %xmm8                # xmm8 = mem[0],zero,zero,zero
	movl	120(%rbp), %eax
	movss	112(%rbp), %xmm8                # xmm8 = mem[0],zero,zero,zero
	movl	104(%rbp), %eax
	movss	96(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movl	88(%rbp), %eax
	movss	80(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movl	72(%rbp), %eax
	movss	64(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movl	56(%rbp), %eax
	movss	48(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movl	40(%rbp), %eax
	movss	32(%rbp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movss	%xmm0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movl	%esi, -16(%rbp)
	movss	%xmm2, -20(%rbp)
	movl	%edx, -24(%rbp)
	movss	%xmm3, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movss	%xmm4, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movss	%xmm5, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movss	%xmm6, -52(%rbp)
	movss	%xmm7, -56(%rbp)
	movss	-4(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_19(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	-8(%rbp), %esi
	movl	$2, %edi
	callq	expect@PLT
	movss	-12(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_18(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	-16(%rbp), %esi
	movl	$4, %edi
	callq	expect@PLT
	movss	-20(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_17(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	-24(%rbp), %esi
	movl	$6, %edi
	callq	expect@PLT
	movss	-28(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_16(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	-32(%rbp), %esi
	movl	$8, %edi
	callq	expect@PLT
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_15(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	-40(%rbp), %esi
	movl	$10, %edi
	callq	expect@PLT
	movss	-44(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_14(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	-48(%rbp), %esi
	movl	$12, %edi
	callq	expect@PLT
	movss	-52(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_13(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	16(%rbp), %esi
	movl	$14, %edi
	callq	expect@PLT
	movss	-56(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_12(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	24(%rbp), %esi
	movl	$16, %edi
	callq	expect@PLT
	movss	32(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_11(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	40(%rbp), %esi
	movl	$18, %edi
	callq	expect@PLT
	movss	48(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_10(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	56(%rbp), %esi
	movl	$20, %edi
	callq	expect@PLT
	movss	64(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_9(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	72(%rbp), %esi
	movl	$22, %edi
	callq	expect@PLT
	movss	80(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_8(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	88(%rbp), %esi
	movl	$24, %edi
	callq	expect@PLT
	movss	96(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_7(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	104(%rbp), %esi
	movl	$26, %edi
	callq	expect@PLT
	movss	112(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_6(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	120(%rbp), %esi
	movl	$28, %edi
	callq	expect@PLT
	movss	128(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_5(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	136(%rbp), %esi
	movl	$30, %edi
	callq	expect@PLT
	movss	144(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_4(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	152(%rbp), %esi
	movl	$32, %edi
	callq	expect@PLT
	movss	160(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	168(%rbp), %esi
	movl	$34, %edi
	callq	expect@PLT
	movss	176(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	184(%rbp), %esi
	movl	$36, %edi
	callq	expect@PLT
	movss	192(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	200(%rbp), %esi
	movl	$38, %edi
	callq	expect@PLT
	movss	208(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	expectf@PLT
	movl	216(%rbp), %esi
	movl	$40, %edi
	callq	expect@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mixed
	.addrsig_sym expectf
	.addrsig_sym expect