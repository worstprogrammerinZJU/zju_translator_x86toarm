	.text
	.p2align	4, 0x90                         # -- Begin function read_ifndef
read_ifndef:                            # @read_ifndef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	tok2s@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movb	$0, %al
	callq	expect_newline@PLT
	movl	macros(%rip), %edi
	movq	-8(%rbp), %rax
	movl	16(%rax), %esi
	callq	map_get@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	do_read_if@PLT
	movq	-8(%rbp), %rax
	cmpl	$2, 8(%rax)
	jne	.LBB0_4
# %bb.3:
	movl	cond_incl_stack(%rip), %edi
	callq	vec_tail@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_4:
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
	.asciz	"identifier expected, but got %s"
	.bss
	.globl	macros
	.p2align	2
macros:
	.long	0                               # 0x0
	.globl	cond_incl_stack
	.p2align	2
cond_incl_stack:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_ifndef
	.addrsig_sym lex
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym expect_newline
	.addrsig_sym do_read_if
	.addrsig_sym map_get
	.addrsig_sym vec_tail
	.addrsig_sym TIDENT
	.addrsig_sym macros
	.addrsig_sym cond_incl_stack