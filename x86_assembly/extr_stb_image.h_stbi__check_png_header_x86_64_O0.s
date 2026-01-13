	.text
	.p2align	4, 0x90                         # -- Begin function stbi__check_png_header
stbi__check_png_header:                 # @stbi__check_png_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -20(%rbp)
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movslq	-20(%rbp), %rdx
	leaq	stbi__check_png_header.png_sig(%rip), %rcx
	cmpl	(%rcx,%rdx,4), %eax
	je	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	$1, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	4
stbi__check_png_header.png_sig:
	.long	137                             # 0x89
	.long	80                              # 0x50
	.long	78                              # 0x4e
	.long	71                              # 0x47
	.long	13                              # 0xd
	.long	10                              # 0xa
	.long	26                              # 0x1a
	.long	10                              # 0xa
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad png sig"
.L.str.1:
	.asciz	"Not a PNG"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__check_png_header
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__err
	.addrsig_sym stbi__check_png_header.png_sig