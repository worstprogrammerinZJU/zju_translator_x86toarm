	.text
	.p2align	4, 0x90                         # -- Begin function writefull
writefull:                              # @writefull
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	write@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	perror@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"write"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym writefull
	.addrsig_sym write
	.addrsig_sym perror
	.addrsig_sym exit