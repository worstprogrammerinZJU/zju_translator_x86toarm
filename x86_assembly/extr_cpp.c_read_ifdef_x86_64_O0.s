	.text
	.p2align	4, 0x90                         # -- Begin function read_ifdef
read_ifdef:                             # @read_ifdef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	tok2s@PLT
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movb	$0, %al
	callq	expect_newline@PLT
	movl	macros(%rip), %edi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	callq	map_get@PLT
	movl	%eax, %edi
	callq	do_read_if@PLT
	addq	$16, %rsp
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_ifdef
	.addrsig_sym lex
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym expect_newline
	.addrsig_sym do_read_if
	.addrsig_sym map_get
	.addrsig_sym TIDENT
	.addrsig_sym macros