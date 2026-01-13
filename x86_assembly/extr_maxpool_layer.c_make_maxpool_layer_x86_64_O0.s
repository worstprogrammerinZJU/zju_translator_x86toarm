	.text
	.globl	make_maxpool_layer              # -- Begin function make_maxpool_layer
	.p2align	4, 0x90
make_maxpool_layer:                     # @make_maxpool_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	xorl	%esi, %esi
	movl	$120, %edx
	callq	memset@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	MAXPOOL(%rip), %eax
	movl	%eax, 112(%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-24(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-28(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-32(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	24(%rbp), %eax
	movl	%eax, 16(%rdi)
	movl	-28(%rbp), %eax
	addl	24(%rbp), %eax
	subl	-36(%rbp), %eax
	cltd
	idivl	16(%rbp)
	addl	$1, %eax
	movl	%eax, 20(%rdi)
	movl	-24(%rbp), %eax
	addl	24(%rbp), %eax
	subl	-36(%rbp), %eax
	cltd
	idivl	16(%rbp)
	addl	$1, %eax
	movl	%eax, 24(%rdi)
	movl	-32(%rbp), %eax
	movl	%eax, 28(%rdi)
	movl	24(%rdi), %eax
	imull	20(%rdi), %eax
	imull	28(%rdi), %eax
	movl	%eax, 32(%rdi)
	movl	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	%eax, 36(%rdi)
	movl	-36(%rbp), %eax
	movl	%eax, 40(%rdi)
	movl	16(%rbp), %eax
	movl	%eax, 44(%rdi)
	movl	24(%rdi), %eax
	imull	20(%rdi), %eax
	imull	28(%rdi), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 104(%rdi)
	movl	-40(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 64(%rdi)
	movl	-40(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 48(%rax)
	movl	forward_maxpool_layer(%rip), %ecx
	movl	%ecx, 96(%rax)
	movl	backward_maxpool_layer(%rip), %ecx
	movl	%ecx, 92(%rax)
	movl	stderr(%rip), %edi
	movl	-36(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	16(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	-24(%rbp), %r14d
	movl	-32(%rbp), %ebx
	movl	20(%rax), %r11d
	movl	24(%rax), %r10d
	movl	28(%rax), %eax
	leaq	.L.str(%rip), %rsi
	movl	%r14d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%eax, 32(%rsp)
	callq	fprintf@PLT
                                        # kill: def $ecx killed $eax
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MAXPOOL
	.p2align	2
MAXPOOL:
	.long	0                               # 0x0
	.globl	forward_maxpool_layer
	.p2align	2
forward_maxpool_layer:
	.long	0                               # 0x0
	.globl	backward_maxpool_layer
	.p2align	2
backward_maxpool_layer:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"max          %d x %d / %d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n"
	.bss
	.globl	backward_maxpool_layer_gpu
	.p2align	2
backward_maxpool_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_maxpool_layer_gpu
	.p2align	2
forward_maxpool_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym MAXPOOL
	.addrsig_sym forward_maxpool_layer
	.addrsig_sym backward_maxpool_layer
	.addrsig_sym stderr