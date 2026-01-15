	.text
	.globl	lex_init                        # -- Begin function lex_init
	.p2align	4, 0x90
lex_init:                               # @lex_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	buffers(%rip), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	make_vector@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	stdin(%rip), %rdi
	leaq	.L.str(%rip), %rsi
	callq	make_file@PLT
	movl	%eax, %edi
	callq	stream_push@PLT
	jmp	.LBB0_5
.LBB0_2:
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	errno(%rip), %edi
	callq	strerror@PLT
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.2(%rip), %rdi
	callq	error@PLT
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	make_file@PLT
	movl	%eax, %edi
	callq	stream_push@PLT
.LBB0_5:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	buffers
	.p2align	2
buffers:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-"
	.bss
	.globl	stdin
	.p2align	3
stdin:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"r"
.L.str.2:
	.asciz	"Cannot open %s: %s"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_push
	.addrsig_sym make_vector
	.addrsig_sym strcmp
	.addrsig_sym stream_push
	.addrsig_sym make_file
	.addrsig_sym fopen
	.addrsig_sym error
	.addrsig_sym strerror
	.addrsig_sym buffers
	.addrsig_sym stdin
	.addrsig_sym errno