	.text
	.p2align	4, 0x90                         # -- Begin function checkerrormsg
checkerrormsg:                          # @checkerrormsg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%%FAIL\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym checkerrormsg
	.addrsig_sym strcmp