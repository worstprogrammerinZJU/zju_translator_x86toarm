	.text
	.p2align	4, 0x90                         # -- Begin function stbi__grow_buffer_unsafe
stbi__grow_buffer_unsafe:               # @stbi__grow_buffer_unsafe
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movq	-8(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	jmp	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	stbi__get8@PLT
	movq	%rax, -24(%rbp)                 # 8-byte Spill
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	cmpl	$255, -12(%rbp)
	jne	.LBB0_11
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -16(%rbp)
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$255, -16(%rbp)
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_6
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB0_10
# %bb.9:
	movl	-16(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	movb	%cl, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	$24, %ecx
	subl	(%rdx), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	orl	12(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, (%rax)
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$24, (%rax)
	jle	.LBB0_1
.LBB0_13:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__grow_buffer_unsafe
	.addrsig_sym stbi__get8