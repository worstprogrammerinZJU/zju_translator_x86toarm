	.text
	.p2align	4, 0x90                         # -- Begin function read_struct_field
read_struct_field:                      # @read_struct_field
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	node2s@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	tok2s@PLT
	movl	%eax, %esi
	leaq	.L.str.1(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	dict_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	callq	tok2s@PLT
	movl	%eax, %esi
	leaq	.L.str.2(%rip), %rdi
	callq	error@PLT
.LBB0_6:
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	callq	ast_struct_ref@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"struct expected, but got %s"
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"field name expected, but got %s"
.L.str.2:
	.asciz	"struct has no such field: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_struct_field
	.addrsig_sym error
	.addrsig_sym node2s
	.addrsig_sym get
	.addrsig_sym tok2s
	.addrsig_sym dict_get
	.addrsig_sym ast_struct_ref
	.addrsig_sym KIND_STRUCT
	.addrsig_sym TIDENT