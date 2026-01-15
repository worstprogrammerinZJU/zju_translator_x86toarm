	.text
	.globl	make_reorg_layer                # -- Begin function make_reorg_layer
	.p2align	4, 0x90
make_reorg_layer:                       # @make_reorg_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	32(%rbp), %eax
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
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	REORG(%rip), %eax
	movl	%eax, 104(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	32(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 16(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 20(%rdi)
	movl	24(%rbp), %eax
	movl	%eax, 24(%rdi)
	cmpl	$0, 16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	-8(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movl	-12(%rbp), %ecx
	imull	-20(%rbp), %ecx
	movl	%ecx, 32(%rax)
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	-20(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 36(%rax)
	jmp	.LBB0_3
.LBB0_2:
	movl	-8(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, %ecx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 28(%rax)
	movl	-12(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, %ecx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 32(%rax)
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	imull	-20(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, 36(%rax)
.LBB0_3:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	16(%rbp), %ecx
	movl	%ecx, 40(%rax)
	movl	32(%rax), %ecx
	imull	28(%rax), %ecx
	imull	36(%rax), %ecx
	movl	%ecx, 44(%rax)
	movl	-12(%rbp), %ecx
	imull	-8(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, 48(%rax)
	cmpl	$0, 8(%rax)
	je	.LBB0_5
# %bb.4:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	$0, 36(%rax)
	movl	$0, 32(%rax)
	movl	$0, 28(%rax)
	movl	48(%rax), %ecx
	addl	8(%rax), %ecx
	movl	%ecx, 44(%rax)
.LBB0_5:
	cmpl	$0, 32(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	stderr(%rip), %edi
	movl	48(%rax), %edx
	movl	44(%rax), %ecx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	jmp	.LBB0_8
.LBB0_7:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	stderr(%rip), %edi
	movl	-20(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	28(%rax), %r11d
	movl	32(%rax), %r10d
	movl	36(%rax), %eax
	leaq	.L.str.1(%rip), %rsi
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	movb	$0, %al
	callq	fprintf@PLT
.LBB0_8:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movl	44(%rax), %eax
	imull	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 72(%rax)
	movl	-24(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rdx, 56(%rcx)
	movl	forward_reorg_layer(%rip), %edx
	movl	%edx, 100(%rcx)
	movl	backward_reorg_layer(%rip), %edx
	movl	%edx, 96(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	REORG
	.p2align	2
REORG:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"reorg              %4d   ->  %4d\n"
.L.str.1:
	.asciz	"reorg              /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n"
	.bss
	.globl	forward_reorg_layer
	.p2align	2
forward_reorg_layer:
	.long	0                               # 0x0
	.globl	backward_reorg_layer
	.p2align	2
backward_reorg_layer:
	.long	0                               # 0x0
	.globl	backward_reorg_layer_gpu
	.p2align	2
backward_reorg_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_reorg_layer_gpu
	.p2align	2
forward_reorg_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym REORG
	.addrsig_sym stderr
	.addrsig_sym forward_reorg_layer
	.addrsig_sym backward_reorg_layer