	.text
	.p2align	4, 0x90                         # -- Begin function ensure_lvalue
ensure_lvalue:                          # @ensure_lvalue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	subl	$3, %eax
	ja	.LBB0_2
	jmp	.LBB0_1
.LBB0_1:
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rdi
	callq	node2s@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lvalue expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_lvalue
	.addrsig_sym error
	.addrsig_sym node2s