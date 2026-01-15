	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function make_connected_layer
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	make_connected_layer
	.p2align	4, 0x90
make_connected_layer:                   # @make_connected_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	16(%rbp), %eax
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -20(%rbp)
	xorl	%esi, %esi
	movl	$456, %edx                      # imm = 0x1C8
	callq	memset@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	$1, (%rdi)
	movl	CONNECTED(%rip), %eax
	movl	%eax, 444(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 4(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 8(%rdi)
	movl	-4(%rbp), %eax
	movl	%eax, 12(%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, 16(%rdi)
	movl	$1, 20(%rdi)
	movl	$1, 24(%rdi)
	movl	-8(%rbp), %eax
	movl	%eax, 28(%rdi)
	movl	$1, 32(%rdi)
	movl	$1, 36(%rdi)
	movl	-12(%rbp), %eax
	movl	%eax, 40(%rdi)
	movl	-4(%rbp), %edi
	imull	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 48(%rdi)
	movl	-4(%rbp), %edi
	imull	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 56(%rdi)
	movl	-8(%rbp), %edi
	imull	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 64(%rdi)
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 72(%rdi)
	movl	-12(%rbp), %edi
	imull	-8(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 80(%rdi)
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 88(%rdi)
	movl	forward_connected_layer(%rip), %eax
	movl	%eax, 440(%rdi)
	movl	backward_connected_layer(%rip), %eax
	movl	%eax, 436(%rdi)
	movl	update_connected_layer(%rip), %eax
	movl	%eax, 432(%rdi)
	cvtsi2sdl	-8(%rbp), %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	sqrt@PLT
	movss	%xmm0, -28(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)                # 4-byte Spill
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	movl	$1, %esi
	callq	rand_uniform@PLT
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movaps	%xmm0, %xmm1
	movss	-52(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	80(%rax), %rax
	movslq	-24(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -24(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	88(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	cmpl	$0, 16(%rbp)
	je	.LBB0_10
# %bb.9:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	4(%rax), %edi
	imull	8(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 424(%rax)
	movl	4(%rax), %edi
	imull	8(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 416(%rax)
	movl	8(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 408(%rax)
	movl	8(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 400(%rax)
	movl	8(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 392(%rax)
	movl	8(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 384(%rax)
.LBB0_10:
	cmpl	$0, -20(%rbp)
	je	.LBB0_16
# %bb.11:
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 96(%rax)
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 104(%rax)
	movl	$0, -24(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	96(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_12
.LBB0_15:
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 112(%rax)
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 376(%rax)
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 120(%rax)
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 368(%rax)
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 360(%rax)
	movl	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 352(%rax)
	movl	-4(%rbp), %edi
	imull	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 344(%rax)
	movl	-4(%rbp), %edi
	imull	-12(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 336(%rax)
.LBB0_16:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	-16(%rbp), %ecx
	movl	%ecx, 128(%rax)
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
                                        # kill: def $ecx killed $eax
	movq	-48(%rbp), %rax                 # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CONNECTED
	.p2align	2
CONNECTED:
	.long	0                               # 0x0
	.globl	forward_connected_layer
	.p2align	2
forward_connected_layer:
	.long	0                               # 0x0
	.globl	backward_connected_layer
	.p2align	2
backward_connected_layer:
	.long	0                               # 0x0
	.globl	update_connected_layer
	.p2align	2
update_connected_layer:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"connected                            %4d  ->  %4d\n"
	.bss
	.globl	CUDNN_DATA_FLOAT
	.p2align	2
CUDNN_DATA_FLOAT:
	.long	0                               # 0x0
	.globl	CUDNN_TENSOR_NCHW
	.p2align	2
CUDNN_TENSOR_NCHW:
	.long	0                               # 0x0
	.globl	backward_connected_layer_gpu
	.p2align	2
backward_connected_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_connected_layer_gpu
	.p2align	2
forward_connected_layer_gpu:
	.long	0                               # 0x0
	.globl	update_connected_layer_gpu
	.p2align	2
update_connected_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym sqrt
	.addrsig_sym rand_uniform
	.addrsig_sym fprintf
	.addrsig_sym CONNECTED
	.addrsig_sym forward_connected_layer
	.addrsig_sym backward_connected_layer
	.addrsig_sym update_connected_layer
	.addrsig_sym stderr