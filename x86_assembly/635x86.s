	.text
	.p2align	4, 0x90                         # -- Begin function decApplyRound
decApplyRound:                          # @decApplyRound
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_88
.LBB0_2:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)                 # 8-byte Spill
	subl	$7, %eax
	ja	.LBB0_47
# %bb.89:
	movq	-96(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	$5, %ecx
	cltd
	idivl	%ecx
	movslq	%edx, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -24(%rbp)
	jge	.LBB0_6
# %bb.4:
	cmpq	$1, -48(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	$-1, -40(%rbp)
	jmp	.LBB0_10
.LBB0_6:
	cmpq	$0, -24(%rbp)
	jle	.LBB0_9
# %bb.7:
	cmpq	$0, -48(%rbp)
	jne	.LBB0_9
# %bb.8:
	movq	$1, -40(%rbp)
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	jmp	.LBB0_48
.LBB0_11:
	cmpq	$0, -24(%rbp)
	jge	.LBB0_13
# %bb.12:
	movq	$-1, -40(%rbp)
.LBB0_13:
	jmp	.LBB0_48
.LBB0_14:
	cmpq	$5, -24(%rbp)
	jle	.LBB0_16
# %bb.15:
	movq	$1, -40(%rbp)
.LBB0_16:
	jmp	.LBB0_48
.LBB0_17:
	cmpq	$5, -24(%rbp)
	jle	.LBB0_19
# %bb.18:
	movq	$1, -40(%rbp)
	jmp	.LBB0_24
.LBB0_19:
	cmpq	$5, -24(%rbp)
	jne	.LBB0_23
# %bb.20:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_22
# %bb.21:
	movq	$1, -40(%rbp)
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	jmp	.LBB0_48
.LBB0_25:
	cmpq	$5, -24(%rbp)
	jl	.LBB0_27
# %bb.26:
	movq	$1, -40(%rbp)
.LBB0_27:
	jmp	.LBB0_48
.LBB0_28:
	cmpq	$0, -24(%rbp)
	jle	.LBB0_30
# %bb.29:
	movq	$1, -40(%rbp)
.LBB0_30:
	jmp	.LBB0_48
.LBB0_31:
	movq	-8(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpl	$0, %eax
	je	.LBB0_35
# %bb.32:
	cmpq	$0, -24(%rbp)
	jge	.LBB0_34
# %bb.33:
	movq	$-1, -40(%rbp)
.LBB0_34:
	jmp	.LBB0_38
.LBB0_35:
	cmpq	$0, -24(%rbp)
	jle	.LBB0_37
# %bb.36:
	movq	$1, -40(%rbp)
.LBB0_37:
	jmp	.LBB0_38
.LBB0_38:
	jmp	.LBB0_48
.LBB0_39:
	movq	-8(%rbp), %rdi
	callq	decNumberIsNegative@PLT
	cmpl	$0, %eax
	jne	.LBB0_43
# %bb.40:
	cmpq	$0, -24(%rbp)
	jge	.LBB0_42
# %bb.41:
	movq	$-1, -40(%rbp)
.LBB0_42:
	jmp	.LBB0_46
.LBB0_43:
	cmpq	$0, -24(%rbp)
	jle	.LBB0_45
# %bb.44:
	movq	$1, -40(%rbp)
.LBB0_45:
	jmp	.LBB0_46
.LBB0_46:
	jmp	.LBB0_48
.LBB0_47:
	movq	DEC_Invalid_context(%rip), %rcx
	movq	-32(%rbp), %rax
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
.LBB0_48:
	cmpq	$0, -40(%rbp)
	jne	.LBB0_50
# %bb.49:
	jmp	.LBB0_88
.LBB0_50:
	cmpq	$0, -40(%rbp)
	jle	.LBB0_67
# %bb.51:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB0_52:                               # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	DECDPUN(%rip), %rax
	ja	.LBB0_62
# %bb.53:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movq	powers(%rip), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_55
# %bb.54:
	jmp	.LBB0_66
.LBB0_55:
	movq	powers(%rip), %rax
	movq	-64(%rbp), %rcx
	subq	$1, %rcx
	movl	(%rax,%rcx,4), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -56(%rbp)
.LBB0_56:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	(%rcx), %rax
	jb	.LBB0_59
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=1
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
# %bb.58:                               #   in Loop: Header=BB0_56 Depth=1
	movq	-56(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_56
.LBB0_59:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB0_61
# %bb.60:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	decSetOverflow@PLT
.LBB0_61:
	jmp	.LBB0_88
.LBB0_62:                               #   in Loop: Header=BB0_52 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	DECDPUNMAX(%rip), %eax
	je	.LBB0_64
# %bb.63:
	jmp	.LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_52 Depth=1
	movq	DECDPUN(%rip), %rcx
	movq	-64(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, -64(%rbp)
# %bb.65:                               #   in Loop: Header=BB0_52 Depth=1
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_52
.LBB0_66:
	jmp	.LBB0_87
.LBB0_67:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB0_68:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	DECDPUN(%rip), %rax
	ja	.LBB0_82
# %bb.69:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movq	powers(%rip), %rcx
	movq	-88(%rbp), %rdx
	subq	$1, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	je	.LBB0_71
# %bb.70:
	jmp	.LBB0_86
.LBB0_71:
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	powers(%rip), %rax
	movq	-88(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	subl	$1, %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-72(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -72(%rbp)
.LBB0_72:                               # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	(%rcx), %rax
	jb	.LBB0_75
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=1
	movq	powers(%rip), %rax
	movq	DECDPUN(%rip), %rcx
	movl	(%rax,%rcx,4), %ecx
	subl	$1, %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, (%rax)
# %bb.74:                               #   in Loop: Header=BB0_72 Depth=1
	movq	-72(%rbp), %rax
	addq	$-4, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_72
.LBB0_75:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	addq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-16(%rbp), %rdx
	subq	24(%rdx), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_81
# %bb.76:
	cmpq	$1, -88(%rbp)
	jne	.LBB0_79
# %bb.77:
	movq	-8(%rbp), %rax
	cmpq	$1, 8(%rax)
	jne	.LBB0_79
# %bb.78:
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB0_80
.LBB0_79:
	movq	powers(%rip), %rax
	movq	-88(%rbp), %rcx
	subq	$1, %rcx
	movl	(%rax,%rcx,4), %ecx
	subl	$1, %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 8(%rax)
.LBB0_80:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 16(%rax)
	movq	DEC_Underflow(%rip), %rcx
	orq	DEC_Subnormal(%rip), %rcx
	orq	DEC_Inexact(%rip), %rcx
	orq	DEC_Rounded(%rip), %rcx
	movq	-32(%rbp), %rax
	orq	(%rax), %rcx
	movq	%rcx, (%rax)
.LBB0_81:
	jmp	.LBB0_88
.LBB0_82:                               #   in Loop: Header=BB0_68 Depth=1
	movq	-72(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_84
# %bb.83:
	jmp	.LBB0_86
.LBB0_84:                               #   in Loop: Header=BB0_68 Depth=1
	movq	DECDPUN(%rip), %rcx
	movq	-88(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, -88(%rbp)
# %bb.85:                               #   in Loop: Header=BB0_68 Depth=1
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_68
.LBB0_86:
	jmp	.LBB0_87
.LBB0_87:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edi
	callq	D2U@PLT
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	movl	uarrone(%rip), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %r9
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, (%rsp)
	callq	decUnitAddSub@PLT
.LBB0_88:
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_25-.LJTI0_0
	.long	.LBB0_17-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_39-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_31-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
                                        # -- End function
	.bss
	.globl	DEC_Invalid_context
	.p2align	3
DEC_Invalid_context:
	.quad	0                               # 0x0
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.quad	0                               # 0x0
	.globl	powers
	.p2align	3
powers:
	.quad	0
	.globl	DECDPUNMAX
	.p2align	2
DECDPUNMAX:
	.long	0                               # 0x0
	.globl	DEC_Underflow
	.p2align	3
DEC_Underflow:
	.quad	0                               # 0x0
	.globl	DEC_Subnormal
	.p2align	3
DEC_Subnormal:
	.quad	0                               # 0x0
	.globl	DEC_Inexact
	.p2align	3
DEC_Inexact:
	.quad	0                               # 0x0
	.globl	DEC_Rounded
	.p2align	3
DEC_Rounded:
	.quad	0                               # 0x0
	.globl	uarrone
	.p2align	2
uarrone:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decApplyRound
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decSetOverflow
	.addrsig_sym decUnitAddSub
	.addrsig_sym D2U
	.addrsig_sym DEC_Invalid_context
	.addrsig_sym DECDPUN
	.addrsig_sym powers
	.addrsig_sym DECDPUNMAX
	.addrsig_sym DEC_Underflow
	.addrsig_sym DEC_Subnormal
	.addrsig_sym DEC_Inexact
	.addrsig_sym DEC_Rounded
	.addrsig_sym uarrone