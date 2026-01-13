	.text
	.p2align	4, 0x90                         # -- Begin function pop_int_args
pop_int_args:                           # @pop_int_args
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%rbp)
	jl	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	REGS(%rip), %rax
	movslq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	pop@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:
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
	.globl	REGS
	.p2align	3
REGS:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pop_int_args
	.addrsig_sym pop
	.addrsig_sym SAVE
	.addrsig_sym REGS