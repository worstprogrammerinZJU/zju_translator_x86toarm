	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function hardtan_activate
.LCPI0_0:
	.long	0xbf800000                      # float -1
.LCPI0_1:
	.long	0x3f800000                      # float 1
	.text
	.p2align	4, 0x90
hardtan_activate:                       # @hardtan_activate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -8(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	-8(%rbp), %xmm0
	jbe	.LBB0_2
# %bb.1:
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_4
# %bb.3:
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB0_5:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hardtan_activate