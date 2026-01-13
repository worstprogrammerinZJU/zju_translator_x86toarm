	.text
	.p2align	4, 0x90                         # -- Begin function get_dir
get_dir:                                # @get_dir
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$288, %rsp                      # imm = 0x120
	movq	%rdi, -16(%rbp)
	leaq	-288(%rbp), %rdi
	movl	$255, %esi
	callq	getcwd@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	lua_pushnil@PLT
	movq	-16(%rbp), %rdi
	movq	getcwd_error(%rip), %rsi
	callq	lua_pushstring@PLT
	movl	$2, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	leaq	-288(%rbp), %rsi
	callq	lua_pushstring@PLT
	movl	$1, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	getcwd_error
	.p2align	3
getcwd_error:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_dir
	.addrsig_sym getcwd
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushstring
	.addrsig_sym getcwd_error