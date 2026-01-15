	.text
	.globl	get_metadata                    # -- Begin function get_metadata
	.p2align	4, 0x90
get_metadata:                           # @get_metadata
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	movl	$12, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rdi
	callq	read_data_cfg@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_str@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-32(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	xorl	%edx, %edx
	callq	option_find_str@PLT
	movq	%rax, -40(%rbp)
.LBB0_2:
	cmpq	$0, -40(%rbp)
	jne	.LBB0_4
# %bb.3:
	movl	stderr(%rip), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	fprintf@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	-40(%rbp), %rdi
	callq	get_labels@PLT
	movl	%eax, -12(%rbp)
.LBB0_5:
	movq	-32(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$2, %edx
	callq	option_find_int@PLT
	movl	%eax, -16(%rbp)
	movq	-32(%rbp), %rdi
	callq	free_list@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	-48(%rbp), %edx
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"names"
.L.str.1:
	.asciz	"labels"
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"No names or labels found\n"
.L.str.3:
	.asciz	"classes"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_data_cfg
	.addrsig_sym option_find_str
	.addrsig_sym fprintf
	.addrsig_sym get_labels
	.addrsig_sym option_find_int
	.addrsig_sym free_list
	.addrsig_sym stderr