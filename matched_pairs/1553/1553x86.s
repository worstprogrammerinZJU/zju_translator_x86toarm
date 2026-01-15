	.text
	.p2align	4, 0x90                         # -- Begin function argcap_l
argcap_l:                               # @argcap_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	Carg(%rip), %esi
	leaq	.L.str(%rip), %rdx
	callq	emptycap_aux@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Carg
	.p2align	2
Carg:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid argument index"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym argcap_l
	.addrsig_sym emptycap_aux
	.addrsig_sym Carg