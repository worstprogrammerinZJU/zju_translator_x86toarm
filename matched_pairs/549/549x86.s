	.text
	.globl	load_tags_paths                 # -- Begin function load_tags_paths
	.p2align	4, 0x90
load_tags_paths:                        # @load_tags_paths
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
                                        #     Child Loop BB0_5 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_11
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
	leaq	.L.str.3(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4128(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -4136(%rbp)
	cmpq	$0, -4136(%rbp)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4136(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	leaq	-4140(%rbp), %rdx
	callq	fscanf@PLT
	cmpl	$1, %eax
	jne	.LBB0_9
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movl	-4140(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-4140(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_5
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-4136(%rbp), %rdi
	callq	fclose@PLT
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_11:
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
	.asciz	".jpg"
.L.str.3:
	.asciz	".txt"
.L.str.4:
	.asciz	"r"
.L.str.5:
	.asciz	"%d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_matrix
	.addrsig_sym find_replace
	.addrsig_sym fopen
	.addrsig_sym fscanf
	.addrsig_sym fclose