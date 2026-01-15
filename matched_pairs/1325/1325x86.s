	.text
	.globl	jv_mem_uninit_setup             # -- Begin function jv_mem_uninit_setup
	.p2align	4, 0x90
jv_mem_uninit_setup:                    # @jv_mem_uninit_setup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, %edi
	callq	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %al
	movb	%al, jv_mem_uninitialised(%rip)
	movq	-8(%rbp), %rdi
	callq	free@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	jv_mem_uninitialised
jv_mem_uninitialised:
	.byte	0                               # 0x0
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	jv_mem_uninit_setup
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_uninit_setup
	.addrsig_sym malloc
	.addrsig_sym free
	.addrsig_sym jv_mem_uninitialised