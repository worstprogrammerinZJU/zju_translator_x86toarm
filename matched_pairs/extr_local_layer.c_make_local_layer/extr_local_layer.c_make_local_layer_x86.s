	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function make_local_layer
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	make_local_layer
	.p2align	4, 0x90
make_local_layer:                       # @make_local_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp                      # imm = 0x100
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	40(%rbp), %eax
	movl	32(%rbp), %eax
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movl	%esi, -4(%rbp)
	movl	%edx, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -20(%rbp)
	xorl	%esi, %esi
	movl	$192, %edx
	callq	memset@PLT
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movl	LOCAL(%rip), %eax
	movl	%eax, 184(%rsi)
	movl	-8(%rbp), %eax
	movl	%eax, (%rsi)
	movl	-12(%rbp), %eax
	movl	%eax, 4(%rsi)
	movl	-16(%rbp), %eax
	movl	%eax, 8(%rsi)
	movl	-20(%rbp), %eax
	movl	%eax, 12(%rsi)
	movl	-4(%rbp), %eax
	movl	%eax, 16(%rsi)
	movl	24(%rbp), %eax
	movl	%eax, 20(%rsi)
	movl	16(%rbp), %eax
	movl	%eax, 24(%rsi)
	movl	32(%rbp), %eax
	movl	%eax, 28(%rsi)
	movq	%rsp, %rdi
	movl	$24, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	callq	local_out_height@PLT
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, -28(%rbp)
	movq	%rsp, %rdi
	movl	$24, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	callq	local_out_width@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, 32(%rdi)
	movl	-32(%rbp), %eax
	movl	%eax, 36(%rdi)
	movl	-20(%rbp), %eax
	movl	%eax, 40(%rdi)
	movl	32(%rdi), %eax
	imull	36(%rdi), %eax
	imull	40(%rdi), %eax
	movl	%eax, 44(%rdi)
	movl	4(%rdi), %eax
	imull	(%rdi), %eax
	imull	8(%rdi), %eax
	movl	%eax, 48(%rdi)
	movl	-16(%rbp), %edi
	imull	-20(%rbp), %edi
	imull	16(%rbp), %edi
	imull	16(%rbp), %edi
	imull	-36(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 56(%rdi)
	movl	-16(%rbp), %edi
	imull	-20(%rbp), %edi
	imull	16(%rbp), %edi
	imull	16(%rbp), %edi
	imull	-36(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 64(%rdi)
	movl	44(%rdi), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 72(%rdi)
	movl	44(%rdi), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, 80(%rdi)
	movl	16(%rbp), %eax
	imull	16(%rbp), %eax
	imull	-16(%rbp), %eax
	cvtsi2sd	%eax, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	callq	sqrt@PLT
	movss	%xmm0, -40(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	-16(%rbp), %ecx
	imull	-20(%rbp), %ecx
	imull	16(%rbp), %ecx
	imull	16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	movl	$1, %esi
	callq	rand_uniform@PLT
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movaps	%xmm0, %xmm1
	movss	-60(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movq	56(%rax), %rax
	movslq	-24(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	16(%rax), %edi
	imull	-28(%rbp), %edi
	imull	-32(%rbp), %edi
	imull	-20(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 88(%rax)
	movl	16(%rax), %edi
	imull	-28(%rbp), %edi
	imull	-32(%rbp), %edi
	imull	-20(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, 96(%rax)
	movl	-28(%rbp), %ecx
	imull	-32(%rbp), %ecx
	imull	16(%rbp), %ecx
	imull	16(%rbp), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, 104(%rax)
	movl	forward_local_layer(%rip), %ecx
	movl	%ecx, 180(%rax)
	movl	backward_local_layer(%rip), %ecx
	movl	%ecx, 176(%rax)
	movl	update_local_layer(%rip), %ecx
	movl	%ecx, 172(%rax)
	movl	40(%rbp), %ecx
	movl	%ecx, 108(%rax)
	movl	stderr(%rip), %edi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-28(%rbp), %r11d
	movl	-32(%rbp), %r10d
	movl	-20(%rbp), %eax
	leaq	.L.str(%rip), %rsi
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	fprintf@PLT
                                        # kill: def $ecx killed $eax
	movq	-56(%rbp), %rax                 # 8-byte Reload
	addq	$256, %rsp                      # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LOCAL
	.p2align	2
LOCAL:
	.long	0                               # 0x0
	.globl	forward_local_layer
	.p2align	2
forward_local_layer:
	.long	0                               # 0x0
	.globl	backward_local_layer
	.p2align	2
backward_local_layer:
	.long	0                               # 0x0
	.globl	update_local_layer
	.p2align	2
update_local_layer:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Local Layer: %d x %d x %d image, %d filters -> %d x %d x %d image\n"
	.bss
	.globl	backward_local_layer_gpu
	.p2align	2
backward_local_layer_gpu:
	.long	0                               # 0x0
	.globl	forward_local_layer_gpu
	.p2align	2
forward_local_layer_gpu:
	.long	0                               # 0x0
	.globl	update_local_layer_gpu
	.p2align	2
update_local_layer_gpu:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym local_out_height
	.addrsig_sym local_out_width
	.addrsig_sym calloc
	.addrsig_sym sqrt
	.addrsig_sym rand_uniform
	.addrsig_sym fprintf
	.addrsig_sym LOCAL
	.addrsig_sym forward_local_layer
	.addrsig_sym backward_local_layer
	.addrsig_sym update_local_layer
	.addrsig_sym stderr