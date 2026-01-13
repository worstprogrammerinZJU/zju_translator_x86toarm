	.text
	.p2align	4, 0x90                         # -- Begin function file_lock
file_lock:                              # @file_lock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	leaq	.L.str(%rip), %rdx
	callq	check_file@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	luaL_checkstring@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	luaL_optlong@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	luaL_optlong@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	leaq	.L.str(%rip), %r9
	callq	_file_lock@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pushboolean@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	lua_pushnil@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	errno(%rip), %edi
	callq	strerror@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rsi
	callq	lua_pushfstring@PLT
	movl	$2, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lock"
.L.str.1:
	.asciz	"%s"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym file_lock
	.addrsig_sym check_file
	.addrsig_sym luaL_checkstring
	.addrsig_sym luaL_optlong
	.addrsig_sym _file_lock
	.addrsig_sym lua_pushboolean
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym strerror
	.addrsig_sym errno