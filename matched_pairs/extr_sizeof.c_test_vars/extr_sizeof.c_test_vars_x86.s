	.text
	.p2align	4, 0x90                         # -- Begin function test_vars
test_vars:                              # @test_vars
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movw	.L__const.test_vars.a(%rip), %ax
	movw	%ax, -3(%rbp)
	movb	.L__const.test_vars.a+2(%rip), %al
	movb	%al, -1(%rbp)
	movl	$3, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	.L__const.test_vars.b(%rip), %eax
	movl	%eax, -7(%rbp)
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$40, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$8, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$24, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$8, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$1, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
.L__const.test_vars.a:
	.ascii	"\001\002\003"
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__const.test_vars.b:
	.asciz	"abc"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_vars
	.addrsig_sym expect