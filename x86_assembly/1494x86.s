	.text
	.p2align	4, 0x90                         # -- Begin function dir_iter_factory
dir_iter_factory:                       # @dir_iter_factory
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	luaL_checkstring@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$32, %esi
	callq	lua_newuserdata@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rdi
	movl	DIR_METATABLE(%rip), %esi
	callq	luaL_getmetatable@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_setmetatable@PLT
	movq	-16(%rbp), %rdi
	callq	opendir@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	errno(%rip), %edi
	callq	strerror@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	movl	%eax, %ecx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	luaL_error@PLT
.LBB0_2:
	movq	-8(%rbp), %rdi
	movl	dir_iter(%rip), %esi
	movl	$1, %edx
	callq	lua_pushcclosure@PLT
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DIR_METATABLE
	.p2align	2
DIR_METATABLE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot open %s: %s"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.globl	dir_iter
	.p2align	2
dir_iter:
	.long	0                               # 0x0
	.globl	MAX_DIR_LENGTH
	.p2align	3
MAX_DIR_LENGTH:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dir_iter_factory
	.addrsig_sym luaL_checkstring
	.addrsig_sym lua_newuserdata
	.addrsig_sym luaL_getmetatable
	.addrsig_sym lua_setmetatable
	.addrsig_sym opendir
	.addrsig_sym luaL_error
	.addrsig_sym strerror
	.addrsig_sym lua_pushcclosure
	.addrsig_sym DIR_METATABLE
	.addrsig_sym errno
	.addrsig_sym dir_iter