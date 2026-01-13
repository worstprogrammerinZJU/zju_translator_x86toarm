	.text
	.p2align	4, 0x90                         # -- Begin function parse_m_arg
parse_m_arg:                            # @parse_m_arg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rsi
	leaq	.L.str.1(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"64"
.L.str.1:
	.asciz	"Only 64 is allowed for -m, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_m_arg
	.addrsig_sym strcmp
	.addrsig_sym error