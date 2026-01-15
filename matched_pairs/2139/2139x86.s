	.text
	.globl	make_softmax_layer              # -- Begin function make_softmax_layer
	.p2align	4, 0x90
make_softmax_layer:                     # @make_softmax_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	cmpl	$0, %edx
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$96, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	SOFTMAX(%rip), %eax
	movl	%eax, 88(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	-8(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movl	-8(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 48(%rdi)
	movl	-8(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 16(%rdi)
	movl	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 80(%rdi)
	movl	forward_softmax_layer(%rip), %ecx
	movl	%ecx, 76(%rdi)
	movl	backward_softmax_layer(%rip), %ecx
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
	.asciz	"softmax                                        %4d\n"
	.bss
	.globl	SOFTMAX
	.p2align	2
SOFTMAX:
	.long	0                               # 0x0
	.globl	forward_softmax_layer
	.p2align	2
forward_softmax_layer:
	.long	0                               # 0x0
	.globl	backward_softmax_layer
	.p2align	2
backward_softmax_layer:
	.long	0                               # 0x0
	.globl	backward_softmax_layer_gpu
	.p2align	2
backward_softmax_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_softmax_layer_gpu
	.p2align	2
forward_softmax_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym SOFTMAX
	.addrsig_sym forward_softmax_layer
	.addrsig_sym backward_softmax_layer