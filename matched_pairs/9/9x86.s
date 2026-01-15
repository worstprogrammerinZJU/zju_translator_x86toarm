	.text
	.p2align	4, 0x90                         # -- Begin function elu_activate
elu_activate:                           # @elu_activate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -16(%rbp)                # 4-byte Spill
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)                # 4-byte Spill
	xorps	%xmm0, %xmm0
	ucomiss	-4(%rbp), %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	exp@PLT
	movss	-16(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm2                # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movl	%eax, %ecx
	movl	-8(%rbp), %eax                  # 4-byte Reload
	subl	$1, %ecx
	imull	%ecx, %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym elu_activate
	.addrsig_sym exp