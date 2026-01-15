	.text
	.p2align	4, 0x90                         # -- Begin function pop
pop:                                    # @pop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	emit@PLT
	movq	stackpos(%rip), %rax
	subq	$8, %rax
	movq	%rax, stackpos(%rip)
	cmpq	$0, stackpos(%rip)
	setge	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pop #%s"
	.bss
	.globl	stackpos
	.p2align	3
stackpos:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pop
	.addrsig_sym emit
	.addrsig_sym assert
	.addrsig_sym SAVE
	.addrsig_sym stackpos