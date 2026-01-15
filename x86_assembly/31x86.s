	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function selu_activate
.LCPI0_0:
	.quad	0x3ffac56d5cfaacda              # double 1.6732
.LCPI0_1:
	.quad	0x3ff0cfaacd9e83e4              # double 1.0507
	.text
	.p2align	4, 0x90
selu_activate:                          # @selu_activate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)                # 8-byte Spill
	xorps	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)                # 8-byte Spill
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	exp@PLT
	movsd	-32(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm3
	mulsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym selu_activate
	.addrsig_sym exp