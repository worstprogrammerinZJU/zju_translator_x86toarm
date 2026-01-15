	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function make_deconvolutional_layer
.LCPI0_0:
	.long	0x3ca3d70a                      # float 0.0199999996
	.text
	.globl	make_deconvolutional_layer
	.p2align	4, 0x90
make_deconvolutional_layer:             # @make_deconvolutional_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$536, %rsp                      # imm = 0x218
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movl	56(%rbp), %eax
	movl	48(%rbp), %eax
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	xorl	%esi, %esi
	movl	$480, %edx                      # imm = 0x1E0
	callq	memset@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movl	DECONVOLUTIONAL(%rip), %eax
	movl	%eax, 468(%rdi)
	movl	-32(%rbp), %eax
	movl	%eax, (%rdi)
	movl	-36(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-40(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-44(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	-28(%rbp), %eax
	movl	%eax, 16(%rdi)
	movl	24(%rbp), %eax
	movl	%eax, 20(%rdi)
	movl	16(%rbp), %eax
	movl	%eax, 24(%rdi)
	movl	-40(%rbp), %eax
	imull	-44(%rbp), %eax
	imull	16(%rbp), %eax
	imull	16(%rbp), %eax
	movl	%eax, 28(%rdi)
	movl	-44(%rbp), %eax
	movl	%eax, 32(%rdi)
	movl	-40(%rbp), %edi
	imull	-44(%rbp), %edi
	imull	16(%rbp), %edi
	imull	16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 40(%rdi)
	movl	-40(%rbp), %edi
	imull	-44(%rbp), %edi
	imull	16(%rbp), %edi
	imull	16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 48(%rdi)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 56(%rdi)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 64(%rdi)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movl	$0, -48(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	imull	16(%rbp), %ecx
	imull	16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-52(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	rand_normal@PLT
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movaps	%xmm0, %xmm1
	movss	-76(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	40(%rax), %rax
	movslq	-48(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -48(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	56(%rax), %rax
	movslq	-48(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movl	32(%rbp), %ecx
	movl	%ecx, 72(%rax)
	movl	(%rax), %ecx
	subl	$1, %ecx
	imull	20(%rax), %ecx
	addl	24(%rax), %ecx
	movl	72(%rax), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, 76(%rax)
	movl	4(%rax), %ecx
	subl	$1, %ecx
	imull	20(%rax), %ecx
	addl	24(%rax), %ecx
	movl	72(%rax), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, 80(%rax)
	movl	-44(%rbp), %ecx
	movl	%ecx, 84(%rax)
	movl	80(%rax), %ecx
	imull	76(%rax), %ecx
	imull	84(%rax), %ecx
	movl	%ecx, 88(%rax)
	movl	4(%rax), %ecx
	imull	(%rax), %ecx
	imull	8(%rax), %ecx
	movl	%ecx, 92(%rax)
	movl	28(%rax), %edi
	cvtsi2ssl	80(%rax), %xmm0
	cvtsi2ssl	76(%rax), %xmm1
	mulss	%xmm1, %xmm0
	movl	4(%rax), %ecx
	imull	(%rax), %ecx
	cvtsi2ss	%ecx, %xmm1
	divss	%xmm1, %xmm0
	movq	40(%rax), %rsi
	movl	$1, %edx
	callq	scal_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movl	16(%rax), %edi
	imull	88(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 96(%rax)
	movl	16(%rax), %edi
	imull	88(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 104(%rax)
	movl	forward_deconvolutional_layer(%rip), %ecx
	movl	%ecx, 464(%rax)
	movl	backward_deconvolutional_layer(%rip), %ecx
	movl	%ecx, 460(%rax)
	movl	update_deconvolutional_layer(%rip), %ecx
	movl	%ecx, 456(%rax)
	movl	48(%rbp), %ecx
	movl	%ecx, 112(%rax)
	cmpl	$0, 48(%rbp)
	je	.LBB0_14
# %bb.9:
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 120(%rax)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 448(%rax)
	movl	$0, -48(%rbp)
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	120(%rax), %rax
	movslq	-48(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_10
.LBB0_13:
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 440(%rax)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 432(%rax)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 424(%rax)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 416(%rax)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 408(%rax)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 400(%rax)
	movl	16(%rax), %edi
	imull	88(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 392(%rax)
	movl	16(%rax), %edi
	imull	88(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 384(%rax)
.LBB0_14:
	cmpl	$0, 56(%rbp)
	je	.LBB0_16
# %bb.15:
	movl	-40(%rbp), %edi
	imull	-44(%rbp), %edi
	imull	16(%rbp), %edi
	imull	16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 128(%rax)
	movl	-40(%rbp), %edi
	imull	-44(%rbp), %edi
	imull	16(%rbp), %edi
	imull	16(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 136(%rax)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 144(%rax)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 152(%rax)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 160(%rax)
	movl	-44(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 168(%rax)
.LBB0_16:
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movl	40(%rbp), %eax
	movl	%eax, 180(%rsi)
	movq	%rsp, %rdi
	movl	$60, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	callq	get_workspace_size@PLT
	movl	%eax, %ecx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movl	%ecx, 176(%rax)
	movl	stderr(%rip), %edi
	movl	-44(%rbp), %edx
	movl	16(%rbp), %ecx
	movl	16(%rbp), %r8d
	movl	24(%rbp), %r9d
	movl	-36(%rbp), %r15d
	movl	-32(%rbp), %r14d
	movl	-40(%rbp), %ebx
	movl	80(%rax), %r11d
	movl	76(%rax), %r10d
	movl	84(%rax), %eax
	leaq	.L.str(%rip), %rsi
	movl	%r15d, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%eax, 40(%rsp)
	callq	fprintf@PLT
                                        # kill: def $ecx killed $eax
	movq	-72(%rbp), %rax                 # 8-byte Reload
	addq	$536, %rsp                      # imm = 0x218
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DECONVOLUTIONAL
	.p2align	2
DECONVOLUTIONAL:
	.long	0                               # 0x0
	.globl	forward_deconvolutional_layer
	.p2align	2
forward_deconvolutional_layer:
	.long	0                               # 0x0
	.globl	backward_deconvolutional_layer
	.p2align	2
backward_deconvolutional_layer:
	.long	0                               # 0x0
	.globl	update_deconvolutional_layer
	.p2align	2
update_deconvolutional_layer:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"deconv%5d %2d x%2d /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n"
	.bss
	.globl	CUDNN_DATA_FLOAT
	.p2align	2
CUDNN_DATA_FLOAT:
	.long	0                               # 0x0
	.globl	CUDNN_TENSOR_NCHW
	.p2align	2
CUDNN_TENSOR_NCHW:
	.long	0                               # 0x0
	.globl	backward_deconvolutional_layer_gpu
	.p2align	2
backward_deconvolutional_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_deconvolutional_layer_gpu
	.p2align	2
forward_deconvolutional_layer_gpu:
	.long	0                               # 0x0
	.globl	gpu_index
	.p2align	3
gpu_index:
	.quad	0                               # 0x0
	.globl	update_deconvolutional_layer_gpu
	.p2align	2
update_deconvolutional_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym rand_normal
	.addrsig_sym scal_cpu
	.addrsig_sym get_workspace_size
	.addrsig_sym fprintf
	.addrsig_sym DECONVOLUTIONAL
	.addrsig_sym forward_deconvolutional_layer
	.addrsig_sym backward_deconvolutional_layer
	.addrsig_sym update_deconvolutional_layer
	.addrsig_sym stderr