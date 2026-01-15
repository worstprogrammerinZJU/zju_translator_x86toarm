	.text
	.p2align	4, 0x90                         # -- Begin function stbi__psd_decode_rle
stbi__psd_decode_rle:                   # @stbi__psd_decode_rle
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_15 Depth 2
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jle	.LBB0_21
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -40(%rbp)
	cmpl	$128, -40(%rbp)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_20
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$128, -40(%rbp)
	jge	.LBB0_11
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB0_7
# %bb.6:
	movl	$0, -4(%rbp)
	jmp	.LBB0_22
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB0_8:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -24(%rbp)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_8
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_19
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$128, -40(%rbp)
	jle	.LBB0_18
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$257, %eax                      # imm = 0x101
	subl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB0_14
# %bb.13:
	movl	$0, -4(%rbp)
	jmp	.LBB0_22
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB0_15:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -40(%rbp)
	je	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -24(%rbp)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_15
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_21:
	movl	$1, -4(%rbp)
.LBB0_22:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__psd_decode_rle
	.addrsig_sym stbi__get8