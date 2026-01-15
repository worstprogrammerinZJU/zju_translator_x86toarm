	.text
	.p2align	4, 0x90                         # -- Begin function read_linemarker
read_linemarker:                        # @read_linemarker
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	is_digit_sequence@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	tok2s@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	atoi@PLT
	movl	%eax, -12(%rbp)
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	TSTRING(%rip), %rax
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	tok2s@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -8(%rbp)
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_5
# %bb.7:
	movb	$0, %al
	callq	current_file@PLT
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 8(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"line number expected, but got %s"
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"filename expected, but got %s"
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_linemarker
	.addrsig_sym is_digit_sequence
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym atoi
	.addrsig_sym lex
	.addrsig_sym current_file
	.addrsig_sym TSTRING
	.addrsig_sym TNEWLINE