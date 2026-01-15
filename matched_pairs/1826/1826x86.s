	.text
	.p2align	4, 0x90                         # -- Begin function get_compound_assign_op
get_compound_assign_op:                 # @get_compound_assign_op
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TKEYWORD(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_15
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	subl	$10, %eax
	ja	.LBB0_14
# %bb.16:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:
	movl	$43, -4(%rbp)
	jmp	.LBB0_15
.LBB0_4:
	movl	$45, -4(%rbp)
	jmp	.LBB0_15
.LBB0_5:
	movl	$42, -4(%rbp)
	jmp	.LBB0_15
.LBB0_6:
	movl	$47, -4(%rbp)
	jmp	.LBB0_15
.LBB0_7:
	movl	$37, -4(%rbp)
	jmp	.LBB0_15
.LBB0_8:
	movl	$38, -4(%rbp)
	jmp	.LBB0_15
.LBB0_9:
	movl	$124, -4(%rbp)
	jmp	.LBB0_15
.LBB0_10:
	movl	$94, -4(%rbp)
	jmp	.LBB0_15
.LBB0_11:
	movl	OP_SAL(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_12:
	movl	OP_SAR(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_13:
	movl	OP_SHR(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_15
.LBB0_14:
	movl	$0, -4(%rbp)
.LBB0_15:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
                                        # -- End function
	.bss
	.globl	TKEYWORD
	.p2align	3
TKEYWORD:
	.quad	0                               # 0x0
	.globl	OP_SAL
	.p2align	2
OP_SAL:
	.long	0                               # 0x0
	.globl	OP_SAR
	.p2align	2
OP_SAR:
	.long	0                               # 0x0
	.globl	OP_SHR
	.p2align	2
OP_SHR:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_compound_assign_op
	.addrsig_sym TKEYWORD
	.addrsig_sym OP_SAL
	.addrsig_sym OP_SAR
	.addrsig_sym OP_SHR