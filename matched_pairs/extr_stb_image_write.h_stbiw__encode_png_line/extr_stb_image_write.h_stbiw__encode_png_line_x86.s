	.text
	.p2align	4, 0x90                         # -- Begin function stbiw__encode_png_line
stbiw__encode_png_line:                 # @stbiw__encode_png_line
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	-24(%rbp), %edx
	leaq	stbiw__encode_png_line.firstmap(%rip), %rax
	leaq	stbiw__encode_png_line.mapping(%rip), %rcx
	cmpl	$0, %edx
	cmovneq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movslq	16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	cmpq	$0, stbi__flip_vertically_on_write(%rip)
	je	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
.LBB0_3:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	-64(%rbp), %ecx                 # 4-byte Reload
	movl	-76(%rbp), %edx                 # 4-byte Reload
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, stbi__flip_vertically_on_write(%rip)
	je	.LBB0_5
# %bb.4:
	xorl	%eax, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:
	movl	-12(%rbp), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
.LBB0_6:
	movl	-80(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	$0, -44(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_18
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-48(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	subq	$6, %rax
	ja	.LBB0_16
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-88(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_1(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_16
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	subl	-60(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	subl	-60(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	sarl	$1, %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_16
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	movzbl	(%rax,%rcx), %esi
	callq	stbiw__paeth@PLT
	movl	%eax, %ecx
	movl	-92(%rbp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	movb	%al, %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_7
.LBB0_18:
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_30
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movl	-48(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	subq	$6, %rax
	ja	.LBB0_28
# %bb.31:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-104(%rbp), %rax                # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_21:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_28
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	subl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_28
.LBB0_23:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	subl	-60(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	subl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	subl	-60(%rbp), %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%edx, %ecx
	sarl	$1, %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_28
.LBB0_25:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %sil
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	-60(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	-60(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movzbl	%sil, %edi
	movzbl	%dl, %esi
	movzbl	(%rax,%rcx), %edx
	callq	stbiw__paeth@PLT
	movl	%eax, %ecx
	movl	-108(%rbp), %eax                # 4-byte Reload
	subl	%ecx, %eax
	movb	%al, %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_28
.LBB0_26:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	subl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	sarl	$1, %ecx
	subl	%ecx, %eax
	movb	%al, %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -112(%rbp)                # 4-byte Spill
	movq	-56(%rbp), %rax
	movl	-44(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	xorl	%edx, %edx
	movzbl	(%rax,%rcx), %edi
	movl	%edx, %esi
	callq	stbiw__paeth@PLT
	movl	%eax, %ecx
	movl	-112(%rbp), %eax                # 4-byte Reload
	subl	%ecx, %eax
	movb	%al, %dl
	movq	24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
.LBB0_28:                               #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_19 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_19
.LBB0_30:
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_21-.LJTI0_0
	.long	.LBB0_22-.LJTI0_0
	.long	.LBB0_23-.LJTI0_0
	.long	.LBB0_24-.LJTI0_0
	.long	.LBB0_25-.LJTI0_0
	.long	.LBB0_26-.LJTI0_0
	.long	.LBB0_27-.LJTI0_0
.LJTI0_1:
	.long	.LBB0_9-.LJTI0_1
	.long	.LBB0_10-.LJTI0_1
	.long	.LBB0_11-.LJTI0_1
	.long	.LBB0_12-.LJTI0_1
	.long	.LBB0_13-.LJTI0_1
	.long	.LBB0_14-.LJTI0_1
	.long	.LBB0_15-.LJTI0_1
                                        # -- End function
	.data
	.p2align	4
stbiw__encode_png_line.mapping:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.p2align	4
stbiw__encode_png_line.firstmap:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	5                               # 0x5
	.long	6                               # 0x6
	.bss
	.globl	stbi__flip_vertically_on_write
	.p2align	3
stbi__flip_vertically_on_write:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__encode_png_line
	.addrsig_sym stbiw__paeth
	.addrsig_sym stbiw__encode_png_line.mapping
	.addrsig_sym stbiw__encode_png_line.firstmap
	.addrsig_sym stbi__flip_vertically_on_write