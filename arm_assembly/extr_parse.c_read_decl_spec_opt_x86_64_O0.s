	.text
	.p2align	4, 0x90                         # -- Begin function read_decl_spec_opt
read_decl_spec_opt:                     # @read_decl_spec_opt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	callq	is_type@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	read_decl_spec@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	leaq	.L.str(%rip), %rsi
	callq	warnt@PLT
	movq	type_int(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"type specifier missing, assuming int"
	.bss
	.globl	type_int
	.p2align	3
type_int:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_decl_spec_opt
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_decl_spec
	.addrsig_sym warnt
	.addrsig_sym type_int