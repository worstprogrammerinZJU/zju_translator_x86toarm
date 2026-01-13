	.text
	.p2align	4, 0x90                         # -- Begin function stbi__tga_get_comp
stbi__tga_get_comp:                     # @stbi__tga_get_comp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB0_2:
	movl	-8(%rbp), %eax
	addl	$-8, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$24, %eax
	ja	.LBB0_11
# %bb.13:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:
	movl	STBI_grey(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_4:
	cmpl	$0, -12(%rbp)
	je	.LBB0_6
# %bb.5:
	movl	STBI_grey_alpha(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	cmpq	$0, -24(%rbp)
	je	.LBB0_9
# %bb.8:
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
.LBB0_9:
	movl	STBI_rgb(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_10:
	movl	-8(%rbp), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movl	$0, -4(%rbp)
.LBB0_12:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
                                        # -- End function
	.bss
	.globl	STBI_grey
	.p2align	2
STBI_grey:
	.long	0                               # 0x0
	.globl	STBI_grey_alpha
	.p2align	2
STBI_grey_alpha:
	.long	0                               # 0x0
	.globl	STBI_rgb
	.p2align	2
STBI_rgb:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__tga_get_comp
	.addrsig_sym STBI_grey
	.addrsig_sym STBI_grey_alpha
	.addrsig_sym STBI_rgb