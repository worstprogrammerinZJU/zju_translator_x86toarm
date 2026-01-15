	.text
	.globl	forward_maxpool_layer           # -- Begin function forward_maxpool_layer
	.p2align	4, 0x90
forward_maxpool_layer:                  # @forward_maxpool_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	16(%rbp), %rcx
	movq	%rcx, -96(%rbp)                 # 8-byte Spill
	movq	%rdi, -8(%rbp)
	xorl	%eax, %eax
	subl	(%rcx), %eax
	movl	$2, %esi
	cltd
	idivl	%esi
	movl	%eax, -36(%rbp)
	xorl	%eax, %eax
	subl	(%rcx), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, -40(%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	8(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	12(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
                                        #           Child Loop BB0_9 Depth 5
                                        #             Child Loop BB0_11 Depth 6
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movl	-12(%rbp), %eax
	cmpl	16(%rcx), %eax
	jge	.LBB0_37
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -24(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
                                        #           Child Loop BB0_9 Depth 5
                                        #             Child Loop BB0_11 Depth 6
	movl	-24(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_35
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -16(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_7 Depth 4
                                        #           Child Loop BB0_9 Depth 5
                                        #             Child Loop BB0_11 Depth 6
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_33
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movl	$0, -20(%rbp)
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_9 Depth 5
                                        #             Child Loop BB0_11 Depth 6
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_31
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=4
	movl	-20(%rbp), %eax
	movl	-48(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-44(%rbp), %esi
	movl	-24(%rbp), %edi
	movl	-52(%rbp), %r8d
	imull	-12(%rbp), %r8d
	addl	%r8d, %edi
	imull	%edi, %esi
	addl	%esi, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movss	FLT_MAX(%rip), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -60(%rbp)
	movl	$-1, -64(%rbp)
	movl	$0, -32(%rbp)
.LBB0_9:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        #         Parent Loop BB0_7 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_11 Depth 6
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movl	-32(%rbp), %eax
	cmpl	20(%rcx), %eax
	jge	.LBB0_29
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=5
	movl	$0, -28(%rbp)
.LBB0_11:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        #         Parent Loop BB0_7 Depth=4
                                        #           Parent Loop BB0_9 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movl	-28(%rbp), %eax
	cmpl	20(%rcx), %eax
	jge	.LBB0_27
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=6
	movq	-96(%rbp), %r9                  # 8-byte Reload
	movl	-40(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	24(%r9), %ecx
	addl	%ecx, %eax
	addl	-32(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-36(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	24(%r9), %ecx
	addl	%ecx, %eax
	addl	-28(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movl	28(%r9), %ecx
	movl	-68(%rbp), %edx
	movl	32(%r9), %esi
	movl	-24(%rbp), %edi
	movl	-12(%rbp), %r8d
	imull	12(%r9), %r8d
	addl	%r8d, %edi
	imull	%edi, %esi
	addl	%esi, %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -76(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -68(%rbp)
	movb	%al, -97(%rbp)                  # 1-byte Spill
	jl	.LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=6
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movl	-68(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	32(%rdx), %ecx
	movb	%al, -97(%rbp)                  # 1-byte Spill
	jge	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=6
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -72(%rbp)
	movb	%al, -97(%rbp)                  # 1-byte Spill
	jl	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=6
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movl	-72(%rbp), %eax
	cmpl	28(%rcx), %eax
	setl	%al
	movb	%al, -97(%rbp)                  # 1-byte Spill
.LBB0_16:                               #   in Loop: Header=BB0_11 Depth=6
	movb	-97(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_11 Depth=6
	movq	-8(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -104(%rbp)               # 4-byte Spill
	jmp	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=6
	movss	FLT_MAX(%rip), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -104(%rbp)               # 4-byte Spill
.LBB0_19:                               #   in Loop: Header=BB0_11 Depth=6
	movss	-104(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
	movss	-84(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-60(%rbp), %xmm0
	jbe	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_11 Depth=6
	movl	-76(%rbp), %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
	jmp	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_11 Depth=6
	movl	-64(%rbp), %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
.LBB0_22:                               #   in Loop: Header=BB0_11 Depth=6
	movl	-108(%rbp), %eax                # 4-byte Reload
	movl	%eax, -64(%rbp)
	movss	-84(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	-60(%rbp), %xmm0
	jbe	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_11 Depth=6
	movss	-84(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
	jmp	.LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_11 Depth=6
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -112(%rbp)               # 4-byte Spill
.LBB0_25:                               #   in Loop: Header=BB0_11 Depth=6
	movss	-112(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
# %bb.26:                               #   in Loop: Header=BB0_11 Depth=6
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_11
.LBB0_27:                               #   in Loop: Header=BB0_9 Depth=5
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_9 Depth=5
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_9
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=4
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movss	-60(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	40(%rax), %rcx
	movslq	-56(%rbp), %rdx
	movss	%xmm0, (%rcx,%rdx,4)
	movl	-64(%rbp), %edx
	movq	48(%rax), %rax
	movslq	-56(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_7
.LBB0_31:                               #   in Loop: Header=BB0_5 Depth=3
	jmp	.LBB0_32
.LBB0_32:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_33:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_37:
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	FLT_MAX
	.p2align	2
FLT_MAX:
	.long	0x00000000                      # float 0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym FLT_MAX