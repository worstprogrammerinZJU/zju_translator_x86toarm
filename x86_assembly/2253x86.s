	.text
	.p2align	4, 0x90                         # -- Begin function stbi__parse_zlib_header
stbi__parse_zlib_header:                # @stbi__parse_zlib_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__zget8@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__zget8@PLT
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	shll	$8, %eax
	addl	-28(%rbp), %eax
	movl	$31, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:
	movl	-28(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	cmpl	$8, -24(%rbp)
	je	.LBB0_6
# %bb.5:
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	$1, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad zlib header"
.L.str.1:
	.asciz	"Corrupt PNG"
.L.str.2:
	.asciz	"no preset dict"
.L.str.3:
	.asciz	"bad compression"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__parse_zlib_header
	.addrsig_sym stbi__zget8
	.addrsig_sym stbi__err