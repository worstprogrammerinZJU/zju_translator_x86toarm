	.text
	.p2align	4, 0x90                         # -- Begin function stbi__tga_test
stbi__tga_test:                         # @stbi__tga_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jle	.LBB0_2
# %bb.1:
	jmp	.LBB0_34
.LBB0_2:
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -16(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB0_13
# %bb.3:
	cmpl	$1, -16(%rbp)
	je	.LBB0_6
# %bb.4:
	cmpl	$9, -16(%rbp)
	je	.LBB0_6
# %bb.5:
	jmp	.LBB0_34
.LBB0_6:
	movq	-8(%rbp), %rdi
	movl	$4, %esi
	callq	stbi__skip@PLT
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -16(%rbp)
	cmpl	$8, -16(%rbp)
	je	.LBB0_12
# %bb.7:
	cmpl	$15, -16(%rbp)
	je	.LBB0_12
# %bb.8:
	cmpl	$16, -16(%rbp)
	je	.LBB0_12
# %bb.9:
	cmpl	$24, -16(%rbp)
	je	.LBB0_12
# %bb.10:
	cmpl	$32, -16(%rbp)
	je	.LBB0_12
# %bb.11:
	jmp	.LBB0_34
.LBB0_12:
	movq	-8(%rbp), %rdi
	movl	$4, %esi
	callq	stbi__skip@PLT
	jmp	.LBB0_19
.LBB0_13:
	cmpl	$2, -16(%rbp)
	je	.LBB0_18
# %bb.14:
	cmpl	$3, -16(%rbp)
	je	.LBB0_18
# %bb.15:
	cmpl	$10, -16(%rbp)
	je	.LBB0_18
# %bb.16:
	cmpl	$11, -16(%rbp)
	je	.LBB0_18
# %bb.17:
	jmp	.LBB0_34
.LBB0_18:
	movq	-8(%rbp), %rdi
	movl	$9, %esi
	callq	stbi__skip@PLT
.LBB0_19:
	movq	-8(%rbp), %rdi
	callq	stbi__get16le@PLT
	cmpl	$1, %eax
	jge	.LBB0_21
# %bb.20:
	jmp	.LBB0_34
.LBB0_21:
	movq	-8(%rbp), %rdi
	callq	stbi__get16le@PLT
	cmpl	$1, %eax
	jge	.LBB0_23
# %bb.22:
	jmp	.LBB0_34
.LBB0_23:
	movq	-8(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -16(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB0_27
# %bb.24:
	cmpl	$8, -16(%rbp)
	je	.LBB0_27
# %bb.25:
	cmpl	$16, -16(%rbp)
	je	.LBB0_27
# %bb.26:
	jmp	.LBB0_34
.LBB0_27:
	cmpl	$8, -16(%rbp)
	je	.LBB0_33
# %bb.28:
	cmpl	$15, -16(%rbp)
	je	.LBB0_33
# %bb.29:
	cmpl	$16, -16(%rbp)
	je	.LBB0_33
# %bb.30:
	cmpl	$24, -16(%rbp)
	je	.LBB0_33
# %bb.31:
	cmpl	$32, -16(%rbp)
	je	.LBB0_33
# %bb.32:
	jmp	.LBB0_34
.LBB0_33:
	movl	$1, -12(%rbp)
.LBB0_34:
	movq	-8(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__tga_test
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__skip
	.addrsig_sym stbi__get16le
	.addrsig_sym stbi__rewind