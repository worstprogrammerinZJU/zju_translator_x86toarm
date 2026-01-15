	.text
	.p2align	4, 0x90                         # -- Begin function stbi__pnm_info
stbi__pnm_info:                         # @stbi__pnm_info
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_2:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# %bb.3:
	leaq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_4:
	cmpq	$0, -40(%rbp)
	jne	.LBB0_6
# %bb.5:
	leaq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $al killed $al killed $rax
	movb	%al, -50(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $al killed $al killed $rax
	movb	%al, -51(%rbp)
	movsbl	-50(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB0_9
# %bb.7:
	movsbl	-51(%rbp), %eax
	cmpl	$53, %eax
	je	.LBB0_10
# %bb.8:
	movsbl	-51(%rbp), %eax
	cmpl	$54, %eax
	je	.LBB0_10
.LBB0_9:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_10:
	movsbl	-51(%rbp), %edx
	movl	$1, %ecx
	movl	$3, %eax
	cmpl	$54, %edx
	cmovel	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
                                        # kill: def $al killed $al killed $rax
	movb	%al, -49(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-49(%rbp), %rsi
	callq	stbi__pnm_skip_whitespace@PLT
	movq	-16(%rbp), %rdi
	leaq	-49(%rbp), %rsi
	callq	stbi__pnm_getinteger@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	leaq	-49(%rbp), %rsi
	callq	stbi__pnm_skip_whitespace@PLT
	movq	-16(%rbp), %rdi
	leaq	-49(%rbp), %rsi
	callq	stbi__pnm_getinteger@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	leaq	-49(%rbp), %rsi
	callq	stbi__pnm_skip_whitespace@PLT
	movq	-16(%rbp), %rdi
	leaq	-49(%rbp), %rsi
	callq	stbi__pnm_getinteger@PLT
	movl	%eax, -44(%rbp)
	cmpl	$255, -44(%rbp)
	jle	.LBB0_12
# %bb.11:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_13
.LBB0_12:
	movl	$1, -4(%rbp)
.LBB0_13:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"max value > 255"
.L.str.1:
	.asciz	"PPM image not 8-bit"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_info
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__pnm_skip_whitespace
	.addrsig_sym stbi__pnm_getinteger
	.addrsig_sym stbi__err