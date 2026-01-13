	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function test_do
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.p2align	4, 0x90
test_do:                                # @test_do
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -8(%rbp)
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$100, -8(%rbp)
	jle	.LBB0_1
# %bb.3:
	movl	-4(%rbp), %esi
	movl	$5050, %edi                     # imm = 0x13BA
	callq	expect@PLT
	movl	$0, -8(%rbp)
# %bb.4:
	movl	$37, -8(%rbp)
# %bb.5:
	movl	-8(%rbp), %esi
	movl	$37, %edi
	callq	expect@PLT
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$5, %eax
	jge	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_11
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	-8(%rbp), %eax
	addl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$9, -8(%rbp)
	jne	.LBB0_10
# %bb.9:
	jmp	.LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$10, -8(%rbp)
	jl	.LBB0_6
.LBB0_12:
	movl	-4(%rbp), %esi
	movl	$30, %edi
	callq	expect@PLT
	movl	$0, -8(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$100, %eax
	jl	.LBB0_13
# %bb.15:
	movl	$0, -8(%rbp)
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_16 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	cmpl	$100, %eax
	jl	.LBB0_16
# %bb.18:
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	movl	$70, -8(%rbp)
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_19
	jp	.LBB0_19
# %bb.21:
	movl	-8(%rbp), %esi
	movl	$72, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_do
	.addrsig_sym expect