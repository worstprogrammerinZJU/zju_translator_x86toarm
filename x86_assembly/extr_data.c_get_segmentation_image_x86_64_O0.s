	.text
	.globl	get_segmentation_image          # -- Begin function get_segmentation_image
	.p2align	4, 0x90
get_segmentation_image:                 # @get_segmentation_image
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$36976, %rsp                    # imm = 0x9070
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
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
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	make_image@PLT
	movl	%eax, -4132(%rbp)
	leaq	-4128(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -4144(%rbp)
	cmpq	$0, -4144(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	-4128(%rbp), %rdi
	callq	file_error@PLT
.LBB0_2:
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	$1, %edx
	callq	make_image@PLT
	movl	%eax, -36952(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-4144(%rbp), %rdi
	leaq	-36944(%rbp), %rcx
	leaq	.L.str.8(%rip), %rsi
	leaq	-36948(%rbp), %rdx
	callq	fscanf@PLT
	cmpl	$2, %eax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -36956(%rbp)
	leaq	-36944(%rbp), %rdi
	leaq	-36956(%rbp), %rsi
	xorl	%edx, %edx
	callq	read_intlist@PLT
	movq	%rax, -36968(%rbp)
	movl	-36952(%rbp), %edi
	movq	-36968(%rbp), %rsi
	movl	-36956(%rbp), %edx
	callq	load_rle@PLT
	movl	-36952(%rbp), %edi
	movl	-4132(%rbp), %esi
	movl	-36948(%rbp), %edx
	callq	or_image@PLT
	movq	-36968(%rbp), %rdi
	callq	free@PLT
	jmp	.LBB0_3
.LBB0_5:
	movq	-4144(%rbp), %rdi
	callq	fclose@PLT
	movl	-36952(%rbp), %edi
	callq	free_image@PLT
	movl	-4132(%rbp), %eax
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