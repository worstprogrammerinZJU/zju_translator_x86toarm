	.text
	.p2align	4, 0x90                         # -- Begin function stbi__info_main
stbi__info_main:                        # @stbi__info_main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	stbi__jpeg_info@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	stbi__png_info@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_4:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	stbi__gif_info@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_6:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	stbi__bmp_info@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_8:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	stbi__psd_info@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_10:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	stbi__pic_info@PLT
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.11:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_12:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	stbi__pnm_info@PLT
	cmpq	$0, %rax
	je	.LBB0_14
# %bb.13:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_14:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	stbi__hdr_info@PLT
	cmpq	$0, %rax
	je	.LBB0_16
# %bb.15:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_16:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	stbi__tga_info@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.17:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_18:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__err@PLT
	movl	%eax, -4(%rbp)
.LBB0_19:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unknown image type"
.L.str.1:
	.asciz	"Image not of any known type, or corrupt"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__info_main
	.addrsig_sym stbi__jpeg_info
	.addrsig_sym stbi__png_info
	.addrsig_sym stbi__gif_info
	.addrsig_sym stbi__bmp_info
	.addrsig_sym stbi__psd_info
	.addrsig_sym stbi__pic_info
	.addrsig_sym stbi__pnm_info
	.addrsig_sym stbi__hdr_info
	.addrsig_sym stbi__tga_info
	.addrsig_sym stbi__err