	.text
	.p2align	4, 0x90                         # -- Begin function stbi__gif_header
stbi__gif_header:                       # @stbi__gif_header
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$71, %eax
	jne	.LBB0_4
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$73, %eax
	jne	.LBB0_4
# %bb.2:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$70, %eax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$56, %eax
	je	.LBB0_5
.LBB0_4:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_5:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movb	%al, -37(%rbp)
	movsbl	-37(%rbp), %eax
	cmpl	$55, %eax
	je	.LBB0_8
# %bb.6:
	movsbl	-37(%rbp), %eax
	cmpl	$57, %eax
	je	.LBB0_8
# %bb.7:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_8:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movsbl	%al, %eax
	cmpl	$97, %eax
	je	.LBB0_10
# %bb.9:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_17
.LBB0_10:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, stbi__g_failure_reason(%rip)
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movb	%cl, (%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movb	%al, %cl
	movq	-24(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 4(%rax)
	cmpq	$0, -32(%rbp)
	je	.LBB0_12
# %bb.11:
	movq	-32(%rbp), %rax
	movl	$4, (%rax)
.LBB0_12:
	cmpl	$0, -36(%rbp)
	je	.LBB0_14
# %bb.13:
	movl	$1, -4(%rbp)
	jmp	.LBB0_17
.LBB0_14:
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB0_16
# %bb.15:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	andl	$7, %ecx
	movl	$2, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	$4294967295, %ecx               # imm = 0xFFFFFFFF
	callq	stbi__gif_parse_colortable@PLT
.LBB0_16:
	movl	$1, -4(%rbp)
.LBB0_17:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"not GIF"
.L.str.1:
	.asciz	"Corrupt GIF"
.L.str.2:
	.zero	1
	.bss
	.globl	stbi__g_failure_reason
	.p2align	3
stbi__g_failure_reason:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_header
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__err
	.addrsig_sym stbi__get16le
	.addrsig_sym stbi__gif_parse_colortable
	.addrsig_sym stbi__g_failure_reason