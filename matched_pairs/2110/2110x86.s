	.text
	.globl	make_route_layer                # -- Begin function make_route_layer
	.p2align	4, 0x90
make_route_layer:                       # @make_route_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%r8, -24(%rbp)
	movl	stderr(%rip), %edi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movl	$88, %edx
	callq	memset@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	ROUTE(%rip), %eax
	movl	%eax, 80(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 4(%rdi)
	movq	-16(%rbp), %rax
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rdi)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	stderr(%rip), %edi
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	stderr(%rip), %edi
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
                                        # kill: def $ecx killed $eax
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	-32(%rbp), %ecx
	movl	%ecx, 24(%rax)
	movl	-32(%rbp), %ecx
	movl	%ecx, 28(%rax)
	movl	-32(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 48(%rax)
	movl	-32(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%rdx, 32(%rcx)
	movl	forward_route_layer(%rip), %edx
	movl	%edx, 76(%rcx)
	movl	backward_route_layer(%rip), %edx
	movl	%edx, 72(%rcx)
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
	.asciz	"route "
	.bss
	.globl	ROUTE
	.p2align	2
ROUTE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	" %d"
.L.str.2:
	.asciz	"\n"
	.bss
	.globl	forward_route_layer
	.p2align	2
forward_route_layer:
	.long	0                               # 0x0
	.globl	backward_route_layer
	.p2align	2
backward_route_layer:
	.long	0                               # 0x0
	.globl	backward_route_layer_gpu
	.p2align	2
backward_route_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_route_layer_gpu
	.p2align	2
forward_route_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym calloc
	.addrsig_sym stderr
	.addrsig_sym ROUTE
	.addrsig_sym forward_route_layer
	.addrsig_sym backward_route_layer