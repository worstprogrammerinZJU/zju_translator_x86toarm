	.text
	.globl	load_regression_labels_paths    # -- Begin function load_regression_labels_paths
	.p2align	4, 0x90
load_regression_labels_paths:           # @load_regression_labels_paths
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$4144, %rsp                     # imm = 0x1030
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	make_matrix@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
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
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.7(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.8(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.9(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.10(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.11(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.12(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.13(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.14(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	-4128(%rbp), %rcx
	leaq	.L.str.15(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	.L.str.16(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -4136(%rbp)
	movl	$0, -32(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-4136(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movslq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdx
	leaq	.L.str.17(%rip), %rsi
	callq	fscanf@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-4136(%rbp), %rdi
	callq	fclose@PLT
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-8(%rbp), %rax
	addq	$4144, %rsp                     # imm = 0x1030
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"images"
.L.str.1:
	.asciz	"labels"
.L.str.2:
	.asciz	"JPEGImages"
.L.str.3:
	.asciz	".BMP"
.L.str.4:
	.asciz	".txt"
.L.str.5:
	.asciz	".JPEG"
.L.str.6:
	.asciz	".JPG"
.L.str.7:
	.asciz	".JPeG"
.L.str.8:
	.asciz	".Jpeg"
.L.str.9:
	.asciz	".PNG"
.L.str.10:
	.asciz	".TIF"
.L.str.11:
	.asciz	".bmp"
.L.str.12:
	.asciz	".jpeg"
.L.str.13:
	.asciz	".jpg"
.L.str.14:
	.asciz	".png"
.L.str.15:
	.asciz	".tif"
.L.str.16:
	.asciz	"r"
.L.str.17:
	.asciz	"%f"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_matrix
	.addrsig_sym find_replace
	.addrsig_sym fopen
	.addrsig_sym fscanf
	.addrsig_sym fclose