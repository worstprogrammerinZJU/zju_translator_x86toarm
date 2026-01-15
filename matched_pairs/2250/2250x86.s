	.text
	.p2align	4, 0x90                         # -- Begin function stbi__parse_huffman_block
stbi__parse_huffman_block:              # @stbi__parse_huffman_block
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$28, %rsi
	callq	stbi__zhuffman_decode@PLT
	movl	%eax, -28(%rbp)
	cmpl	$256, -28(%rbp)                 # imm = 0x100
	jge	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jge	.LBB0_4
# %bb.3:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_38
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jb	.LBB0_8
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	$1, %edx
	callq	stbi__zexpand@PLT
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.6:
	movl	$0, -4(%rbp)
	jmp	.LBB0_38
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB0_37
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$256, -28(%rbp)                 # imm = 0x100
	jne	.LBB0_11
# %bb.10:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB0_38
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	subl	$257, %eax                      # imm = 0x101
	movl	%eax, -28(%rbp)
	movq	stbi__zlength_base(%rip), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)
	movq	stbi__zlength_extra(%rip), %rax
	movslq	-28(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	stbi__zlength_extra(%rip), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	stbi__zreceive@PLT
	movq	%rax, %rcx
	movslq	-44(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	callq	stbi__zhuffman_decode@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB0_15
# %bb.14:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_38
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	stbi__zdist_base(%rip), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -48(%rbp)
	movq	stbi__zdist_extra(%rip), %rax
	movslq	-28(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	stbi__zdist_extra(%rip), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	stbi__zreceive@PLT
	movq	%rax, %rcx
	movslq	-48(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -48(%rbp)
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	subq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB0_19
# %bb.18:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_38
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	stbi__zexpand@PLT
	cmpl	$0, %eax
	jne	.LBB0_22
# %bb.21:
	movl	$0, -4(%rbp)
	jmp	.LBB0_38
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	cmpl	$1, -48(%rbp)
	jne	.LBB0_30
# %bb.24:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB0_29
# %bb.25:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=2
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_26
# %bb.28:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB0_35
# %bb.31:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_32
.LBB0_32:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -40(%rbp)
	movl	(%rax), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=2
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_32
# %bb.34:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_37
.LBB0_37:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_38:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad huffman code"
.L.str.1:
	.asciz	"Corrupt PNG"
	.bss
	.globl	stbi__zlength_base
	.p2align	3
stbi__zlength_base:
	.quad	0
	.globl	stbi__zlength_extra
	.p2align	3
stbi__zlength_extra:
	.quad	0
	.globl	stbi__zdist_base
	.p2align	3
stbi__zdist_base:
	.quad	0
	.globl	stbi__zdist_extra
	.p2align	3
stbi__zdist_extra:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"bad dist"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__parse_huffman_block
	.addrsig_sym stbi__zhuffman_decode
	.addrsig_sym stbi__err
	.addrsig_sym stbi__zexpand
	.addrsig_sym stbi__zreceive
	.addrsig_sym stbi__zlength_base
	.addrsig_sym stbi__zlength_extra
	.addrsig_sym stbi__zdist_base
	.addrsig_sym stbi__zdist_extra