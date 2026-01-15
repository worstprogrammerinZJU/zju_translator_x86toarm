	.text
	.globl	make_logistic_layer             # -- Begin function make_logistic_layer
	.p2align	4, 0x90
make_logistic_layer:                    # @make_logistic_layer
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
	movl	$96, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	LOGXENT(%rip), %eax
	movl	%eax, 88(%rdi)
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
	movq	%rax, 48(%rdi)
	movl	-8(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 16(%rdi)
	movl	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 80(%rdi)
	movl	forward_logistic_layer(%rip), %ecx
	movl	%ecx, 76(%rdi)
	movl	backward_logistic_layer(%rip), %ecx
	movl	%ecx, 72(%rdi)
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
	.asciz	"logistic x entropy                             %4d\n"
	.bss
	.globl	LOGXENT
	.p2align	2
LOGXENT:
	.long	0                               # 0x0
	.globl	forward_logistic_layer
	.p2align	2
forward_logistic_layer:
	.long	0                               # 0x0
	.globl	backward_logistic_layer
	.p2align	2
backward_logistic_layer:
	.long	0                               # 0x0
	.globl	backward_logistic_layer_gpu
	.p2align	2
backward_logistic_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_logistic_layer_gpu
	.p2align	2
forward_logistic_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym LOGXENT
	.addrsig_sym forward_logistic_layer
	.addrsig_sym backward_logistic_layer