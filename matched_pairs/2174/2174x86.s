	.text
	.p2align	4, 0x90                         # -- Begin function stbi__build_huffman
stbi__build_huffman:                    # @stbi__build_huffman
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpl	$16, -28(%rbp)
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -32(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$1, -32(%rbp)
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	cmpl	$16, -32(%rbp)
	jg	.LBB0_19
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-36(%rbp), %edx
	subl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB0_17
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_12
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	-32(%rbp), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jb	.LBB0_16
# %bb.15:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_30
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-40(%rbp), %edx
	movl	$16, %ecx
	subl	-32(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-40(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -40(%rbp)
# %bb.18:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_9
.LBB0_19:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-32(%rbp), %rcx
	movl	$-1, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movl	FAST_BITS(%rip), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	$255, %esi
	callq	memset@PLT
	movl	$0, -28(%rbp)
.LBB0_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_29
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	FAST_BITS(%rip), %eax
	jg	.LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	FAST_BITS(%rip), %ecx
	subl	-44(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -48(%rbp)
	movl	FAST_BITS(%rip), %ecx
	subl	-44(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -52(%rbp)
	movl	$0, -32(%rbp)
.LBB0_23:                               #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	-48(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.25:                               #   in Loop: Header=BB0_23 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_23
.LBB0_26:                               #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_27
.LBB0_27:                               #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_20
.LBB0_29:
	movl	$1, -4(%rbp)
.LBB0_30:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad code lengths"
.L.str.1:
	.asciz	"Corrupt JPEG"
	.bss
	.globl	FAST_BITS
	.p2align	2
FAST_BITS:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__build_huffman
	.addrsig_sym stbi__err
	.addrsig_sym memset
	.addrsig_sym FAST_BITS