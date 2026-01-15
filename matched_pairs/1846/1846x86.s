	.text
	.globl	parse_init                      # -- Begin function parse_init
	.p2align	4, 0x90
parse_init:                             # @parse_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	type_void(%rip), %edi
	callq	make_ptr_type@PLT
	movl	%eax, %edi
	callq	make_vector1@PLT
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	type_void(%rip), %edi
	callq	make_ptr_type@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	type_void(%rip), %edi
	callq	make_ptr_type@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	movl	type_void(%rip), %edi
	callq	make_ptr_type@PLT
	movl	%eax, %esi
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	callq	define_builtin@PLT
	movl	type_int(%rip), %esi
	movq	-8(%rbp), %rdx
	leaq	.L.str.1(%rip), %rdi
	callq	define_builtin@PLT
	movl	type_void(%rip), %esi
	movq	-16(%rbp), %rdx
	leaq	.L.str.2(%rip), %rdi
	callq	define_builtin@PLT
	movl	type_void(%rip), %esi
	movq	-8(%rbp), %rdx
	leaq	.L.str.3(%rip), %rdi
	callq	define_builtin@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_void
	.p2align	2
type_void:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__builtin_return_address"
.L.str.1:
	.asciz	"__builtin_reg_class"
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"__builtin_va_arg"
.L.str.3:
	.asciz	"__builtin_va_start"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_vector1
	.addrsig_sym make_ptr_type
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym define_builtin
	.addrsig_sym type_void
	.addrsig_sym type_int