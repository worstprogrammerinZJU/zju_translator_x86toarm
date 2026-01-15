	.text
	.globl	get_paths                       # -- Begin function get_paths
	.p2align	4, 0x90
get_paths:                              # @get_paths
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	file_error@PLT
.LBB0_2:
	movb	$0, %al
	callq	make_list@PLT
	movq	%rax, -32(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	fgetl@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	list_insert@PLT
	jmp	.LBB0_3
.LBB0_5:
	movq	-24(%rbp), %rdi
	callq	fclose@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym make_list
	.addrsig_sym fgetl
	.addrsig_sym list_insert
	.addrsig_sym fclose