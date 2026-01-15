	.text
	.p2align	4, 0x90                         # -- Begin function ensure_arithtype
ensure_arithtype:                       # @ensure_arithtype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	is_arithtype@PLT
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
	.asciz	"arithmetic type expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_arithtype
	.addrsig_sym is_arithtype
	.addrsig_sym error
	.addrsig_sym node2s