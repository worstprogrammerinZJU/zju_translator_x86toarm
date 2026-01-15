	.text
	.p2align	4, 0x90                         # -- Begin function val2str
val2str:                                # @val2str
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	lua_tostring@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	lua_pushfstring@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	luaL_typename@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.1(%rip), %rsi
	callq	lua_pushfstring@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rule '%s'"
.L.str.1:
	.asciz	"rule <a %s>"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym val2str
	.addrsig_sym lua_tostring
	.addrsig_sym lua_pushfstring
	.addrsig_sym luaL_typename