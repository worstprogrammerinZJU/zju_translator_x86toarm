	.text
	.p2align	4, 0x90                         # -- Begin function pop_xmm
pop_xmm:                                # @pop_xmm
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
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
	.asciz	"movsd (#rsp), #xmm%d"
.L.str.1:
	.asciz	"add $8, #rsp"
	.bss
	.globl	stackpos
	.p2align	3
stackpos:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pop_xmm
	.addrsig_sym emit
	.addrsig_sym assert
	.addrsig_sym SAVE
	.addrsig_sym stackpos