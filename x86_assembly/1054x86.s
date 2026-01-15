	.text
	.globl	testmain                        # -- Begin function testmain
	.p2align	4, 0x90
testmain:                               # @testmain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.L.str(%rip), %rdi
	callq	print@PLT
	movl	$3, defaultint(%rip)
	movl	defaultint(%rip), %esi
	movl	$3, %edi
	callq	expect@PLT
	movl	val(%rip), %esi
	movl	$21, %edi
	callq	expect@PLT
	movl	$22, val(%rip)
	movl	val(%rip), %esi
	movl	$22, %edi
	callq	expect@PLT
	movq	p1(%rip), %rax
	movl	(%rax), %esi
	movl	$22, %edi
	callq	expect@PLT
	movq	a1(%rip), %rax
	movl	$23, 4(%rax)
	movq	a1(%rip), %rax
	movl	4(%rax), %esi
	movl	$23, %edi
	callq	expect@PLT
	movq	a2(%rip), %rax
	movl	4(%rax), %esi
	movl	$25, %edi
	callq	expect@PLT
	movl	$1, x1(%rip)
	movl	$2, x2(%rip)
	movl	x1(%rip), %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	x2(%rip), %esi
	movl	$2, %edi
	callq	expect@PLT
	movl	$3, x3(%rip)
	movl	x3(%rip), %esi
	movl	$3, %edi
	callq	expect@PLT
	movl	x4(%rip), %esi
	movl	$4, %edi
	callq	expect@PLT
	movl	x5(%rip), %esi
	movl	$5, %edi
	callq	expect@PLT
	movl	$6, x6(%rip)
	movl	x6(%rip), %esi
	movl	$6, %edi
	callq	expect@PLT
	movl	s1(%rip), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	expect_string@PLT
	movl	s2(%rip), %esi
	leaq	.L.str.2(%rip), %rdi
	callq	expect_string@PLT
	movl	l1(%rip), %esi
	movl	$8, %edi
	callq	expectl@PLT
	movq	intp(%rip), %rax
	movl	(%rax), %esi
	movl	$9, %edi
	callq	expectl@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"global variable"
	.bss
	.globl	defaultint
	.p2align	2
defaultint:
	.long	0                               # 0x0
	.globl	val
	.p2align	2
val:
	.long	0                               # 0x0
	.globl	p1
	.p2align	3
p1:
	.quad	0
	.globl	a1
	.p2align	3
a1:
	.quad	0
	.globl	a2
	.p2align	3
a2:
	.quad	0
	.globl	x1
	.p2align	2
x1:
	.long	0                               # 0x0
	.globl	x2
	.p2align	2
x2:
	.long	0                               # 0x0
	.globl	x3
	.p2align	2
x3:
	.long	0                               # 0x0
	.globl	x4
	.p2align	2
x4:
	.long	0                               # 0x0
	.globl	x5
	.p2align	2
x5:
	.long	0                               # 0x0
	.globl	x6
	.p2align	2
x6:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"abcd"
	.bss
	.globl	s1
	.p2align	2
s1:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ABCD"
	.bss
	.globl	s2
	.p2align	2
s2:
	.long	0                               # 0x0
	.globl	l1
	.p2align	2
l1:
	.long	0                               # 0x0
	.globl	intp
	.p2align	3
intp:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print
	.addrsig_sym expect
	.addrsig_sym expect_string
	.addrsig_sym expectl
	.addrsig_sym defaultint
	.addrsig_sym val
	.addrsig_sym p1
	.addrsig_sym a1
	.addrsig_sym a2
	.addrsig_sym x1
	.addrsig_sym x2
	.addrsig_sym x3
	.addrsig_sym x4
	.addrsig_sym x5
	.addrsig_sym x6
	.addrsig_sym s1
	.addrsig_sym s2
	.addrsig_sym l1
	.addrsig_sym intp