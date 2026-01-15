	.text
	.p2align	4, 0x90                         # -- Begin function try_exit
try_exit:                               # @try_exit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movb	$0, -17(%rbp)
	movl	-12(%rbp), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$3, %eax
	ja	.LBB0_5
# %bb.10:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_1:
	movl	$41, -24(%rbp)
	movb	$41, -17(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movl	$93, -24(%rbp)
	movb	$93, -17(%rbp)
	jmp	.LBB0_6
.LBB0_3:
	movl	$125, -24(%rbp)
	movb	$125, -17(%rbp)
	jmp	.LBB0_6
.LBB0_4:
	movb	$41, -17(%rbp)
	movl	QQSTRING_INTERP_END(%rip), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movl	INVALID_CHARACTER(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	movsbl	-17(%rbp), %edi
	callq	assert@PLT
	movsbl	-17(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB0_8
# %bb.7:
	movl	-16(%rbp), %edi
	callq	yy_pop_state@PLT
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	INVALID_CHARACTER(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_1-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
                                        # -- End function
	.bss
	.globl	QQSTRING_INTERP_END
	.p2align	2
QQSTRING_INTERP_END:
	.long	0                               # 0x0
	.globl	INVALID_CHARACTER
	.p2align	2
INVALID_CHARACTER:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym try_exit
	.addrsig_sym assert
	.addrsig_sym yy_pop_state
	.addrsig_sym QQSTRING_INTERP_END
	.addrsig_sym INVALID_CHARACTER