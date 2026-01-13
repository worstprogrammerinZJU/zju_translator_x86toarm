	.text
	.globl	shortcut_cpu                    # -- Begin function shortcut_cpu
	.p2align	4, 0x90
shortcut_cpu:                           # @shortcut_cpu
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	32(%rbp), %rax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	movss	%xmm1, -36(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -40(%rbp)
	movl	-28(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %eax
	cltd
	idivl	16(%rbp)
	movl	%eax, %ecx
	movl	-88(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movl	16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, %ecx
	movl	-84(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	cmpl	$1, -40(%rbp)
	jge	.LBB0_2
# %bb.1:
	movl	$1, -40(%rbp)
.LBB0_2:
	cmpl	$1, -44(%rbp)
	jge	.LBB0_4
# %bb.3:
	movl	$1, -44(%rbp)
.LBB0_4:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_6
# %bb.5:
	movl	-8(%rbp), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	jmp	.LBB0_7
.LBB0_6:
	movl	-28(%rbp), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
.LBB0_7:
	movl	-92(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	cmpl	16(%rbp), %eax
	jge	.LBB0_9
# %bb.8:
	movl	-12(%rbp), %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	jmp	.LBB0_10
.LBB0_9:
	movl	16(%rbp), %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
.LBB0_10:
	movl	-96(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	cmpl	24(%rbp), %eax
	jge	.LBB0_12
# %bb.11:
	movl	-16(%rbp), %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	jmp	.LBB0_13
.LBB0_12:
	movl	24(%rbp), %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
.LBB0_13:
	movl	-100(%rbp), %eax                # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	$0, -72(%rbp)
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_18 Depth 3
                                        #         Child Loop BB0_20 Depth 4
	movl	-72(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_29
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$0, -68(%rbp)
.LBB0_16:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_18 Depth 3
                                        #         Child Loop BB0_20 Depth 4
	movl	-68(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB0_27
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$0, -64(%rbp)
.LBB0_18:                               #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_20 Depth 4
	movl	-64(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_25
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=3
	movl	$0, -60(%rbp)
.LBB0_20:                               #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-60(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=4
	movl	-60(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	-28(%rbp), %ecx
	movl	-64(%rbp), %edx
	imull	-44(%rbp), %edx
	movl	16(%rbp), %esi
	movl	-68(%rbp), %edi
	movl	24(%rbp), %r8d
	imull	-72(%rbp), %r8d
	addl	%r8d, %edi
	imull	%edi, %esi
	addl	%esi, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	-60(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	-64(%rbp), %edx
	imull	-40(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	-68(%rbp), %edi
	movl	-16(%rbp), %r8d
	imull	-72(%rbp), %r8d
	addl	%r8d, %edi
	imull	%edi, %esi
	addl	%esi, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm2            # xmm2 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-80(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movq	32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=4
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_20
.LBB0_23:                               #   in Loop: Header=BB0_18 Depth=3
	jmp	.LBB0_24
.LBB0_24:                               #   in Loop: Header=BB0_18 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_18
.LBB0_25:                               #   in Loop: Header=BB0_16 Depth=2
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_16 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_16
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_14 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB0_14
.LBB0_29:
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert