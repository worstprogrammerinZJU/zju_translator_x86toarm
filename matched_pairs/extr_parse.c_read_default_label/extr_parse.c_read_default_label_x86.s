	.text
	.p2align	4, 0x90                         # -- Begin function read_default_label
read_default_label:                     # @read_default_label
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$58, %edi
	callq	expect@PLT
	cmpq	$0, defaultcase(%rip)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, defaultcase(%rip)
	movq	defaultcase(%rip), %rdi
	callq	ast_dest@PLT
	movl	%eax, %edi
	callq	read_label_tail@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	defaultcase
	.p2align	3
defaultcase:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"duplicate default"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_default_label
	.addrsig_sym expect
	.addrsig_sym errort
	.addrsig_sym make_label
	.addrsig_sym read_label_tail
	.addrsig_sym ast_dest
	.addrsig_sym defaultcase