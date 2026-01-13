	.text
	.p2align	4, 0x90                         # -- Begin function stbi__hdr_load
stbi__hdr_load:                         # @stbi__hdr_load
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movl	STBI__HDR_BUFLEN(%rip), %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -208(%rbp)                # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
	movq	-56(%rbp), %rdi
	callq	STBI_NOTUSED@PLT
	movq	-208(%rbp), %rsi                # 8-byte Reload
	movq	-16(%rbp), %rdi
	callq	stbi__hdr_gettoken@PLT
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.1:
	movq	-152(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB0_82
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-208(%rbp), %rsi                # 8-byte Reload
	movq	-16(%rbp), %rdi
	callq	stbi__hdr_gettoken@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:
	jmp	.LBB0_9
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-80(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$1, -84(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_4
.LBB0_9:
	cmpl	$0, -84(%rbp)
	jne	.LBB0_11
# %bb.10:
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB0_82
.LBB0_11:
	movq	-208(%rbp), %rsi                # 8-byte Reload
	movq	-16(%rbp), %rdi
	callq	stbi__hdr_gettoken@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$3, %edx
	callq	strncmp@PLT
	cmpq	$0, %rax
	je	.LBB0_13
# %bb.12:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB0_82
.LBB0_13:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movl	$10, %edx
	callq	strtol@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -92(%rbp)
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$32, %eax
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB0_14
.LBB0_16:
	movq	-80(%rbp), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$3, %edx
	callq	strncmp@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.17:
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB0_82
.LBB0_18:
	movq	-80(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	callq	strtol@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-92(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.LBB0_20
# %bb.19:
	movq	-40(%rbp), %rax
	movl	$3, (%rax)
.LBB0_20:
	cmpl	$0, -44(%rbp)
	jne	.LBB0_22
# %bb.21:
	movl	$3, -44(%rbp)
.LBB0_22:
	movl	-88(%rbp), %edi
	movl	-92(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	callq	stbi__mad4sizes_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_24
# %bb.23:
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB0_82
.LBB0_24:
	movl	-88(%rbp), %edi
	movl	-92(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	callq	stbi__malloc_mad4@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_26
# %bb.25:
	leaq	.L.str.12(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB0_82
.LBB0_26:
	cmpl	$8, -88(%rbp)
	jl	.LBB0_28
# %bb.27:
	cmpl	$32768, -88(%rbp)               # imm = 0x8000
	jl	.LBB0_38
.LBB0_28:
	movl	$0, -128(%rbp)
.LBB0_29:
	movl	-128(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB0_37
# %bb.30:
	movl	$0, -124(%rbp)
.LBB0_31:
	movl	-124(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB0_35
# %bb.32:
	jmp	.LBB0_33
.LBB0_33:
	movq	-16(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	movl	$4, %edx
	callq	stbi__getn@PLT
	movq	-112(%rbp), %rdi
	movl	-128(%rbp), %eax
	imull	-88(%rbp), %eax
	imull	-44(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-124(%rbp), %eax
	imull	-44(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	leaq	-176(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	stbi__hdr_convert@PLT
# %bb.34:
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB0_31
.LBB0_35:
	jmp	.LBB0_36
.LBB0_36:
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB0_29
.LBB0_37:
	jmp	.LBB0_81
.LBB0_38:
	movq	$0, -104(%rbp)
	movl	$0, -128(%rbp)
.LBB0_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_51 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_65 Depth 4
                                        #     Child Loop BB0_73 Depth 2
	movl	-128(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB0_78
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=1
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -136(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -140(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -116(%rbp)
	cmpl	$2, -136(%rbp)
	jne	.LBB0_43
# %bb.41:                               #   in Loop: Header=BB0_39 Depth=1
	cmpl	$2, -140(%rbp)
	jne	.LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_39 Depth=1
	movl	-116(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB0_44
.LBB0_43:
	cvtsi2ssl	-136(%rbp), %xmm0
	movss	%xmm0, -192(%rbp)
	cvtsi2ssl	-140(%rbp), %xmm0
	movss	%xmm0, -188(%rbp)
	cvtsi2ssl	-116(%rbp), %xmm0
	movss	%xmm0, -184(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -180(%rbp)
	movq	-112(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	stbi__hdr_convert@PLT
	movl	$1, -124(%rbp)
	movl	$0, -128(%rbp)
	movq	-104(%rbp), %rdi
	callq	STBI_FREE@PLT
	jmp	.LBB0_33
.LBB0_44:                               #   in Loop: Header=BB0_39 Depth=1
	movl	-116(%rbp), %eax
	shll	$8, %eax
	movl	%eax, -116(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	orl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	cmpl	-88(%rbp), %eax
	je	.LBB0_46
# %bb.45:
	movq	-112(%rbp), %rdi
	callq	STBI_FREE@PLT
	movq	-104(%rbp), %rdi
	callq	STBI_FREE@PLT
	leaq	.L.str.14(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB0_82
.LBB0_46:                               #   in Loop: Header=BB0_39 Depth=1
	cmpq	$0, -104(%rbp)
	jne	.LBB0_50
# %bb.47:                               #   in Loop: Header=BB0_39 Depth=1
	movl	-88(%rbp), %edi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	stbi__malloc_mad2@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_49
# %bb.48:
	movq	-112(%rbp), %rdi
	callq	STBI_FREE@PLT
	leaq	.L.str.12(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB0_82
.LBB0_49:                               #   in Loop: Header=BB0_39 Depth=1
	jmp	.LBB0_50
.LBB0_50:                               #   in Loop: Header=BB0_39 Depth=1
	movl	$0, -132(%rbp)
.LBB0_51:                               #   Parent Loop BB0_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_65 Depth 4
	cmpl	$4, -132(%rbp)
	jge	.LBB0_72
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=2
	movl	$0, -124(%rbp)
.LBB0_53:                               #   Parent Loop BB0_39 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_58 Depth 4
                                        #         Child Loop BB0_65 Depth 4
	movl	-88(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	%eax, -196(%rbp)
	cmpl	$0, %eax
	jle	.LBB0_70
# %bb.54:                               #   in Loop: Header=BB0_53 Depth=3
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $al killed $al killed $eax
	movb	%al, -117(%rbp)
	movzbl	-117(%rbp), %eax
	cmpl	$128, %eax
	jle	.LBB0_62
# %bb.55:                               #   in Loop: Header=BB0_53 Depth=3
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $al killed $al killed $eax
	movb	%al, -118(%rbp)
	movzbl	-117(%rbp), %eax
	subl	$128, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -117(%rbp)
	movzbl	-117(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jle	.LBB0_57
# %bb.56:
	movq	-112(%rbp), %rdi
	callq	STBI_FREE@PLT
	movq	-104(%rbp), %rdi
	callq	STBI_FREE@PLT
	leaq	.L.str.16(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB0_82
.LBB0_57:                               #   in Loop: Header=BB0_53 Depth=3
	movl	$0, -144(%rbp)
.LBB0_58:                               #   Parent Loop BB0_39 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        #       Parent Loop BB0_53 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-144(%rbp), %eax
	movzbl	-117(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_61
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=4
	movzbl	-118(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	shll	$2, %ecx
	addl	-132(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.60:                               #   in Loop: Header=BB0_58 Depth=4
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB0_58
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	jmp	.LBB0_69
.LBB0_62:                               #   in Loop: Header=BB0_53 Depth=3
	movzbl	-117(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jle	.LBB0_64
# %bb.63:
	movq	-112(%rbp), %rdi
	callq	STBI_FREE@PLT
	movq	-104(%rbp), %rdi
	callq	STBI_FREE@PLT
	leaq	.L.str.16(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	callq	stbi__errpf@PLT
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB0_82
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	movl	$0, -144(%rbp)
.LBB0_65:                               #   Parent Loop BB0_39 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        #       Parent Loop BB0_53 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-144(%rbp), %eax
	movzbl	-117(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_68
# %bb.66:                               #   in Loop: Header=BB0_65 Depth=4
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	cvtsi2ss	%eax, %xmm0
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	shll	$2, %ecx
	addl	-132(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.67:                               #   in Loop: Header=BB0_65 Depth=4
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB0_65
.LBB0_68:                               #   in Loop: Header=BB0_53 Depth=3
	jmp	.LBB0_69
.LBB0_69:                               #   in Loop: Header=BB0_53 Depth=3
	jmp	.LBB0_53
.LBB0_70:                               #   in Loop: Header=BB0_51 Depth=2
	jmp	.LBB0_71
.LBB0_71:                               #   in Loop: Header=BB0_51 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB0_51
.LBB0_72:                               #   in Loop: Header=BB0_39 Depth=1
	movl	$0, -124(%rbp)
.LBB0_73:                               #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-124(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB0_76
# %bb.74:                               #   in Loop: Header=BB0_73 Depth=2
	movq	-112(%rbp), %rdi
	movl	-128(%rbp), %eax
	imull	-88(%rbp), %eax
	addl	-124(%rbp), %eax
	imull	-44(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movq	-104(%rbp), %rsi
	movl	-124(%rbp), %eax
	shll	$2, %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rsi
	movl	-44(%rbp), %edx
	callq	stbi__hdr_convert@PLT
# %bb.75:                               #   in Loop: Header=BB0_73 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB0_73
.LBB0_76:                               #   in Loop: Header=BB0_39 Depth=1
	jmp	.LBB0_77
.LBB0_77:                               #   in Loop: Header=BB0_39 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB0_39
.LBB0_78:
	cmpq	$0, -104(%rbp)
	je	.LBB0_80
# %bb.79:
	movq	-104(%rbp), %rdi
	callq	STBI_FREE@PLT
.LBB0_80:
	jmp	.LBB0_81
.LBB0_81:
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -156(%rbp)
.LBB0_82:
	movq	-64(%rbp), %rax
	movq	%rax, %rsp
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI__HDR_BUFLEN
	.p2align	2
STBI__HDR_BUFLEN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"#?RADIANCE"
.L.str.1:
	.asciz	"#?RGBE"
.L.str.2:
	.asciz	"not HDR"
.L.str.3:
	.asciz	"Corrupt HDR image"
.L.str.4:
	.asciz	"FORMAT=32-bit_rle_rgbe"
.L.str.5:
	.asciz	"unsupported format"
.L.str.6:
	.asciz	"Unsupported HDR format"
.L.str.7:
	.asciz	"-Y "
.L.str.8:
	.asciz	"unsupported data layout"
.L.str.9:
	.asciz	"+X "
.L.str.10:
	.asciz	"too large"
.L.str.11:
	.asciz	"HDR image is too large"
.L.str.12:
	.asciz	"outofmem"
.L.str.13:
	.asciz	"Out of memory"
.L.str.14:
	.asciz	"invalid decoded scanline length"
.L.str.15:
	.asciz	"corrupt HDR"
.L.str.16:
	.asciz	"corrupt"
.L.str.17:
	.asciz	"bad RLE data in HDR"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__hdr_load
	.addrsig_sym STBI_NOTUSED
	.addrsig_sym stbi__hdr_gettoken
	.addrsig_sym strcmp
	.addrsig_sym stbi__errpf
	.addrsig_sym strncmp
	.addrsig_sym strtol
	.addrsig_sym stbi__mad4sizes_valid
	.addrsig_sym stbi__malloc_mad4
	.addrsig_sym stbi__getn
	.addrsig_sym stbi__hdr_convert
	.addrsig_sym stbi__get8
	.addrsig_sym STBI_FREE
	.addrsig_sym stbi__malloc_mad2
	.addrsig_sym STBI__HDR_BUFLEN