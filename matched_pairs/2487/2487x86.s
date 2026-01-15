	.text
	.globl	cttest_allocf                   # -- Begin function cttest_allocf
	.p2align	4, 0x90
cttest_allocf:                          # @cttest_allocf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$5, %edx
	callq	fmtalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	.L.str.2(%rip), %rdi
	callq	strcmp@PLT
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	movq	-8(%rbp), %rdx
	leaq	.L.str.3(%rip), %rsi
	callq	assertf@PLT
	movq	-8(%rbp), %rdi
	callq	free@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hello, %s %d"
.L.str.1:
	.asciz	"world"
.L.str.2:
	.asciz	"hello, world 5"
.L.str.3:
	.asciz	"got \"%s\""
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmtalloc
	.addrsig_sym assertf
	.addrsig_sym strcmp
	.addrsig_sym free