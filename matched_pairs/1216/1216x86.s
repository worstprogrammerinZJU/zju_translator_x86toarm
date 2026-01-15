	.text
	.globl	jv_bool                         # -- Begin function jv_bool
	.p2align	4, 0x90
jv_bool:                                # @jv_bool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	JV_TRUE(%rip), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	JV_FALSE(%rip), %eax
	movl	%eax, -8(%rbp)                  # 4-byte Spill
.LBB0_3:
	movl	-8(%rbp), %eax                  # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_TRUE
	.p2align	2
JV_TRUE:
	.long	0                               # 0x0
	.globl	JV_FALSE
	.p2align	2
JV_FALSE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_TRUE
	.addrsig_sym JV_FALSE