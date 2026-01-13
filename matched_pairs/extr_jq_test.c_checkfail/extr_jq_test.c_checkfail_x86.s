	.text
	.p2align	4, 0x90                         # -- Begin function checkfail
checkfail:                              # @checkfail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	sete	%al
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_2:
	movb	-9(%rbp), %al                   # 1-byte Reload
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
.L.str.1:
	.asciz	"%%FAIL IGNORE MSG\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym checkfail
	.addrsig_sym strcmp