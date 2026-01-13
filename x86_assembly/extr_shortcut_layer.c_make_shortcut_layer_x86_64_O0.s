	.text
	.globl	make_shortcut_layer             # -- Begin function make_shortcut_layer
	.p2align	4, 0x90
make_shortcut_layer:                    # @make_shortcut_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -20(%rbp)
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
	movl	16(%rbp), %ecx
	movl	24(%rbp), %r8d
	movl	32(%rbp), %r9d
	movl	-12(%rbp), %r11d
	movl	-16(%rbp), %r10d
	movl	-20(%rbp), %eax
	leaq	.L.str(%rip), %rsi
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	fprintf@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$96, %edx
	callq	memset@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	SHORTCUT(%rip), %eax
	movl	%eax, 88(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, (%rdi)
	movl	16(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	24(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	32(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 16(%rdi)
	movl	-16(%rbp), %eax
	movl	%eax, 20(%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, 24(%rdi)
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, 28(%rdi)
	movl	28(%rdi), %eax
	movl	%eax, 32(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 36(%rdi)
	movl	28(%rdi), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 56(%rdi)
	movl	28(%rdi), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 40(%rdi)
	movl	forward_shortcut_layer(%rip), %ecx
	movl	%ecx, 84(%rdi)
	movl	backward_shortcut_layer(%rip), %ecx
	movl	%ecx, 80(%rdi)
	addq	$64, %rsp
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
	.asciz	"res  %3d                %4d x%4d x%4d   ->  %4d x%4d x%4d\n"
	.bss
	.globl	SHORTCUT
	.p2align	2
SHORTCUT:
	.long	0                               # 0x0
	.globl	forward_shortcut_layer
	.p2align	2
forward_shortcut_layer:
	.long	0                               # 0x0
	.globl	backward_shortcut_layer
	.p2align	2
backward_shortcut_layer:
	.long	0                               # 0x0
	.globl	backward_shortcut_layer_gpu
	.p2align	2
backward_shortcut_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_shortcut_layer_gpu
	.p2align	2
forward_shortcut_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym SHORTCUT
	.addrsig_sym forward_shortcut_layer
	.addrsig_sym backward_shortcut_layer