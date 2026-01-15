	.text
	.p2align	4, 0x90                         # -- Begin function emit_builtin_va_start
emit_builtin_va_start:                  # @emit_builtin_va_start
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	vec_len@PLT
	cmpl	$1, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	vec_head@PLT
	movl	%eax, %edi
	callq	emit_expr@PLT
	leaq	.L.str(%rip), %rdi
	callq	push@PLT
	movl	numgp(%rip), %esi
	shll	$3, %esi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	numfp(%rip), %esi
	shll	$4, %esi
	addl	$48, %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	xorl	%esi, %esi
	subl	REGAREA_SIZE(%rip), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str(%rip), %rdi
	callq	pop@PLT
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
	.asciz	"rcx"
.L.str.1:
	.asciz	"movl $%d, (#rax)"
	.bss
	.globl	numgp
	.p2align	2
numgp:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"movl $%d, 4(#rax)"
	.bss
	.globl	numfp
	.p2align	2
numfp:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"lea %d(#rbp), #rcx"
	.bss
	.globl	REGAREA_SIZE
	.p2align	2
REGAREA_SIZE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"mov #rcx, 16(#rax)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_builtin_va_start
	.addrsig_sym assert
	.addrsig_sym vec_len
	.addrsig_sym emit_expr
	.addrsig_sym vec_head
	.addrsig_sym push
	.addrsig_sym emit
	.addrsig_sym pop
	.addrsig_sym SAVE
	.addrsig_sym numgp
	.addrsig_sym numfp
	.addrsig_sym REGAREA_SIZE