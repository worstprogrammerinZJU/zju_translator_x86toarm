	.text
	.p2align	4, 0x90                         # -- Begin function hashhash_check
hashhash_check:                         # @hashhash_check
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_6
.LBB0_2:
	movq	-8(%rbp), %rdi
	callq	vec_head@PLT
	movl	%eax, %edi
	movl	KHASHHASH(%rip), %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	callq	vec_head@PLT
	movl	%eax, %edi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_4:
	movq	-8(%rbp), %rdi
	callq	vec_tail@PLT
	movl	%eax, %edi
	movl	KHASHHASH(%rip), %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	callq	vec_tail@PLT
	movl	%eax, %edi
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_6:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KHASHHASH
	.p2align	2
KHASHHASH:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"'##' cannot appear at start of macro expansion"
.L.str.1:
	.asciz	"'##' cannot appear at end of macro expansion"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hashhash_check
	.addrsig_sym vec_len
	.addrsig_sym is_keyword
	.addrsig_sym vec_head
	.addrsig_sym errort
	.addrsig_sym vec_tail
	.addrsig_sym KHASHHASH