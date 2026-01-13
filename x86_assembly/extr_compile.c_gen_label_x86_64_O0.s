	.text
	.globl	gen_label                       # -- Begin function gen_label
	.p2align	4, 0x90
gen_label:                              # @gen_label
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, %edi
	callq	gen_lambda@PLT
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	movl	LOADV(%rip), %edi
	movq	-8(%rbp), %rsi
	callq	gen_op_unbound@PLT
	movl	%eax, %edi
	callq	gen_lambda@PLT
	movl	-48(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	BLOCK@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	gen_call@PLT
	movl	%eax, -16(%rbp)
	movl	GENLABEL(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	POP(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	BACKTRACK(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, %esi
	leaq	.L.str.1(%rip), %rdi
	callq	gen_call@PLT
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movl	-40(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	gen_cond@PLT
	movl	-36(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	gen_try@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	BLOCK@PLT
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	gen_wildvar_binding@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_equal"
	.bss
	.globl	LOADV
	.p2align	2
LOADV:
	.long	0                               # 0x0
	.globl	GENLABEL
	.p2align	2
GENLABEL:
	.long	0                               # 0x0
	.globl	POP
	.p2align	2
POP:
	.long	0                               # 0x0
	.globl	BACKTRACK
	.p2align	2
BACKTRACK:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"error"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_call
	.addrsig_sym BLOCK
	.addrsig_sym gen_lambda
	.addrsig_sym gen_noop
	.addrsig_sym gen_op_unbound
	.addrsig_sym gen_wildvar_binding
	.addrsig_sym gen_op_simple
	.addrsig_sym gen_try
	.addrsig_sym gen_cond
	.addrsig_sym LOADV
	.addrsig_sym GENLABEL
	.addrsig_sym POP
	.addrsig_sym BACKTRACK