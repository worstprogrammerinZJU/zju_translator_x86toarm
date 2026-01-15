	.text
	.p2align	4, 0x90                         # -- Begin function stbi__zbuild_huffman
stbi__zbuild_huffman:                   # @stbi__zbuild_huffman
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -36(%rbp)
	leaq	-192(%rbp), %rdi
	xorl	%esi, %esi
	movl	$68, %edx
	callq	memset@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset@PLT
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -192(%rbp,%rax,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -192(%rbp)
	movl	$1, -32(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -32(%rbp)
	jge	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movslq	-32(%rbp), %rax
	movl	-192(%rbp,%rax,4), %eax
	movl	-32(%rbp), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_8
# %bb.7:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_30
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_5
.LBB0_10:
	movl	$0, -40(%rbp)
	movl	$1, -32(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	cmpl	$16, -32(%rbp)
	jge	.LBB0_18
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-40(%rbp), %ecx
	movslq	-32(%rbp), %rax
	movl	%ecx, -112(%rbp,%rax,4)
	movslq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movslq	-36(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-40(%rbp), %eax
	movslq	-32(%rbp), %rcx
	addl	-192(%rbp,%rcx,4), %eax
	movl	%eax, -40(%rbp)
	movslq	-32(%rbp), %rax
	cmpl	$0, -192(%rbp,%rax,4)
	je	.LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	-32(%rbp), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_15
# %bb.14:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_30
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_11 Depth=1
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
	movslq	-32(%rbp), %rax
	movl	-192(%rbp,%rax,4), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
# %bb.17:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_11
.LBB0_18:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	$65536, 64(%rax)                # imm = 0x10000
	movl	$0, -32(%rbp)
.LBB0_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_29
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	je	.LBB0_27
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	movslq	-196(%rbp), %rax
	movl	-112(%rbp,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-196(%rbp), %rdx
	subl	(%rcx,%rdx,4), %eax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-196(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	%eax, -200(%rbp)
	movl	-196(%rbp), %eax
	shll	$9, %eax
	orl	-32(%rbp), %eax
	cltq
	movq	%rax, -208(%rbp)
	movslq	-196(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-200(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movslq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movslq	-200(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	-196(%rbp), %eax
	cmpl	STBI__ZFAST_BITS(%rip), %eax
	jg	.LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_19 Depth=1
	movslq	-196(%rbp), %rax
	movl	-112(%rbp,%rax,4), %edi
	movl	-196(%rbp), %esi
	callq	stbi__bit_reverse@PLT
	movl	%eax, -212(%rbp)
.LBB0_23:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-212(%rbp), %eax
	movl	STBI__ZFAST_BITS(%rip), %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	movq	-208(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-212(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-196(%rbp), %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	addl	-212(%rbp), %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB0_23
.LBB0_25:                               #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_19 Depth=1
	movslq	-196(%rbp), %rax
	movl	-112(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -112(%rbp,%rax,4)
.LBB0_27:                               #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_19 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_19
.LBB0_29:
	movl	$1, -4(%rbp)
.LBB0_30:
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad sizes"
.L.str.1:
	.asciz	"Corrupt PNG"
.L.str.2:
	.asciz	"bad codelengths"
	.bss
	.globl	STBI__ZFAST_BITS
	.p2align	2
STBI__ZFAST_BITS:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__zbuild_huffman
	.addrsig_sym memset
	.addrsig_sym stbi__err
	.addrsig_sym stbi__bit_reverse
	.addrsig_sym STBI__ZFAST_BITS