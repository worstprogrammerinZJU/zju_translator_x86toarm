	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, %al
	callq	test_buf@PLT
	movb	$0, %al
	callq	test_list@PLT
	movb	$0, %al
	callq	test_map@PLT
	movb	$0, %al
	callq	test_map_stack@PLT
	movb	$0, %al
	callq	test_dict@PLT
	movb	$0, %al
	callq	test_set@PLT
	movb	$0, %al
	callq	test_path@PLT
	movb	$0, %al
	callq	test_file@PLT
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Passed\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_buf
	.addrsig_sym test_list
	.addrsig_sym test_map
	.addrsig_sym test_map_stack
	.addrsig_sym test_dict
	.addrsig_sym test_set
	.addrsig_sym test_path
	.addrsig_sym test_file
	.addrsig_sym printf