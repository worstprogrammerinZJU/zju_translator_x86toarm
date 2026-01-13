	.text
	.globl	get_segmentation_image2         # -- Begin function get_segmentation_image2
	.p2align	4, 0x90
get_segmentation_image2:                # @get_segmentation_image2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$36976, %rsp                    # imm = 0x9070
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.2(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.3(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.5(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.6(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	addl	$1, %edx
	callq	make_image@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -4132(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4132(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-4132(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	$1, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4132(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	leaq	-4128(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -4144(%rbp)
	cmpq	$0, -4144(%rbp)
	jne	.LBB0_6
# %bb.5:
	leaq	-4128(%rbp), %rdi
	callq	file_error@PLT
.LBB0_6:
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	$1, %edx
	callq	make_image@PLT
	movq	%rax, -36960(%rbp)
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movq	-4144(%rbp), %rdi
	leaq	-36944(%rbp), %rcx
	leaq	.L.str.8(%rip), %rsi
	leaq	-36948(%rbp), %rdx
	callq	fscanf@PLT
	cmpl	$2, %eax
	jne	.LBB0_15
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	$0, -36964(%rbp)
	leaq	-36944(%rbp), %rdi
	leaq	-36964(%rbp), %rsi
	xorl	%edx, %edx
	callq	read_intlist@PLT
	movq	%rax, -36976(%rbp)
	movq	-36976(%rbp), %rsi
	movl	-36964(%rbp), %edx
	movq	-36960(%rbp), %rdi
	callq	load_rle@PLT
	movl	-36948(%rbp), %edx
	movq	-36960(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	or_image@PLT
	movl	$0, -4132(%rbp)
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4132(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-36960(%rbp), %rax
	movslq	-4132(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-4132(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	$0, (%rax,%rcx,4)
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-4132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4132(%rbp)
	jmp	.LBB0_9
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-36976(%rbp), %rdi
	callq	free@PLT
	jmp	.LBB0_7
.LBB0_15:
	movq	-4144(%rbp), %rdi
	callq	fclose@PLT
	movq	-36960(%rbp), %rdi
	callq	free_image@PLT
	movq	-8(%rbp), %rax
	addq	$36976, %rsp                    # imm = 0x9070
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"images"
.L.str.1:
	.asciz	"mask"
.L.str.2:
	.asciz	"JPEGImages"
.L.str.3:
	.asciz	".jpg"
.L.str.4:
	.asciz	".txt"
.L.str.5:
	.asciz	".JPG"
.L.str.6:
	.asciz	".JPEG"
.L.str.7:
	.asciz	"r"
.L.str.8:
	.asciz	"%d %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_replace
	.addrsig_sym make_image
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym fscanf
	.addrsig_sym read_intlist
	.addrsig_sym load_rle
	.addrsig_sym or_image
	.addrsig_sym free
	.addrsig_sym fclose
	.addrsig_sym free_image