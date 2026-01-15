	.text
	.p2align	4, 0x90                         # -- Begin function stbi__compute_huffman_codes
stbi__compute_huffman_codes:            # @stbi__compute_huffman_codes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1968, %rsp                     # imm = 0x7B0
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$5, %esi
	callq	stbi__zreceive@PLT
	addl	$257, %eax                      # imm = 0x101
	movl	%eax, -1932(%rbp)
	movq	-16(%rbp), %rdi
	movl	$5, %esi
	callq	stbi__zreceive@PLT
	addl	$1, %eax
	movl	%eax, -1936(%rbp)
	movq	-16(%rbp), %rdi
	movl	$4, %esi
	callq	stbi__zreceive@PLT
	addl	$4, %eax
	movl	%eax, -1940(%rbp)
	movl	-1932(%rbp), %eax
	addl	-1936(%rbp), %eax
	movl	%eax, -1944(%rbp)
	leaq	-1920(%rbp), %rdi
	xorl	%esi, %esi
	movl	$76, %edx
	callq	memset@PLT
	movl	$0, -1924(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-1924(%rbp), %eax
	cmpl	-1940(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	$3, %esi
	callq	stbi__zreceive@PLT
	movl	%eax, -1948(%rbp)
	movl	-1948(%rbp), %ecx
	movslq	-1924(%rbp), %rdx
	leaq	stbi__compute_huffman_codes.length_dezigzag(%rip), %rax
	movslq	(%rax,%rdx,4), %rax
	movl	%ecx, -1920(%rbp,%rax,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-1924(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1924(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	leaq	-1920(%rbp), %rsi
	leaq	-20(%rbp), %rdi
	movl	$19, %edx
	callq	stbi__zbuild_huffman@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_32
.LBB0_6:
	movl	$0, -1928(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-1928(%rbp), %eax
	cmpl	-1944(%rbp), %eax
	jge	.LBB0_25
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	callq	stbi__zhuffman_decode@PLT
	movl	%eax, -1952(%rbp)
	cmpl	$0, -1952(%rbp)
	jl	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	cmpl	$19, -1952(%rbp)
	jl	.LBB0_11
.LBB0_10:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_32
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	cmpl	$16, -1952(%rbp)
	jge	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-1952(%rbp), %ecx
	movl	-1928(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -1928(%rbp)
	cltq
	movl	%ecx, -1840(%rbp,%rax,4)
	jmp	.LBB0_24
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	movl	$0, -1956(%rbp)
	cmpl	$16, -1952(%rbp)
	jne	.LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	stbi__zreceive@PLT
	addl	$3, %eax
	movl	%eax, -1952(%rbp)
	cmpl	$0, -1928(%rbp)
	jne	.LBB0_16
# %bb.15:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_32
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-1928(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-1840(%rbp,%rax,4), %eax
	movl	%eax, -1956(%rbp)
	jmp	.LBB0_21
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	cmpl	$17, -1952(%rbp)
	jne	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rdi
	movl	$3, %esi
	callq	stbi__zreceive@PLT
	addl	$3, %eax
	movl	%eax, -1952(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	cmpl	$18, -1952(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	STBI_ASSERT@PLT
	movq	-16(%rbp), %rdi
	movl	$7, %esi
	callq	stbi__zreceive@PLT
	addl	$11, %eax
	movl	%eax, -1952(%rbp)
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-1944(%rbp), %eax
	subl	-1928(%rbp), %eax
	cmpl	-1952(%rbp), %eax
	jge	.LBB0_23
# %bb.22:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_32
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	leaq	-1840(%rbp), %rdi
	movslq	-1928(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-1956(%rbp), %esi
	movl	-1952(%rbp), %edx
	callq	memset@PLT
	movl	-1952(%rbp), %eax
	addl	-1928(%rbp), %eax
	movl	%eax, -1928(%rbp)
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_7
.LBB0_25:
	movl	-1928(%rbp), %eax
	cmpl	-1944(%rbp), %eax
	je	.LBB0_27
# %bb.26:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_32
.LBB0_27:
	movq	-16(%rbp), %rdi
	addq	$4, %rdi
	leaq	-1840(%rbp), %rsi
	movl	-1932(%rbp), %edx
	callq	stbi__zbuild_huffman@PLT
	cmpl	$0, %eax
	jne	.LBB0_29
# %bb.28:
	movl	$0, -4(%rbp)
	jmp	.LBB0_32
.LBB0_29:
	movq	-16(%rbp), %rdi
	leaq	-1840(%rbp), %rsi
	movslq	-1932(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rsi
	movl	-1936(%rbp), %edx
	callq	stbi__zbuild_huffman@PLT
	cmpl	$0, %eax
	jne	.LBB0_31
# %bb.30:
	movl	$0, -4(%rbp)
	jmp	.LBB0_32
.LBB0_31:
	movl	$1, -4(%rbp)
.LBB0_32:
	movl	-4(%rbp), %eax
	addq	$1968, %rsp                     # imm = 0x7B0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	4
stbi__compute_huffman_codes.length_dezigzag:
	.long	16                              # 0x10
	.long	17                              # 0x11
	.long	18                              # 0x12
	.long	0                               # 0x0
	.long	8                               # 0x8
	.long	7                               # 0x7
	.long	9                               # 0x9
	.long	6                               # 0x6
	.long	10                              # 0xa
	.long	5                               # 0x5
	.long	11                              # 0xb
	.long	4                               # 0x4
	.long	12                              # 0xc
	.long	3                               # 0x3
	.long	13                              # 0xd
	.long	2                               # 0x2
	.long	14                              # 0xe
	.long	1                               # 0x1
	.long	15                              # 0xf
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad codelengths"
.L.str.1:
	.asciz	"Corrupt PNG"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__compute_huffman_codes
	.addrsig_sym stbi__zreceive
	.addrsig_sym memset
	.addrsig_sym stbi__zbuild_huffman
	.addrsig_sym stbi__zhuffman_decode
	.addrsig_sym stbi__err
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__compute_huffman_codes.length_dezigzag