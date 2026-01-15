	.text
	.globl	testmain                        # -- Begin function testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$5, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	movl	-4(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$3, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	imull	$10, -4(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$30, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$15, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	movl	-4(%rbp), %eax
	movl	$6, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$3, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	movl	$14, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$7, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$6, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	movl	-4(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$14, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	movl	-4(%rbp), %eax
	xorl	$3, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$13, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	movl	-4(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$52, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	movl	-4(%rbp), %eax
	sarl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movl	$13, %edi
	movsbl	%al, %esi
	callq	expect@PLT
	movb	$0, -5(%rbp)
	movsbl	-5(%rbp), %eax
	addl	$5, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%rbp)
	movl	$5, %edi
	movsbl	-5(%rbp), %esi
	callq	expect@PLT
	movsbl	-5(%rbp), %eax
	subl	$2, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%rbp)
	movl	$3, %edi
	movsbl	-5(%rbp), %esi
	callq	expect@PLT
	movsbl	-5(%rbp), %eax
	imull	$10, %eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%rbp)
	movl	$30, %edi
	movsbl	-5(%rbp), %esi
	callq	expect@PLT
	movsbl	-5(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%rbp)
	movl	$15, %edi
	movsbl	-5(%rbp), %esi
	callq	expect@PLT
	movsbl	-5(%rbp), %eax
	movl	$6, %ecx
	cltd
	idivl	%ecx
	movb	%dl, %al
	movb	%al, -5(%rbp)
	movl	$3, %edi
	movsbl	-5(%rbp), %esi
	callq	expect@PLT
	movb	$14, -5(%rbp)
	movsbl	-5(%rbp), %eax
	andl	$7, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%rbp)
	movl	$6, %edi
	movsbl	-5(%rbp), %esi
	callq	expect@PLT
	movsbl	-5(%rbp), %eax
	orl	$8, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%rbp)
	movl	$14, %edi
	movsbl	-5(%rbp), %esi
	callq	expect@PLT
	movsbl	-5(%rbp), %eax
	xorl	$3, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%rbp)
	movl	$13, %edi
	movsbl	-5(%rbp), %esi
	callq	expect@PLT
	movsbl	-5(%rbp), %eax
	shll	$2, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%rbp)
	movl	$52, %edi
	movsbl	-5(%rbp), %esi
	callq	expect@PLT
	movsbl	-5(%rbp), %eax
	sarl	$2, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -5(%rbp)
	movl	$13, %edi
	movsbl	-5(%rbp), %esi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"compound assignment"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect