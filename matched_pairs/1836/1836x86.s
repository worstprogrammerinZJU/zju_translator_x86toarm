	.text
	.p2align	4, 0x90                         # -- Begin function make_numtype
make_numtype:                           # @make_numtype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, %edi
	movl	$16, %esi
	callq	calloc@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-8(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-4(%rbp), %eax
	cmpl	KIND_VOID(%rip), %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.LBB0_30
.LBB0_2:
	movl	-4(%rbp), %eax
	cmpl	KIND_BOOL(%rip), %eax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.LBB0_29
.LBB0_4:
	movl	-4(%rbp), %eax
	cmpl	KIND_CHAR(%rip), %eax
	jne	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.LBB0_28
.LBB0_6:
	movl	-4(%rbp), %eax
	cmpl	KIND_SHORT(%rip), %eax
	jne	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rax
	movl	$2, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$2, 8(%rax)
	jmp	.LBB0_27
.LBB0_8:
	movl	-4(%rbp), %eax
	cmpl	KIND_INT(%rip), %eax
	jne	.LBB0_10
# %bb.9:
	movq	-16(%rbp), %rax
	movl	$4, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$4, 8(%rax)
	jmp	.LBB0_26
.LBB0_10:
	movl	-4(%rbp), %eax
	cmpl	KIND_LONG(%rip), %eax
	jne	.LBB0_12
# %bb.11:
	movq	-16(%rbp), %rax
	movl	$8, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$8, 8(%rax)
	jmp	.LBB0_25
.LBB0_12:
	movl	-4(%rbp), %eax
	cmpl	KIND_LLONG(%rip), %eax
	jne	.LBB0_14
# %bb.13:
	movq	-16(%rbp), %rax
	movl	$8, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$8, 8(%rax)
	jmp	.LBB0_24
.LBB0_14:
	movl	-4(%rbp), %eax
	cmpl	KIND_FLOAT(%rip), %eax
	jne	.LBB0_16
# %bb.15:
	movq	-16(%rbp), %rax
	movl	$4, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$4, 8(%rax)
	jmp	.LBB0_23
.LBB0_16:
	movl	-4(%rbp), %eax
	cmpl	KIND_DOUBLE(%rip), %eax
	jne	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rax
	movl	$8, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$8, 8(%rax)
	jmp	.LBB0_22
.LBB0_18:
	movl	-4(%rbp), %eax
	cmpl	KIND_LDOUBLE(%rip), %eax
	jne	.LBB0_20
# %bb.19:
	movq	-16(%rbp), %rax
	movl	$8, 12(%rax)
	movq	-16(%rbp), %rax
	movl	$8, 8(%rax)
	jmp	.LBB0_21
.LBB0_20:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_21:
	jmp	.LBB0_22
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	jmp	.LBB0_25
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	jmp	.LBB0_27
.LBB0_27:
	jmp	.LBB0_28
.LBB0_28:
	jmp	.LBB0_29
.LBB0_29:
	jmp	.LBB0_30
.LBB0_30:
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_VOID
	.p2align	2
KIND_VOID:
	.long	0                               # 0x0
	.globl	KIND_BOOL
	.p2align	2
KIND_BOOL:
	.long	0                               # 0x0
	.globl	KIND_CHAR
	.p2align	2
KIND_CHAR:
	.long	0                               # 0x0
	.globl	KIND_SHORT
	.p2align	2
KIND_SHORT:
	.long	0                               # 0x0
	.globl	KIND_INT
	.p2align	2
KIND_INT:
	.long	0                               # 0x0
	.globl	KIND_LONG
	.p2align	2
KIND_LONG:
	.long	0                               # 0x0
	.globl	KIND_LLONG
	.p2align	2
KIND_LLONG:
	.long	0                               # 0x0
	.globl	KIND_FLOAT
	.p2align	2
KIND_FLOAT:
	.long	0                               # 0x0
	.globl	KIND_DOUBLE
	.p2align	2
KIND_DOUBLE:
	.long	0                               # 0x0
	.globl	KIND_LDOUBLE
	.p2align	2
KIND_LDOUBLE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_numtype
	.addrsig_sym calloc
	.addrsig_sym error
	.addrsig_sym KIND_VOID
	.addrsig_sym KIND_BOOL
	.addrsig_sym KIND_CHAR
	.addrsig_sym KIND_SHORT
	.addrsig_sym KIND_INT
	.addrsig_sym KIND_LONG
	.addrsig_sym KIND_LLONG
	.addrsig_sym KIND_FLOAT
	.addrsig_sym KIND_DOUBLE
	.addrsig_sym KIND_LDOUBLE