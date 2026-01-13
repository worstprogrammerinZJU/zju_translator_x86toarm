	.text
	.p2align	4, 0x90                         # -- Begin function stbi__tga_info
stbi__tga_info:                         # @stbi__tga_info
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -72(%rbp)
	cmpl	$1, -72(%rbp)
	jle	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_40
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -56(%rbp)
	cmpl	$1, -72(%rbp)
	jne	.LBB0_13
# %bb.3:
	cmpl	$1, -56(%rbp)
	je	.LBB0_6
# %bb.4:
	cmpl	$9, -56(%rbp)
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_40
.LBB0_6:
	movq	-16(%rbp), %rdi
	movl	$4, %esi
	callq	stbi__skip@PLT
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -68(%rbp)
	cmpl	$8, -68(%rbp)
	je	.LBB0_12
# %bb.7:
	cmpl	$15, -68(%rbp)
	je	.LBB0_12
# %bb.8:
	cmpl	$16, -68(%rbp)
	je	.LBB0_12
# %bb.9:
	cmpl	$24, -68(%rbp)
	je	.LBB0_12
# %bb.10:
	cmpl	$32, -68(%rbp)
	je	.LBB0_12
# %bb.11:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_40
.LBB0_12:
	movq	-16(%rbp), %rdi
	movl	$4, %esi
	callq	stbi__skip@PLT
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_19
.LBB0_13:
	cmpl	$2, -56(%rbp)
	je	.LBB0_18
# %bb.14:
	cmpl	$3, -56(%rbp)
	je	.LBB0_18
# %bb.15:
	cmpl	$10, -56(%rbp)
	je	.LBB0_18
# %bb.16:
	cmpl	$11, -56(%rbp)
	je	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_40
.LBB0_18:
	movq	-16(%rbp), %rdi
	movl	$9, %esi
	callq	stbi__skip@PLT
	movl	$0, -64(%rbp)
.LBB0_19:
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, -44(%rbp)
	cmpl	$1, -44(%rbp)
	jge	.LBB0_21
# %bb.20:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_40
.LBB0_21:
	movq	-16(%rbp), %rdi
	callq	stbi__get16le@PLT
	movl	%eax, -48(%rbp)
	cmpl	$1, -48(%rbp)
	jge	.LBB0_23
# %bb.22:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_40
.LBB0_23:
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rdi
	callq	stbi__get8@PLT
	cmpl	$0, -64(%rbp)
	je	.LBB0_28
# %bb.24:
	cmpl	$8, -60(%rbp)
	je	.LBB0_27
# %bb.25:
	cmpl	$16, -60(%rbp)
	je	.LBB0_27
# %bb.26:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_40
.LBB0_27:
	movl	-64(%rbp), %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	stbi__tga_get_comp@PLT
	movl	%eax, -52(%rbp)
	jmp	.LBB0_31
.LBB0_28:
	movl	-60(%rbp), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movb	$1, %al
	cmpl	$3, -56(%rbp)
	movb	%al, -73(%rbp)                  # 1-byte Spill
	je	.LBB0_30
# %bb.29:
	cmpl	$11, -56(%rbp)
	sete	%al
	movb	%al, -73(%rbp)                  # 1-byte Spill
.LBB0_30:
	movl	-80(%rbp), %edi                 # 4-byte Reload
	movb	-73(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	stbi__tga_get_comp@PLT
	movl	%eax, -52(%rbp)
.LBB0_31:
	cmpl	$0, -52(%rbp)
	jne	.LBB0_33
# %bb.32:
	movq	-16(%rbp), %rdi
	callq	stbi__rewind@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_40
.LBB0_33:
	cmpq	$0, -24(%rbp)
	je	.LBB0_35
# %bb.34:
	movl	-44(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_35:
	cmpq	$0, -32(%rbp)
	je	.LBB0_37
# %bb.36:
	movl	-48(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_37:
	cmpq	$0, -40(%rbp)
	je	.LBB0_39
# %bb.38:
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_39:
	movl	$1, -4(%rbp)
.LBB0_40:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__tga_info
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__rewind
	.addrsig_sym stbi__skip
	.addrsig_sym stbi__get16le
	.addrsig_sym stbi__tga_get_comp