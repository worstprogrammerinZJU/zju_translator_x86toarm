	.text
	.globl	make_l2norm_layer               # -- Begin function make_l2norm_layer
	.p2align	4, 0x90
make_l2norm_layer:                      # @make_l2norm_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$88, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	L2NORM(%rip), %eax
	movl	%eax, 80(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-8(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movl	-8(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 72(%rdi)
	movl	-8(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 16(%rdi)
	movl	forward_l2norm_layer(%rip), %ecx
	movl	%ecx, 68(%rdi)
	movl	backward_l2norm_layer(%rip), %ecx
	movl	%ecx, 64(%rdi)
	addq	$32, %rsp
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
	.asciz	"l2norm                                         %4d\n"
	.bss
	.globl	L2NORM
	.p2align	2
L2NORM:
	.long	0                               # 0x0
	.globl	forward_l2norm_layer
	.p2align	2
forward_l2norm_layer:
	.long	0                               # 0x0
	.globl	backward_l2norm_layer
	.p2align	2
backward_l2norm_layer:
	.long	0                               # 0x0
	.globl	backward_l2norm_layer_gpu
	.p2align	2
backward_l2norm_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_l2norm_layer_gpu
	.p2align	2
forward_l2norm_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym L2NORM
	.addrsig_sym forward_l2norm_layer
	.addrsig_sym backward_l2norm_layer