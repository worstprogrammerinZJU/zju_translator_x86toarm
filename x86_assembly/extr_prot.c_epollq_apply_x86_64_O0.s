	.text
	.p2align	4, 0x90                         # -- Begin function epollq_apply
epollq_apply:                           # @epollq_apply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, epollq(%rip)
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	epollq(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	epollq(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, epollq(%rip)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rdi
	addq	$4, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	callq	sockwant@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	twarn@PLT
	movq	-8(%rbp), %rdi
	callq	connclose@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	epollq
	.p2align	3
epollq:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sockwant"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epollq_apply
	.addrsig_sym sockwant
	.addrsig_sym twarn
	.addrsig_sym connclose
	.addrsig_sym epollq