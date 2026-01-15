	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function tanh_activate
.LCPI0_0:
	.long	0x40000000                      # float 2
	.text
	.p2align	4, 0x90
tanh_activate:                          # @tanh_activate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	-4(%rbp), %xmm0
	cvttss2si	%xmm0, %edi
	callq	exp@PLT
	subl	$1, %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	-4(%rbp), %xmm0
	cvttss2si	%xmm0, %edi
	callq	exp@PLT
	movl	%eax, %ecx
	movl	-8(%rbp), %eax                  # 4-byte Reload
	addl	$1, %ecx
	cltd
	idivl	%ecx
	cvtsi2ss	%eax, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tanh_activate
	.addrsig_sym exp