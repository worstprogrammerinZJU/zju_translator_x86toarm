	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function test_resize
.LCPI0_0:
	.long	0x3dcccccd                      # float 0.100000001
.LCPI0_1:
	.long	0x3f2aaa3b                      # float 0.66666001
.LCPI0_2:
	.long	0x3fc00000                      # float 1.5
.LCPI0_3:
	.long	0xbdcccccd                      # float -0.100000001
	.text
	.globl	test_resize
	.p2align	4, 0x90
test_resize:                            # @test_resize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	%edx, %esi
	callq	load_image@PLT
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-12(%rbp), %edi
	movl	-24(%rbp), %esi
	imull	-20(%rbp), %esi
	imull	-16(%rbp), %esi
	callq	mag_array@PLT
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	leaq	.L.str(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	grayscale_image@PLT
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	copy_image@PLT
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	copy_image@PLT
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	copy_image@PLT
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	copy_image@PLT
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_2(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm1
	callq	distort_image@PLT
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movss	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm1
	callq	distort_image@PLT
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	callq	distort_image@PLT
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_2(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	callq	distort_image@PLT
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.L.str.1(%rip), %rdx
	movl	$1, %ecx
	callq	show_image@PLT
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.L.str.2(%rip), %rdx
	movl	$1, %ecx
	callq	show_image@PLT
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.L.str.3(%rip), %rdx
	movl	$1, %ecx
	callq	show_image@PLT
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	leaq	.L.str.4(%rip), %rdx
	movl	$1, %ecx
	callq	show_image@PLT
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rsi
	leaq	.L.str.5(%rip), %rdx
	movl	$1, %ecx
	callq	show_image@PLT
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	leaq	.L.str.6(%rip), %rdx
	movl	$1, %ecx
	callq	show_image@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"L2 Norm: %f\n"
.L.str.1:
	.asciz	"Original"
.L.str.2:
	.asciz	"Gray"
.L.str.3:
	.asciz	"C1"
.L.str.4:
	.asciz	"C2"
.L.str.5:
	.asciz	"C3"
.L.str.6:
	.asciz	"C4"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_image
	.addrsig_sym mag_array
	.addrsig_sym printf
	.addrsig_sym grayscale_image
	.addrsig_sym copy_image
	.addrsig_sym distort_image
	.addrsig_sym show_image