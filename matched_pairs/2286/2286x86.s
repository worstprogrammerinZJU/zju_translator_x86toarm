	.text
	.p2align	4, 0x90                         # -- Begin function stbi__setup_jpeg
stbi__setup_jpeg:                       # @stbi__setup_jpeg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	stbi__idct_block(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	stbi__YCbCr_to_RGB_row(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	stbi__resample_row_hv_2(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stbi__idct_block
	.p2align	3
stbi__idct_block:
	.quad	0
	.globl	stbi__YCbCr_to_RGB_row
	.p2align	3
stbi__YCbCr_to_RGB_row:
	.quad	0
	.globl	stbi__resample_row_hv_2
	.p2align	3
stbi__resample_row_hv_2:
	.quad	0
	.globl	stbi__YCbCr_to_RGB_simd
	.p2align	3
stbi__YCbCr_to_RGB_simd:
	.quad	0
	.globl	stbi__idct_simd
	.p2align	3
stbi__idct_simd:
	.quad	0
	.globl	stbi__resample_row_hv_2_simd
	.p2align	3
stbi__resample_row_hv_2_simd:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__setup_jpeg
	.addrsig_sym stbi__idct_block
	.addrsig_sym stbi__YCbCr_to_RGB_row
	.addrsig_sym stbi__resample_row_hv_2