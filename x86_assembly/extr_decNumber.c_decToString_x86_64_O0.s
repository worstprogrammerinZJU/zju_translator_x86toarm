	.text
	.p2align	4, 0x90                         # -- Begin function decToString
decToString:                            # @decToString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	D2U@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$-8, %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-64(%rbp), %rax
	movb	$45, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	andl	DECSPECIAL(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_12
# %bb.3:
	movq	-8(%rbp), %rdi
	callq	decNumberIsInfinite@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	-64(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcpy@PLT
	movq	-64(%rbp), %rdi
	addq	$3, %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcpy@PLT
	jmp	.LBB0_86
.LBB0_5:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	andl	DECSNAN(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.6:
	movq	-64(%rbp), %rax
	movb	$115, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB0_7:
	movq	-64(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcpy@PLT
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_10
# %bb.8:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_11
# %bb.9:
	movq	-8(%rbp), %rax
	cmpl	$1, 16(%rax)
	jne	.LBB0_11
.LBB0_10:
	jmp	.LBB0_86
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	MSUDIGITS@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_22
# %bb.13:
	jmp	.LBB0_14
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jb	.LBB0_21
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB0_16:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -56(%rbp)
	jl	.LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	TODIGIT@PLT
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_16
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=1
	movq	DECDPUN(%rip), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-72(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_14
.LBB0_21:
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB0_86
.LBB0_22:
	movq	-8(%rbp), %rax
	movslq	16(%rax), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jg	.LBB0_24
# %bb.23:
	cmpq	$-5, -48(%rbp)
	jge	.LBB0_38
.LBB0_24:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	16(%rcx), %rcx
	addq	%rcx, %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	$1, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_37
# %bb.25:
	cmpq	$0, -40(%rbp)
	je	.LBB0_37
# %bb.26:
	cmpq	$0, -40(%rbp)
	jge	.LBB0_30
# %bb.27:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	-40(%rbp), %rax
	movl	$3, %ecx
	cqto
	idivq	%rcx
	movq	%rdx, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB0_29
# %bb.28:
	movl	$3, %eax
	subq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB0_29:
	jmp	.LBB0_31
.LBB0_30:
	movq	-40(%rbp), %rax
	movl	$3, %ecx
	cqto
	idivq	%rcx
	movq	%rdx, -96(%rbp)
.LBB0_31:
	movq	-40(%rbp), %rax
	subq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	ISZERO@PLT
	cmpl	$0, %eax
	jne	.LBB0_33
# %bb.32:
	movq	-96(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_36
.LBB0_33:
	cmpq	$0, -96(%rbp)
	je	.LBB0_35
# %bb.34:
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -40(%rbp)
	movl	$2, %ecx
	subq	-96(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB0_35:
	jmp	.LBB0_36
.LBB0_36:
	jmp	.LBB0_37
.LBB0_37:
	jmp	.LBB0_38
.LBB0_38:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -48(%rbp)
	jle	.LBB0_62
# %bb.39:
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB0_40:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	jle	.LBB0_47
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=1
	cmpq	$0, -56(%rbp)
	jge	.LBB0_45
# %bb.42:                               #   in Loop: Header=BB0_40 Depth=1
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB0_44
# %bb.43:
	jmp	.LBB0_47
.LBB0_44:                               #   in Loop: Header=BB0_40 Depth=1
	movq	-72(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -72(%rbp)
	movq	DECDPUN(%rip), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB0_45:                               #   in Loop: Header=BB0_40 Depth=1
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	TODIGIT@PLT
# %bb.46:                               #   in Loop: Header=BB0_40 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_40
.LBB0_47:
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	16(%rcx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB0_56
# %bb.48:
	movq	-64(%rbp), %rax
	movb	$46, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB0_49:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	jge	.LBB0_53
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=1
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB0_52
# %bb.51:
	jmp	.LBB0_55
.LBB0_52:                               #   in Loop: Header=BB0_49 Depth=1
	movq	-72(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -72(%rbp)
	movq	DECDPUN(%rip), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB0_53:                               #   in Loop: Header=BB0_49 Depth=1
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	TODIGIT@PLT
# %bb.54:                               #   in Loop: Header=BB0_49 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_49
.LBB0_55:
	jmp	.LBB0_61
.LBB0_56:
	jmp	.LBB0_57
.LBB0_57:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	jle	.LBB0_60
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=1
	movq	-64(%rbp), %rax
	movb	$48, (%rax)
# %bb.59:                               #   in Loop: Header=BB0_57 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_57
.LBB0_60:
	jmp	.LBB0_61
.LBB0_61:
	jmp	.LBB0_74
.LBB0_62:
	movq	-64(%rbp), %rax
	movb	$48, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$46, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB0_63:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	jge	.LBB0_66
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=1
	movq	-64(%rbp), %rax
	movb	$48, (%rax)
# %bb.65:                               #   in Loop: Header=BB0_63 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_63
.LBB0_66:
	jmp	.LBB0_67
.LBB0_67:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	jge	.LBB0_71
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=1
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB0_70
# %bb.69:
	jmp	.LBB0_73
.LBB0_70:                               #   in Loop: Header=BB0_67 Depth=1
	movq	-72(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -72(%rbp)
	movq	DECDPUN(%rip), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB0_71:                               #   in Loop: Header=BB0_67 Depth=1
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	TODIGIT@PLT
# %bb.72:                               #   in Loop: Header=BB0_67 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_67
.LBB0_73:
	jmp	.LBB0_74
.LBB0_74:
	cmpq	$0, -40(%rbp)
	je	.LBB0_85
# %bb.75:
	movl	$0, -108(%rbp)
	movq	-64(%rbp), %rax
	movb	$69, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$43, (%rax)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -40(%rbp)
	jge	.LBB0_77
# %bb.76:
	movq	-64(%rbp), %rax
	movb	$45, -1(%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB0_77:
	movq	$9, -56(%rbp)
.LBB0_78:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	jl	.LBB0_84
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=1
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	TODIGIT@PLT
	movq	-64(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$48, %eax
	jne	.LBB0_82
# %bb.80:                               #   in Loop: Header=BB0_78 Depth=1
	cmpl	$0, -108(%rbp)
	jne	.LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_78 Depth=1
	jmp	.LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_78 Depth=1
	movl	$1, -108(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB0_83:                               #   in Loop: Header=BB0_78 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_78
.LBB0_84:
	jmp	.LBB0_85
.LBB0_85:
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
.LBB0_86:
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECSPECIAL
	.p2align	2
DECSPECIAL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Inf"
.L.str.1:
	.asciz	"inity"
	.bss
	.globl	DECSNAN
	.p2align	2
DECSNAN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"NaN"
	.bss
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.quad	0                               # 0x0
	.globl	DECUNCONT
	.p2align	2
DECUNCONT:
	.long	0                               # 0x0
	.globl	DECUNRESU
	.p2align	2
DECUNRESU:
	.long	0                               # 0x0
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToString
	.addrsig_sym D2U
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym strcpy
	.addrsig_sym MSUDIGITS
	.addrsig_sym TODIGIT
	.addrsig_sym ISZERO
	.addrsig_sym DECSPECIAL
	.addrsig_sym DECSNAN
	.addrsig_sym DECDPUN