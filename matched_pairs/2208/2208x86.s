	.text
	.p2align	4, 0x90                         # -- Begin function stbi__gif_load_next
stbi__gif_load_next:                    # @stbi__gif_load_next
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -56(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_6
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	stbi__gif_header@PLT
	cmpl	$0, %eax
	jne	.LBB0_3
# %bb.2:
	movq	$0, -8(%rbp)
	jmp	.LBB0_76
.LBB0_3:
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	shll	$2, %edi
	movq	-24(%rbp), %rax
	imull	12(%rax), %edi
	callq	stbi__malloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	shll	$2, %edi
	movq	-24(%rbp), %rax
	imull	12(%rax), %edi
	callq	stbi__malloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	movq	-24(%rbp), %rax
	imull	12(%rax), %edi
	callq	stbi__malloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_5
# %bb.4:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_76
.LBB0_5:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	shll	$2, %edx
	movq	-24(%rbp), %rax
	imull	12(%rax), %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	shll	$2, %edx
	movq	-24(%rbp), %rax
	imull	12(%rax), %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	imull	12(%rax), %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$1, -56(%rbp)
	jmp	.LBB0_28
.LBB0_6:
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	andl	$28, %eax
	sarl	$2, %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-24(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, -64(%rbp)
	cmpl	$3, -52(%rbp)
	jne	.LBB0_9
# %bb.7:
	cmpq	$0, -48(%rbp)
	jne	.LBB0_9
# %bb.8:
	movl	$2, -52(%rbp)
.LBB0_9:
	cmpl	$3, -52(%rbp)
	jne	.LBB0_17
# %bb.10:
	movl	$0, -60(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-60(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	-60(%rbp), %eax
	shll	$2, %eax
	cltq
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	-48(%rbp), %rsi
	movl	-60(%rbp), %eax
	shll	$2, %eax
	cltq
	shlq	$3, %rax
	addq	%rax, %rsi
	movl	$4, %edx
	callq	memcpy@PLT
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_11
.LBB0_16:
	jmp	.LBB0_27
.LBB0_17:
	cmpl	$2, -52(%rbp)
	jne	.LBB0_25
# %bb.18:
	movl	$0, -60(%rbp)
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-60(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	-60(%rbp), %eax
	shll	$2, %eax
	cltq
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movl	-60(%rbp), %eax
	shll	$2, %eax
	cltq
	shlq	$3, %rax
	addq	%rax, %rsi
	movl	$4, %edx
	callq	memcpy@PLT
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_19 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_19
.LBB0_24:
	jmp	.LBB0_26
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	jmp	.LBB0_27
.LBB0_27:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	shll	$2, %edx
	movq	-24(%rbp), %rax
	imull	12(%rax), %edx
	callq	memcpy@PLT
.LBB0_28:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	imull	12(%rax), %edx
	xorl	%esi, %esi
	callq	memset@PLT
.LBB0_29:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_70 Depth 2
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
	subl	$33, %eax
	je	.LBB0_57
	jmp	.LBB0_77
.LBB0_77:
	movl	-108(%rbp), %eax                # 4-byte Reload
	subl	$44, %eax
	je	.LBB0_30
	jmp	.LBB0_78
.LBB0_78:
	movl	-108(%rbp), %eax                # 4-byte Reload
	subl	$59, %eax
	je	.LBB0_73
	jmp	.LBB0_74
.LBB0_30:
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, -84(%rbp)
	movl	-72(%rbp), %eax
	addl	-80(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jg	.LBB0_32
# %bb.31:
	movl	-76(%rbp), %eax
	addl	-84(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jle	.LBB0_33
.LBB0_32:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_76
.LBB0_33:
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	shll	$2, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 36(%rax)
	movl	-72(%rbp), %ecx
	shll	$2, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 40(%rax)
	movl	-76(%rbp), %ecx
	movq	-24(%rbp), %rax
	imull	36(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	movl	-80(%rbp), %eax
	shll	$2, %eax
	addl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movl	-84(%rbp), %eax
	movq	-24(%rbp), %rdx
	imull	36(%rdx), %eax
	addl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 52(%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 56(%rax)
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 60(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB0_35
# %bb.34:
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	shll	$3, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 68(%rax)
	movq	-24(%rbp), %rax
	movl	$3, 72(%rax)
	jmp	.LBB0_36
.LBB0_35:
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 68(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 72(%rax)
.LBB0_36:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB0_41
# %bb.37:
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movl	64(%rax), %ecx
	andl	$7, %ecx
	movl	$2, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -112(%rbp)                # 4-byte Spill
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_39
# %bb.38:
	movq	-24(%rbp), %rax
	movl	76(%rax), %eax
	movl	%eax, -132(%rbp)                # 4-byte Spill
	jmp	.LBB0_40
.LBB0_39:
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movl	%eax, -132(%rbp)                # 4-byte Spill
	jmp	.LBB0_40
.LBB0_40:
	movl	-112(%rbp), %edx                # 4-byte Reload
	movq	-120(%rbp), %rsi                # 8-byte Reload
	movq	-128(%rbp), %rdi                # 8-byte Reload
	movl	-132(%rbp), %ecx                # 4-byte Reload
	callq	stbi__gif_parse_colortable@PLT
	movq	-24(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 80(%rax)
	jmp	.LBB0_45
.LBB0_41:
	movq	-24(%rbp), %rax
	movl	88(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB0_43
# %bb.42:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 80(%rax)
	jmp	.LBB0_44
.LBB0_43:
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_76
.LBB0_44:
	jmp	.LBB0_45
.LBB0_45:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	stbi__process_gif_raster@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_47
# %bb.46:
	movq	$0, -8(%rbp)
	jmp	.LBB0_76
.LBB0_47:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-24(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_56
# %bb.48:
	movq	-24(%rbp), %rax
	cmpq	$0, 104(%rax)
	jbe	.LBB0_56
# %bb.49:
	movl	$0, -60(%rbp)
.LBB0_50:                               # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_55
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-60(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	jne	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_50 Depth=1
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$255, 12(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	-60(%rbp), %eax
	shll	$2, %eax
	cltq
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	shlq	$3, %rax
	addq	%rax, %rsi
	movl	$4, %edx
	callq	memcpy@PLT
.LBB0_53:                               #   in Loop: Header=BB0_50 Depth=1
	jmp	.LBB0_54
.LBB0_54:                               #   in Loop: Header=BB0_50 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_50
.LBB0_55:
	jmp	.LBB0_56
.LBB0_56:
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_76
.LBB0_57:                               #   in Loop: Header=BB0_29 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -104(%rbp)
	cmpl	$249, -104(%rbp)
	jne	.LBB0_69
# %bb.58:                               #   in Loop: Header=BB0_29 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -100(%rbp)
	cmpl	$4, -100(%rbp)
	jne	.LBB0_67
# %bb.59:                               #   in Loop: Header=BB0_29 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	imull	$10, %eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 112(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 76(%rax)
	jl	.LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_29 Depth=1
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$255, 12(%rax)
.LBB0_61:                               #   in Loop: Header=BB0_29 Depth=1
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_65
# %bb.62:                               #   in Loop: Header=BB0_29 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 76(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 76(%rax)
	jl	.LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_29 Depth=1
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$0, 12(%rax)
.LBB0_64:                               #   in Loop: Header=BB0_29 Depth=1
	jmp	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_29 Depth=1
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	stbi__skip@PLT
	movq	-24(%rbp), %rax
	movl	$-1, 76(%rax)
.LBB0_66:                               #   in Loop: Header=BB0_29 Depth=1
	jmp	.LBB0_68
.LBB0_67:                               #   in Loop: Header=BB0_29 Depth=1
	movq	-16(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	stbi__skip@PLT
	jmp	.LBB0_75
.LBB0_68:                               #   in Loop: Header=BB0_29 Depth=1
	jmp	.LBB0_69
.LBB0_69:                               #   in Loop: Header=BB0_29 Depth=1
	jmp	.LBB0_70
.LBB0_70:                               #   Parent Loop BB0_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=2
	movq	-16(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	stbi__skip@PLT
	jmp	.LBB0_70
.LBB0_72:                               #   in Loop: Header=BB0_29 Depth=1
	jmp	.LBB0_75
.LBB0_73:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_76
.LBB0_74:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_29 Depth=1
	jmp	.LBB0_29
.LBB0_76:
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"outofmem"
.L.str.1:
	.asciz	"Out of memory"
.L.str.2:
	.asciz	"bad Image Descriptor"
.L.str.3:
	.asciz	"Corrupt GIF"
.L.str.4:
	.asciz	"missing color table"
.L.str.5:
	.asciz	"unknown code"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_load_next
	.addrsig_sym stbi__gif_header
	.addrsig_sym stbi__malloc
	.addrsig_sym stbi__errpuc
	.addrsig_sym memset
	.addrsig_sym memcpy
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__get16le
	.addrsig_sym stbi__gif_parse_colortable
	.addrsig_sym stbi__process_gif_raster
	.addrsig_sym stbi__skip