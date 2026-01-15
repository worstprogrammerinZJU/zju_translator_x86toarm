	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function set_tm_wday
.LCPI0_0:
	.quad	0x4010000000000000              # double 4
.LCPI0_1:
	.quad	0x4004cccccccccccd              # double 2.6000000000000001
.LCPI0_2:
	.quad	0xbfc999999999999a              # double -0.20000000000000001
	.text
	.p2align	4, 0x90
set_tm_wday:                            # @set_tm_wday
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$1900, %eax                     # imm = 0x76C
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$1900, %eax                     # imm = 0x76C
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$2, 4(%rax)
	jge	.LBB0_2
# %bb.1:
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jge	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %eax
	addl	$12, %eax
	movl	%eax, -20(%rbp)
.LBB0_4:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	floor@PLT
	movq	%rax, %rcx
	movl	-36(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	%ecx, %eax
	addl	-16(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	cvtsi2sdl	-16(%rbp), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	floor@PLT
	movq	%rax, %rcx
	movl	-32(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	%ecx, %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	cvtsi2sdl	-12(%rbp), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	floor@PLT
	movq	%rax, %rcx
	movl	-28(%rbp), %eax                 # 4-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	%ecx, %eax
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	$7, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB0_6
# %bb.5:
	movl	-24(%rbp), %eax
	addl	$7, %eax
	movl	%eax, -24(%rbp)
.LBB0_6:
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_tm_wday
	.addrsig_sym floor