	.text
	.globl	three_way_min                   # -- Begin function three_way_min
	.p2align	4, 0x90
three_way_min:                          # @three_way_min
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movss	-4(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_5
# %bb.1:
	movss	-4(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_3
# %bb.2:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)                # 4-byte Spill
	jmp	.LBB0_4
.LBB0_3:
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)                # 4-byte Spill
.LBB0_4:
	movss	-16(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)                # 4-byte Spill
	jmp	.LBB0_9
.LBB0_5:
	movss	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_7
# %bb.6:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)                # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)                # 4-byte Spill
.LBB0_8:
	movss	-24(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)                # 4-byte Spill
.LBB0_9:
	movss	-20(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig