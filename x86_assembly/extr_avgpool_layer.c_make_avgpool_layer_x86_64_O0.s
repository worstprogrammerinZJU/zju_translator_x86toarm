	.text
	.globl	make_avgpool_layer              # -- Begin function make_avgpool_layer
	.p2align	4, 0x90
make_avgpool_layer:                     # @make_avgpool_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-16(%rbp), %r9d
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$96, %edx
	callq	memset@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	AVGPOOL(%rip), %eax
	movl	%eax, 88(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	$1, 16(%rdi)
	movl	$1, 20(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 24(%rdi)
	movl	24(%rdi), %eax
	movl	%eax, 28(%rdi)
	movl	-12(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, 32(%rdi)
	movl	28(%rdi), %eax
	imull	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 56(%rdi)
	movl	-20(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 40(%rdi)
	movl	forward_avgpool_layer(%rip), %ecx
	movl	%ecx, 84(%rdi)
	movl	backward_avgpool_layer(%rip), %ecx
	movl	%ecx, 80(%rdi)
	addq	$48, %rsp
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
	.asciz	"avg                     %4d x%4d x%4d   ->  %4d\n"
	.bss
	.globl	AVGPOOL
	.p2align	2
AVGPOOL:
	.long	0                               # 0x0
	.globl	forward_avgpool_layer
	.p2align	2
forward_avgpool_layer:
	.long	0                               # 0x0
	.globl	backward_avgpool_layer
	.p2align	2
backward_avgpool_layer:
	.long	0                               # 0x0
	.globl	backward_avgpool_layer_gpu
	.p2align	2
backward_avgpool_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_avgpool_layer_gpu
	.p2align	2
forward_avgpool_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym AVGPOOL
	.addrsig_sym forward_avgpool_layer
	.addrsig_sym backward_avgpool_layer