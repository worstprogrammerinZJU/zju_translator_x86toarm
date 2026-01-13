	.text
	.globl	resize_network                  # -- Begin function resize_network
	.p2align	4, 0x90
resize_network:                         # @resize_network
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB0_46
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	80(%rax), %rsi
	movslq	-20(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rsi
	leaq	-72(%rbp), %rdi
	movl	$40, %edx
	callq	memcpy@PLT
	movq	-72(%rbp), %rax
	cmpq	CONVOLUTIONAL(%rip), %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-72(%rbp), %rdi
	callq	resize_convolutional_layer@PLT
	jmp	.LBB0_38
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	CROP(%rip), %rax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-72(%rbp), %rdi
	callq	resize_crop_layer@PLT
	jmp	.LBB0_37
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	MAXPOOL(%rip), %rax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-72(%rbp), %rdi
	callq	resize_maxpool_layer@PLT
	jmp	.LBB0_36
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	REGION(%rip), %rax
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-72(%rbp), %rdi
	callq	resize_region_layer@PLT
	jmp	.LBB0_35
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	YOLO(%rip), %rax
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-72(%rbp), %rdi
	callq	resize_yolo_layer@PLT
	jmp	.LBB0_34
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	ROUTE(%rip), %rax
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rsi
	leaq	-72(%rbp), %rdi
	callq	resize_route_layer@PLT
	jmp	.LBB0_33
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	SHORTCUT(%rip), %rax
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-72(%rbp), %rdi
	callq	resize_shortcut_layer@PLT
	jmp	.LBB0_32
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	UPSAMPLE(%rip), %rax
	jne	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-72(%rbp), %rdi
	callq	resize_upsample_layer@PLT
	jmp	.LBB0_31
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	REORG(%rip), %rax
	jne	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-72(%rbp), %rdi
	callq	resize_reorg_layer@PLT
	jmp	.LBB0_30
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	AVGPOOL(%rip), %rax
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-72(%rbp), %rdi
	callq	resize_avgpool_layer@PLT
	jmp	.LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	NORMALIZATION(%rip), %rax
	jne	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	leaq	-72(%rbp), %rdi
	callq	resize_normalization_layer@PLT
	jmp	.LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	COST(%rip), %rax
	jne	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %esi
	leaq	-72(%rbp), %rdi
	callq	resize_cost_layer@PLT
	jmp	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_32
.LBB0_32:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_37
.LBB0_37:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_38
.LBB0_38:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_40:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$2000000000, -64(%rbp)          # imm = 0x77359400
	jbe	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_1 Depth=1
	xorl	%edi, %edi
	callq	assert@PLT
.LBB0_42:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movslq	-20(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rdi
	leaq	-72(%rbp), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -16(%rbp)
	movq	-72(%rbp), %rax
	cmpq	AVGPOOL(%rip), %rax
	jne	.LBB0_44
# %bb.43:
	jmp	.LBB0_46
.LBB0_44:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_45
.LBB0_45:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_46:
	movq	-8(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	callq	get_network_output_layer@PLT
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movl	28(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-96(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-96(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 20(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 32(%rax)
	je	.LBB0_48
# %bb.47:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	32(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 20(%rax)
.LBB0_48:
	movl	-76(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	free@PLT
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	movq	-8(%rbp), %rax
	imull	24(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 56(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %edi
	movq	-8(%rbp), %rax
	imull	24(%rax), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	free@PLT
	movq	-32(%rbp), %rsi
	movl	$1, %edi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CONVOLUTIONAL
	.p2align	3
CONVOLUTIONAL:
	.quad	0                               # 0x0
	.globl	CROP
	.p2align	3
CROP:
	.quad	0                               # 0x0
	.globl	MAXPOOL
	.p2align	3
MAXPOOL:
	.quad	0                               # 0x0
	.globl	REGION
	.p2align	3
REGION:
	.quad	0                               # 0x0
	.globl	YOLO
	.p2align	3
YOLO:
	.quad	0                               # 0x0
	.globl	ROUTE
	.p2align	3
ROUTE:
	.quad	0                               # 0x0
	.globl	SHORTCUT
	.p2align	3
SHORTCUT:
	.quad	0                               # 0x0
	.globl	UPSAMPLE
	.p2align	3
UPSAMPLE:
	.quad	0                               # 0x0
	.globl	REORG
	.p2align	3
REORG:
	.quad	0                               # 0x0
	.globl	AVGPOOL
	.p2align	3
AVGPOOL:
	.quad	0                               # 0x0
	.globl	NORMALIZATION
	.p2align	3
NORMALIZATION:
	.quad	0                               # 0x0
	.globl	COST
	.p2align	3
COST:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Cannot resize this type of layer"
	.bss
	.globl	gpu_index
	.p2align	3
gpu_index:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym resize_convolutional_layer
	.addrsig_sym resize_crop_layer
	.addrsig_sym resize_maxpool_layer
	.addrsig_sym resize_region_layer
	.addrsig_sym resize_yolo_layer
	.addrsig_sym resize_route_layer
	.addrsig_sym resize_shortcut_layer
	.addrsig_sym resize_upsample_layer
	.addrsig_sym resize_reorg_layer
	.addrsig_sym resize_avgpool_layer
	.addrsig_sym resize_normalization_layer
	.addrsig_sym resize_cost_layer
	.addrsig_sym error
	.addrsig_sym assert
	.addrsig_sym get_network_output_layer
	.addrsig_sym free
	.addrsig_sym calloc
	.addrsig_sym CONVOLUTIONAL
	.addrsig_sym CROP
	.addrsig_sym MAXPOOL
	.addrsig_sym REGION
	.addrsig_sym YOLO
	.addrsig_sym ROUTE
	.addrsig_sym SHORTCUT
	.addrsig_sym UPSAMPLE
	.addrsig_sym REORG
	.addrsig_sym AVGPOOL
	.addrsig_sym NORMALIZATION
	.addrsig_sym COST