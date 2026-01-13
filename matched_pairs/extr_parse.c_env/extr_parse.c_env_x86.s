	.text
	.p2align	4, 0x90                         # -- Begin function env
env:                                    # @env
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, localenv(%rip)
	je	.LBB0_2
# %bb.1:
	movq	localenv(%rip), %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movq	globalenv(%rip), %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
.LBB0_3:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.quad	0
	.globl	globalenv
	.p2align	3
globalenv:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym env
	.addrsig_sym localenv
	.addrsig_sym globalenv