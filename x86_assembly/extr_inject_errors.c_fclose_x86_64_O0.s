	.text
	.globl	fclose                          # -- Begin function fclose
	.p2align	4, 0x90
fclose:                                 # @fclose
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	leaq	fclose(%rip), %rdi
	callq	GET_REAL@PLT
	movq	-16(%rbp), %rdi
	callq	real_fclose@PLT
	movl	%eax, -20(%rbp)
	movq	fail_close(%rip), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB0_2
# %bb.1:
	movq	$0, fail_close(%rip)
	movq	$0, fail_write(%rip)
	movq	$0, fail_read(%rip)
	movq	$0, fail(%rip)
	movl	EOF(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	fail_close
	.p2align	3
fail_close:
	.quad	0
	.globl	fail_write
	.p2align	3
fail_write:
	.quad	0
	.globl	fail_read
	.p2align	3
fail_read:
	.quad	0
	.globl	fail
	.p2align	3
fail:
	.quad	0
	.globl	EOF
	.p2align	2
EOF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fclose
	.addrsig_sym GET_REAL
	.addrsig_sym real_fclose
	.addrsig_sym fail_close
	.addrsig_sym fail_write
	.addrsig_sym fail_read
	.addrsig_sym fail
	.addrsig_sym EOF