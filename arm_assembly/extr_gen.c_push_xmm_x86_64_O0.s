	.text
	.p2align	4, 0x90                         # -- Begin function push_xmm
push_xmm:                               # @push_xmm
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-4(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	stackpos(%rip), %eax
	addl	$8, %eax
	movl	%eax, stackpos(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sub $8, #rsp"
.L.str.1:
	.asciz	"movsd #xmm%d, (#rsp)"
	.bss
	.globl	stackpos
	.p2align	2
stackpos:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym push_xmm
	.addrsig_sym emit
	.addrsig_sym SAVE
	.addrsig_sym stackpos