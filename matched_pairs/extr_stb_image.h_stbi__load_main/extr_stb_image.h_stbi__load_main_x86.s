	.text
	.p2align	4, 0x90                         # -- Begin function stbi__load_main
stbi__load_main:                        # @stbi__load_main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movq	-56(%rbp), %rax
	movl	$8, (%rax)
	movl	STBI_ORDER_RGB(%rip), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rdi
	callq	stbi__jpeg_test@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	stbi__jpeg_load@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	stbi__png_test@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	stbi__png_load@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	stbi__bmp_test@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	stbi__bmp_load@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	stbi__gif_test@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	stbi__gif_load@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_8:
	movq	-16(%rbp), %rdi
	callq	stbi__psd_test@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	movl	16(%rbp), %eax
	movl	%eax, (%rsp)
	callq	stbi__psd_load@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_10:
	movq	-16(%rbp), %rdi
	callq	stbi__pic_test@PLT
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.11:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	stbi__pic_load@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_12:
	movq	-16(%rbp), %rdi
	callq	stbi__pnm_test@PLT
	cmpq	$0, %rax
	je	.LBB0_14
# %bb.13:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	stbi__pnm_load@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_14:
	movq	-16(%rbp), %rdi
	callq	stbi__hdr_test@PLT
	cmpq	$0, %rax
	je	.LBB0_19
# %bb.15:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	stbi__hdr_load@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	cmpl	$0, -44(%rbp)
	je	.LBB0_17
# %bb.16:
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	jmp	.LBB0_18
.LBB0_17:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
.LBB0_18:
	movl	-68(%rbp), %edx                 # 4-byte Reload
	movl	-72(%rbp), %esi                 # 4-byte Reload
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movl	-84(%rbp), %ecx                 # 4-byte Reload
	callq	stbi__hdr_to_ldr@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_19:
	movq	-16(%rbp), %rdi
	callq	stbi__tga_test@PLT
	cmpq	$0, %rax
	je	.LBB0_21
# %bb.20:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	callq	stbi__tga_load@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_22
.LBB0_21:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	stbi__errpuc@PLT
	movq	%rax, -8(%rbp)
.LBB0_22:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	STBI_ORDER_RGB
	.p2align	2
STBI_ORDER_RGB:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unknown image type"
.L.str.1:
	.asciz	"Image not of any known type, or corrupt"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__load_main
	.addrsig_sym memset
	.addrsig_sym stbi__jpeg_test
	.addrsig_sym stbi__jpeg_load
	.addrsig_sym stbi__png_test
	.addrsig_sym stbi__png_load
	.addrsig_sym stbi__bmp_test
	.addrsig_sym stbi__bmp_load
	.addrsig_sym stbi__gif_test
	.addrsig_sym stbi__gif_load
	.addrsig_sym stbi__psd_test
	.addrsig_sym stbi__psd_load
	.addrsig_sym stbi__pic_test
	.addrsig_sym stbi__pic_load
	.addrsig_sym stbi__pnm_test
	.addrsig_sym stbi__pnm_load
	.addrsig_sym stbi__hdr_test
	.addrsig_sym stbi__hdr_load
	.addrsig_sym stbi__hdr_to_ldr
	.addrsig_sym stbi__tga_test
	.addrsig_sym stbi__tga_load
	.addrsig_sym stbi__errpuc
	.addrsig_sym STBI_ORDER_RGB