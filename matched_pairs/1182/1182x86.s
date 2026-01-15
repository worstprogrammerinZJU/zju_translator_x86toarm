	.text
	.globl	make_iseg_layer                 # -- Begin function make_iseg_layer
	.p2align	4, 0x90
make_iseg_layer:                        # @make_iseg_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -20(%rbp)
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	ISEG(%rip), %eax
	movl	%eax, 120(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	4(%rdi), %eax
	movl	%eax, 12(%rdi)
	movl	(%rdi), %eax
	movl	%eax, 16(%rdi)
	movl	8(%rdi), %eax
	movl	%eax, 20(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 24(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, 28(%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, 32(%rdi)
	movl	$1, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 112(%rax)
	movl	-12(%rbp), %ecx
	imull	-8(%rbp), %ecx
	imull	8(%rax), %ecx
	movl	%ecx, 36(%rax)
	movl	36(%rax), %ecx
	movl	%ecx, 40(%rax)
	movl	4(%rax), %ecx
	imull	(%rax), %ecx
	addl	$1, %ecx
	imull	$90, %ecx, %ecx
	movl	%ecx, 44(%rax)
	movl	-4(%rbp), %edi
	imull	36(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 48(%rax)
	movl	-4(%rbp), %edi
	imull	36(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 64(%rdi)
	movl	$90, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 104(%rdi)
	movl	$90, %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 96(%rdi)
	cmpl	$0, -20(%rbp)
	je	.LBB0_6
# %bb.1:
	movl	$0, -24(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$90, -24(%rbp)
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-20(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	96(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	forward_iseg_layer(%rip), %ecx
	movl	%ecx, 92(%rax)
	movl	backward_iseg_layer(%rip), %ecx
	movl	%ecx, 88(%rax)
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
	.globl	ISEG
	.p2align	2
ISEG:
	.long	0                               # 0x0
	.globl	forward_iseg_layer
	.p2align	2
forward_iseg_layer:
	.long	0                               # 0x0
	.globl	backward_iseg_layer
	.p2align	2
backward_iseg_layer:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"iseg\n"
	.bss
	.globl	backward_iseg_layer_gpu
	.p2align	2
backward_iseg_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_iseg_layer_gpu
	.p2align	2
forward_iseg_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym fprintf
	.addrsig_sym srand
	.addrsig_sym ISEG
	.addrsig_sym forward_iseg_layer
	.addrsig_sym backward_iseg_layer
	.addrsig_sym stderr