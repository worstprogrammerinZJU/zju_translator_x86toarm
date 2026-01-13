	.text
	.p2align	4, 0x90                         # -- Begin function relu_activate
relu_activate:                          # @relu_activate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm1
	mulss	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym relu_activate