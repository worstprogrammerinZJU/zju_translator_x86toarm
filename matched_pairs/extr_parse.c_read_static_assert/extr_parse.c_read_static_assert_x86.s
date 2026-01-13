	.text
	.p2align	4, 0x90                         # -- Begin function read_static_assert
read_static_assert:                     # @read_static_assert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$40, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_intexpr@PLT
	movl	%eax, -4(%rbp)
	movl	$44, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TSTRING(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	tok2s@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movl	$41, %edi
	callq	expect@PLT
	movl	$59, %edi
	callq	expect@PLT
	cmpl	$0, -4(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_4:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"string expected as the second argument for _Static_assert, but got %s"
.L.str.1:
	.asciz	"_Static_assert failure: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_static_assert
	.addrsig_sym expect
	.addrsig_sym read_intexpr
	.addrsig_sym get
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym TSTRING