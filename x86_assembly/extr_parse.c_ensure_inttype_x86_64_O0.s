	.text
	.p2align	4, 0x90                         # -- Begin function ensure_inttype
ensure_inttype:                         # @ensure_inttype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	is_inttype@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	node2s@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"integer type expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_inttype
	.addrsig_sym is_inttype
	.addrsig_sym error
	.addrsig_sym node2s