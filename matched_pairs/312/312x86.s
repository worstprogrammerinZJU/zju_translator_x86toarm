	.text
	.globl	gen_try_handler                 # -- Begin function gen_try_handler
	.p2align	4, 0x90
gen_try_handler:                        # @gen_try_handler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	%eax, %edi
	callq	gen_lambda@PLT
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, %edi
	callq	gen_lambda@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	BLOCK@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	gen_call@PLT
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	gen_const@PLT
	movl	%eax, %edi
	callq	gen_subexp@PLT
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movl	INDEX(%rip), %edi
	callq	gen_op_simple@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	-16(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	BLOCK@PLT
	movl	-12(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	gen_and@PLT
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, %esi
	leaq	.L.str.3(%rip), %rdi
	callq	gen_call@PLT
	movl	-8(%rbp), %edi                  # 4-byte Reload
	movl	%eax, %esi
	movl	-4(%rbp), %edx
	callq	gen_cond@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_equal"
.L.str.1:
	.asciz	"object"
.L.str.2:
	.asciz	"__jq"
	.bss
	.globl	INDEX
	.p2align	2
INDEX:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"error"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_cond
	.addrsig_sym gen_and
	.addrsig_sym gen_call
	.addrsig_sym BLOCK
	.addrsig_sym gen_lambda
	.addrsig_sym gen_const
	.addrsig_sym jv_string
	.addrsig_sym gen_noop
	.addrsig_sym gen_subexp
	.addrsig_sym gen_op_simple
	.addrsig_sym INDEX