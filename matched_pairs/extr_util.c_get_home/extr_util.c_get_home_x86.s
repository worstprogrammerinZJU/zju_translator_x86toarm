	.text
	.globl	get_home                        # -- Begin function get_home
	.p2align	4, 0x90
get_home:                               # @get_home
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	.L.str(%rip), %rdi
	callq	getenv@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_5
# %bb.1:
	movb	$0, %al
	callq	getuid@PLT
	movl	%eax, %edi
	callq	getpwuid@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	jv_string@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
.LBB0_4:
	jmp	.LBB0_6
.LBB0_5:
	movq	-16(%rbp), %rdi
	callq	jv_string@PLT
	movl	%eax, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HOME"
.L.str.1:
	.asciz	"Could not find home directory."
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getenv
	.addrsig_sym getpwuid
	.addrsig_sym getuid
	.addrsig_sym jv_string
	.addrsig_sym jv_invalid_with_msg