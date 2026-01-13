	.text
	.p2align	4, 0x90                         # -- Begin function backref_l
backref_l:                              # @backref_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	Cbackref(%rip), %esi
	leaq	.L.str(%rip), %rdx
	callq	emptycap_aux@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Cbackref
	.p2align	2
Cbackref:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid back reference"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym backref_l
	.addrsig_sym emptycap_aux
	.addrsig_sym Cbackref