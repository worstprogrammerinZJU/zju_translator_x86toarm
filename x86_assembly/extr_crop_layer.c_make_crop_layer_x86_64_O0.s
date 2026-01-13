	.text
	.globl	make_crop_layer                 # -- Begin function make_crop_layer
	.p2align	4, 0x90
make_crop_layer:                        # @make_crop_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -20(%rbp)
	movss	%xmm0, -24(%rbp)
	movss	%xmm1, -28(%rbp)
	movss	%xmm2, -32(%rbp)
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	16(%rbp), %r9d
	movl	-16(%rbp), %eax
	leaq	.L.str(%rip), %rsi
	movl	%eax, (%rsp)
	callq	fprintf@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$104, %edx
	callq	memset@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	CROP(%rip), %eax
	movl	%eax, 96(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 12(%rdi)
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtsi2ssl	-8(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 16(%rdi)
	movl	24(%rbp), %eax
	movl	%eax, 20(%rdi)
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 24(%rdi)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 28(%rdi)
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 32(%rdi)
	movl	16(%rbp), %eax
	movl	%eax, 36(%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, 40(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 44(%rdi)
	movl	8(%rdi), %eax
	imull	4(%rdi), %eax
	imull	12(%rdi), %eax
	movl	%eax, 48(%rdi)
	movl	36(%rdi), %eax
	imull	40(%rdi), %eax
	imull	44(%rdi), %eax
	movl	%eax, 52(%rdi)
	movl	52(%rdi), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %ecx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 64(%rdi)
	movl	forward_crop_layer(%rip), %ecx
	movl	%ecx, 92(%rdi)
	movl	backward_crop_layer(%rip), %ecx
	movl	%ecx, 88(%rdi)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Crop Layer: %d x %d -> %d x %d x %d image\n"
	.bss
	.globl	CROP
	.p2align	2
CROP:
	.long	0                               # 0x0
	.globl	forward_crop_layer
	.p2align	2
forward_crop_layer:
	.long	0                               # 0x0
	.globl	backward_crop_layer
	.p2align	2
backward_crop_layer:
	.long	0                               # 0x0
	.globl	backward_crop_layer_gpu
	.p2align	2
backward_crop_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_crop_layer_gpu
	.p2align	2
forward_crop_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym CROP
	.addrsig_sym forward_crop_layer
	.addrsig_sym backward_crop_layer