	.text
	.p2align	4, 0x90                         # -- Begin function test_path
test_path:                              # @test_path
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	callq	fullpath@PLT
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdi
	callq	assert_string@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	fullpath@PLT
	movl	%eax, %esi
	leaq	.L.str.1(%rip), %rdi
	callq	assert_string@PLT
	leaq	.L.str.2(%rip), %rdi
	callq	fullpath@PLT
	movl	%eax, %esi
	leaq	.L.str.1(%rip), %rdi
	callq	assert_string@PLT
	leaq	.L.str.3(%rip), %rdi
	callq	fullpath@PLT
	movl	%eax, %esi
	leaq	.L.str.1(%rip), %rdi
	callq	assert_string@PLT
	leaq	.L.str.5(%rip), %rdi
	callq	fullpath@PLT
	movl	%eax, %esi
	leaq	.L.str.4(%rip), %rdi
	callq	assert_string@PLT
	leaq	.L.str.7(%rip), %rdi
	callq	fullpath@PLT
	movl	%eax, %esi
	leaq	.L.str.6(%rip), %rdi
	callq	assert_string@PLT
	leaq	.L.str.8(%rip), %rdi
	callq	fullpath@PLT
	movl	%eax, %esi
	leaq	.L.str.6(%rip), %rdi
	callq	assert_string@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/abc"
.L.str.1:
	.asciz	"/abc/def"
.L.str.2:
	.asciz	"/abc///def"
.L.str.3:
	.asciz	"//abc///def"
.L.str.4:
	.asciz	"/abc/xyz"
.L.str.5:
	.asciz	"/abc/def/../xyz"
.L.str.6:
	.asciz	"/xyz"
.L.str.7:
	.asciz	"/abc/def/../../../xyz"
.L.str.8:
	.asciz	"/abc/def/../../../../xyz"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_path
	.addrsig_sym assert_string
	.addrsig_sym fullpath