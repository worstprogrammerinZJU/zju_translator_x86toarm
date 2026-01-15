	.text
	.p2align	4, 0x90                         # -- Begin function test_excessive
test_excessive:                         # @test_excessive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movw	.L__const.test_excessive.x1(%rip), %ax
	movw	%ax, -3(%rbp)
	movb	.L__const.test_excessive.x1+2(%rip), %al
	movb	%al, -1(%rbp)
	movl	$3, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movw	.L__const.test_excessive.x2(%rip), %ax
	movw	%ax, -6(%rbp)
	movb	.L__const.test_excessive.x2+2(%rip), %al
	movb	%al, -4(%rbp)
	movl	$3, %esi
	movl	%esi, %edi
	callq	expect@PLT
	leaq	-6(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	movl	$3, %edx
	callq	strncmp@PLT
	movl	%eax, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
.L__const.test_excessive.x1:
	.ascii	"\001\002\003"
.L__const.test_excessive.x2:
	.ascii	"abc"
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_excessive
	.addrsig_sym expect
	.addrsig_sym strncmp