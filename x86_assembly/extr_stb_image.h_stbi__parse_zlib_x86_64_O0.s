	.text
	.p2align	4, 0x90                         # -- Begin function stbi__parse_zlib
stbi__parse_zlib:                       # @stbi__parse_zlib
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_4
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	stbi__parse_zlib_header@PLT
	cmpl	$0, %eax
	jne	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	stbi__zreceive@PLT
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	stbi__zreceive@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB0_9
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__parse_uncompressed_block@PLT
	cmpl	$0, %eax
	jne	.LBB0_8
# %bb.7:
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_24
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	cmpl	$3, -28(%rbp)
	jne	.LBB0_11
# %bb.10:
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB0_17
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	addq	$4, %rdi
	movl	stbi__zdefault_length(%rip), %esi
	movl	$288, %edx                      # imm = 0x120
	callq	stbi__zbuild_huffman@PLT
	cmpl	$0, %eax
	jne	.LBB0_14
# %bb.13:
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	movl	stbi__zdefault_distance(%rip), %esi
	movl	$32, %edx
	callq	stbi__zbuild_huffman@PLT
	cmpl	$0, %eax
	jne	.LBB0_16
# %bb.15:
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__compute_huffman_codes@PLT
	cmpl	$0, %eax
	jne	.LBB0_19
# %bb.18:
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_19:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__parse_huffman_block@PLT
	cmpl	$0, %eax
	jne	.LBB0_22
# %bb.21:
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$0, -24(%rbp)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_5
# %bb.26:
	movl	$1, -4(%rbp)
.LBB0_27:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stbi__zdefault_length
	.p2align	2
stbi__zdefault_length:
	.long	0                               # 0x0
	.globl	stbi__zdefault_distance
	.p2align	2
stbi__zdefault_distance:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__parse_zlib
	.addrsig_sym stbi__parse_zlib_header
	.addrsig_sym stbi__zreceive
	.addrsig_sym stbi__parse_uncompressed_block
	.addrsig_sym stbi__zbuild_huffman
	.addrsig_sym stbi__compute_huffman_codes
	.addrsig_sym stbi__parse_huffman_block
	.addrsig_sym stbi__zdefault_length
	.addrsig_sym stbi__zdefault_distance