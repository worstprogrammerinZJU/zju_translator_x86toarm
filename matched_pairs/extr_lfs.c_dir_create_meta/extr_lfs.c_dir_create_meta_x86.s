	.text
	.p2align	4, 0x90                         # -- Begin function dir_create_meta
dir_create_meta:                        # @dir_create_meta
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	DIR_METATABLE(%rip), %esi
	callq	luaL_newmetatable@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	lua_pushstring@PLT
	movq	-8(%rbp), %rdi
	movl	dir_close(%rip), %esi
	callq	lua_pushcfunction@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967293, %esi               # imm = 0xFFFFFFFD
	callq	lua_settable@PLT
	movl	$1, %eax
	addq	$16, %rsp
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
	.asciz	"__gc"
	.bss
	.globl	dir_close
	.p2align	2
dir_close:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dir_create_meta
	.addrsig_sym luaL_newmetatable
	.addrsig_sym lua_pushstring
	.addrsig_sym lua_pushcfunction
	.addrsig_sym lua_settable
	.addrsig_sym DIR_METATABLE
	.addrsig_sym dir_close