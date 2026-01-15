	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function make_dropout_layer
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	make_dropout_layer
	.p2align	4, 0x90
make_dropout_layer:                     # @make_dropout_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	xorl	%esi, %esi
	movl	$52, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	DROPOUT(%rip), %eax
	movl	%eax, 44(%rdi)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	-8(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, 20(%rdi)
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 16(%rdi)
	movl	forward_dropout_layer(%rip), %eax
	movl	%eax, 40(%rdi)
	movl	backward_dropout_layer(%rip), %eax
	movl	%eax, 36(%rdi)
	movl	stderr(%rip), %edi
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movl	-8(%rbp), %edx
	movl	-8(%rbp), %ecx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DROPOUT
	.p2align	2
DROPOUT:
	.long	0                               # 0x0
	.globl	forward_dropout_layer
	.p2align	2
forward_dropout_layer:
	.long	0                               # 0x0
	.globl	backward_dropout_layer
	.p2align	2
backward_dropout_layer:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dropout       p = %.2f               %4d  ->  %4d\n"
	.bss
	.globl	backward_dropout_layer_gpu
	.p2align	2
backward_dropout_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_dropout_layer_gpu
	.p2align	2
forward_dropout_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym DROPOUT
	.addrsig_sym forward_dropout_layer
	.addrsig_sym backward_dropout_layer
	.addrsig_sym stderr