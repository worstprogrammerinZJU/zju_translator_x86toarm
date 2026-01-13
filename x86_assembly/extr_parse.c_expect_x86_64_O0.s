	.text
	.p2align	4, 0x90                         # -- Begin function expect
expect:                                 # @expect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	-1(%rbp), %esi
	callq	is_keyword@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movb	-1(%rbp), %al
	movb	%al, -17(%rbp)                  # 1-byte Spill
	movq	-16(%rbp), %rdi
	callq	tok2s@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %ecx
	movb	-17(%rbp), %al                  # 1-byte Reload
	leaq	.L.str(%rip), %rsi
	movsbl	%al, %edx
	callq	errort@PLT
.LBB0_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"'%c' expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym expect
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym errort
	.addrsig_sym tok2s