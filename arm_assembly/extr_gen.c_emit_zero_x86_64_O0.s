	.text
	.p2align	4, 0x90                         # -- Begin function emit_zero
emit_zero:                              # @emit_zero
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jl	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -4(%rbp)
	jl	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	leaq	.L.str.1(%rip), %rdi
	callq	emit@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-4(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	leaq	.L.str.2(%rip), %rdi
	callq	emit@PLT
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".quad 0"
.L.str.1:
	.asciz	".long 0"
.L.str.2:
	.asciz	".byte 0"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_zero
	.addrsig_sym emit
	.addrsig_sym SAVE