	.text
	.p2align	4, 0x90                         # -- Begin function read_label_addr
read_label_addr:                        # @read_label_addr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	tok2s@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	ast_label_addr@PLT
	movq	%rax, -24(%rbp)
	movl	gotos(%rip), %edi
	movq	-24(%rbp), %rsi
	callq	vec_push@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"label name expected after &&, but got %s"
	.bss
	.globl	gotos
	.p2align	2
gotos:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_label_addr
	.addrsig_sym get
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym ast_label_addr
	.addrsig_sym vec_push
	.addrsig_sym TIDENT
	.addrsig_sym gotos