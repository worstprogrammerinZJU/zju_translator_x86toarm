	.text
	.globl	make_cost_layer                 # -- Begin function make_cost_layer
	.p2align	4, 0x90
make_cost_layer:                        # @make_cost_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$88, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	COST(%rip), %eax
	movl	%eax, 76(%rdi)
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 72(%rdi)
	movl	-8(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 16(%rdi)
	movl	-8(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movl	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 64(%rdi)
	movl	forward_cost_layer(%rip), %ecx
	movl	%ecx, 60(%rdi)
	movl	backward_cost_layer(%rip), %ecx
	movl	%ecx, 56(%rdi)
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
	.asciz	"cost                                           %4d\n"
	.bss
	.globl	COST
	.p2align	2
COST:
	.long	0                               # 0x0
	.globl	forward_cost_layer
	.p2align	2
forward_cost_layer:
	.long	0                               # 0x0
	.globl	backward_cost_layer
	.p2align	2
backward_cost_layer:
	.long	0                               # 0x0
	.globl	backward_cost_layer_gpu
	.p2align	2
backward_cost_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_cost_layer_gpu
	.p2align	2
forward_cost_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym COST
	.addrsig_sym forward_cost_layer
	.addrsig_sym backward_cost_layer