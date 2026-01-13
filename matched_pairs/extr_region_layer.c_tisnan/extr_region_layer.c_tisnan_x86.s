	.text
	.globl	tisnan                          # -- Begin function tisnan
	.p2align	4, 0x90
tisnan:                                 # @tisnan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	ucomiss	-4(%rbp), %xmm0
	setne	%al
	setp	%cl
	orb	%cl, %al
	andb	$1, %al
	movzbl	%al, %eax
	cvtsi2ss	%eax, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig