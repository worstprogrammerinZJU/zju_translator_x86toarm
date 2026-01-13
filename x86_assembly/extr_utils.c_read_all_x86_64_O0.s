	.text
	.globl	read_all                        # -- Begin function read_all
	.p2align	4, 0x90
read_all:                               # @read_all
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	addq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	subq	-32(%rbp), %rdx
	callq	read@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	-36(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_5:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"read failed"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read
	.addrsig_sym error