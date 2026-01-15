	.text
	.globl	make_detection_layer            # -- Begin function make_detection_layer
	.p2align	4, 0x90
make_detection_layer:                   # @make_detection_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -20(%rbp)
	xorl	%esi, %esi
	movl	$112, %edx
	callq	memset@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	DETECTION(%rip), %eax
	movl	%eax, 104(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	16(%rbp), %eax
	movl	%eax, 16(%rdi)
	movl	24(%rbp), %eax
	movl	%eax, 20(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 24(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 28(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 32(%rdi)
	movl	-16(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	16(%rdi), %ecx
	addl	$1, %ecx
	imull	(%rdi), %ecx
	addl	12(%rdi), %ecx
	imull	%ecx, %eax
	cmpl	-8(%rbp), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 96(%rax)
	movl	8(%rax), %ecx
	movl	%ecx, 36(%rax)
	movl	24(%rax), %ecx
	imull	24(%rax), %ecx
	movl	16(%rax), %edx
	addl	$1, %edx
	addl	12(%rax), %edx
	imull	%edx, %ecx
	movl	%ecx, 40(%rax)
	movl	-4(%rbp), %edi
	imull	36(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 64(%rax)
	movl	-4(%rbp), %edi
	imull	36(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 48(%rdi)
	movl	forward_detection_layer(%rip), %eax
	movl	%eax, 92(%rdi)
	movl	backward_detection_layer(%rip), %eax
	movl	%eax, 88(%rdi)
	movl	stderr(%rip), %edi
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	srand@PLT
                                        # kill: def $ecx killed $eax
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DETECTION
	.p2align	2
DETECTION:
	.long	0                               # 0x0
	.globl	forward_detection_layer
	.p2align	2
forward_detection_layer:
	.long	0                               # 0x0
	.globl	backward_detection_layer
	.p2align	2
backward_detection_layer:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Detection Layer\n"
	.bss
	.globl	backward_detection_layer_gpu
	.p2align	2
backward_detection_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_detection_layer_gpu
	.p2align	2
forward_detection_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym srand
	.addrsig_sym DETECTION
	.addrsig_sym forward_detection_layer
	.addrsig_sym backward_detection_layer
	.addrsig_sym stderr