	.text
	.p2align	4, 0x90                         # -- Begin function read_line
read_line:                              # @read_line
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	$0, %al
	callq	read_expand_newline@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNUMBER(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	is_digit_sequence@PLT
	cmpl	$0, %eax
	jne	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	tok2s@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi@PLT
	movl	%eax, -12(%rbp)
	movb	$0, %al
	callq	read_expand_newline@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TSTRING(%rip), %rax
	jne	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movb	$0, %al
	callq	expect_newline@PLT
	jmp	.LBB0_8
.LBB0_5:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	je	.LBB0_7
# %bb.6:
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	tok2s@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	callq	errort@PLT
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	movb	$0, %al
	callq	current_file@PLT
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$0, -24(%rbp)
	je	.LBB0_10
# %bb.9:
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 8(%rax)
.LBB0_10:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TNUMBER
	.p2align	3
TNUMBER:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"number expected after #line, but got %s"
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.quad	0                               # 0x0
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"newline or a source name are expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_line
	.addrsig_sym read_expand_newline
	.addrsig_sym is_digit_sequence
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym atoi
	.addrsig_sym expect_newline
	.addrsig_sym current_file
	.addrsig_sym TNUMBER
	.addrsig_sym TSTRING
	.addrsig_sym TNEWLINE