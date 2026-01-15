	.text
	.globl	rotate_image_cw                 # -- Begin function rotate_image_cw
	.p2align	4, 0x90
rotate_image_cw:                        # @rotate_image_cw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rcx
	movq	%rcx, -40(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	(%rcx), %eax
	cmpl	4(%rcx), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-4(%rbp), %eax
	addl	$400, %eax                      # imm = 0x190
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	%edx, -4(%rbp)
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -20(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_14
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$0, -12(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_7 Depth 4
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-44(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movl	$0, -16(%rbp)
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-48(%rbp), %eax                 # 4-byte Reload
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=4
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	16(%rdi), %rax
	movl	-16(%rbp), %ecx
	movl	(%rdi), %edx
	movl	-12(%rbp), %esi
	movl	4(%rdi), %r8d
	imull	-20(%rbp), %r8d
	addl	%r8d, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)
	movq	16(%rdi), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	subl	-12(%rbp), %ecx
	movl	(%rdi), %edx
	movl	-16(%rbp), %esi
	movl	4(%rdi), %r8d
	imull	-20(%rbp), %r8d
	addl	%r8d, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	16(%rdi), %rax
	movl	-16(%rbp), %ecx
	movl	(%rdi), %edx
	movl	-12(%rbp), %esi
	movl	4(%rdi), %r8d
	imull	-20(%rbp), %r8d
	addl	%r8d, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	16(%rdi), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	subl	-16(%rbp), %ecx
	movl	(%rdi), %edx
	movl	-24(%rbp), %esi
	subl	$1, %esi
	subl	-12(%rbp), %esi
	movl	4(%rdi), %r8d
	imull	-20(%rbp), %r8d
	addl	%r8d, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	16(%rdi), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	subl	-12(%rbp), %ecx
	movl	(%rdi), %edx
	movl	-16(%rbp), %esi
	movl	4(%rdi), %r8d
	imull	-20(%rbp), %r8d
	addl	%r8d, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	16(%rdi), %rax
	movl	-12(%rbp), %ecx
	movl	(%rdi), %edx
	movl	-24(%rbp), %esi
	subl	$1, %esi
	subl	-16(%rbp), %esi
	movl	4(%rdi), %r8d
	imull	-20(%rbp), %r8d
	addl	%r8d, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	16(%rdi), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	subl	-16(%rbp), %ecx
	movl	(%rdi), %edx
	movl	-24(%rbp), %esi
	subl	$1, %esi
	subl	-12(%rbp), %esi
	movl	4(%rdi), %r8d
	imull	-20(%rbp), %r8d
	addl	%r8d, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	16(%rdi), %rax
	movl	-12(%rbp), %ecx
	movl	(%rdi), %edx
	movl	-24(%rbp), %esi
	subl	$1, %esi
	subl	-16(%rbp), %esi
	movl	4(%rdi), %edi
	imull	-20(%rbp), %edi
	addl	%edi, %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=4
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=3
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_5
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_16:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert