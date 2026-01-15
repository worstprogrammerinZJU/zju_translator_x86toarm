	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function make_region_layer
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	make_region_layer
	.p2align	4, 0x90
make_region_layer:                      # @make_region_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	16(%rbp), %eax
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -20(%rbp)
	xorl	%esi, %esi
	movl	$136, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	REGION(%rip), %eax
	movl	%eax, 128(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	16(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	movl	%eax, 16(%rdi)
	movl	12(%rdi), %eax
	movl	%eax, 20(%rdi)
	movl	8(%rdi), %eax
	movl	%eax, 24(%rdi)
	movl	16(%rdi), %eax
	movl	%eax, 28(%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, 32(%rdi)
	movl	16(%rbp), %eax
	movl	%eax, 36(%rdi)
	movl	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 120(%rdi)
	movl	-16(%rbp), %edi
	shll	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 40(%rdi)
	movl	-16(%rbp), %edi
	shll	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 112(%rax)
	movl	-12(%rbp), %ecx
	imull	-8(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	addl	16(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movl	%ecx, 48(%rax)
	movl	48(%rax), %ecx
	movl	%ecx, 52(%rax)
	movl	36(%rax), %ecx
	addl	$1, %ecx
	imull	$30, %ecx, %ecx
	movl	%ecx, 56(%rax)
	movl	-4(%rbp), %edi
	imull	48(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 64(%rax)
	movl	-4(%rbp), %edi
	imull	48(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 80(%rdi)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	-16(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	40(%rax), %rax
	movslq	-24(%rbp), %rcx
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	forward_region_layer(%rip), %ecx
	movl	%ecx, 108(%rax)
	movl	backward_region_layer(%rip), %ecx
	movl	%ecx, 104(%rax)
	movl	stderr(%rip), %edi
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	srand@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	REGION
	.p2align	2
REGION:
	.long	0                               # 0x0
	.globl	forward_region_layer
	.p2align	2
forward_region_layer:
	.long	0                               # 0x0
	.globl	backward_region_layer
	.p2align	2
backward_region_layer:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"detection\n"
	.bss
	.globl	backward_region_layer_gpu
	.p2align	2
backward_region_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_region_layer_gpu
	.p2align	2
forward_region_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym srand
	.addrsig_sym REGION
	.addrsig_sym forward_region_layer
	.addrsig_sym backward_region_layer
	.addrsig_sym stderr