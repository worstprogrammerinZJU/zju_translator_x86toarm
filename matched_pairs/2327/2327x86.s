	.text
	.p2align	4, 0x90                         # -- Begin function stbiw__write_pixels
stbiw__write_pixels:                    # @stbiw__write_pixels
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	$0, -32(%rbp)
	cmpl	$0, -24(%rbp)
	jg	.LBB0_2
# %bb.1:
	jmp	.LBB0_15
.LBB0_2:
	cmpq	$0, stbi__flip_vertically_on_write(%rip)
	je	.LBB0_4
# %bb.3:
	imull	$-1, -16(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB0_4:
	cmpl	$0, -16(%rbp)
	jge	.LBB0_6
# %bb.5:
	movl	$-1, -44(%rbp)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -40(%rbp)
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB0_15
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movl	$0, -36(%rbp)
.LBB0_10:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	movq	16(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-20(%rbp), %ecx
	addl	-36(%rbp), %ecx
	imull	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	24(%rbp), %ecx
	movl	40(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	stbiw__write_pixel@PLT
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_10
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	32(%rbp), %edx
	leaq	-32(%rbp), %rsi
	callq	*%rax
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-16(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_8
.LBB0_15:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stbi__flip_vertically_on_write
	.p2align	3
stbi__flip_vertically_on_write:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__write_pixels
	.addrsig_sym stbiw__write_pixel
	.addrsig_sym stbi__flip_vertically_on_write