	.text
	.globl	make_activation_layer           # -- Begin function make_activation_layer
	.p2align	4, 0x90
make_activation_layer:                  # @make_activation_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	xorl	%esi, %esi
	movl	$72, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	ACTIVE(%rip), %eax
	movl	%eax, 64(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-4(%rbp), %edi
	imull	-8(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movl	-4(%rbp), %edi
	imull	-8(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 16(%rdi)
	movl	forward_activation_layer(%rip), %eax
	movl	%eax, 60(%rdi)
	movl	backward_activation_layer(%rip), %eax
	movl	%eax, 56(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
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
	.globl	ACTIVE
	.p2align	2
ACTIVE:
	.long	0                               # 0x0
	.globl	forward_activation_layer
	.p2align	2
forward_activation_layer:
	.long	0                               # 0x0
	.globl	backward_activation_layer
	.p2align	2
backward_activation_layer:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Activation Layer: %d inputs\n"
	.bss
	.globl	backward_activation_layer_gpu
	.p2align	2
backward_activation_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_activation_layer_gpu
	.p2align	2
forward_activation_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym ACTIVE
	.addrsig_sym forward_activation_layer
	.addrsig_sym backward_activation_layer
	.addrsig_sym stderr