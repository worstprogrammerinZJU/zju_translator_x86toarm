	.text
	.globl	luaopen_lpeg                    # -- Begin function luaopen_lpeg
	.p2align	4, 0x90
luaopen_lpeg:                           # @luaopen_lpeg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lua_newtable@PLT
	movq	-8(%rbp), %rdi
	movl	LUA_ENVIRONINDEX(%rip), %esi
	callq	lua_replace@PLT
	movq	-8(%rbp), %rdi
	movl	PATTERN_T(%rip), %esi
	callq	luaL_newmetatable@PLT
	movq	-8(%rbp), %rdi
	movl	metapattreg(%rip), %edx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	luaL_register@PLT
	movq	-8(%rbp), %rdi
	movl	pattreg(%rip), %edx
	leaq	.L.str(%rip), %rsi
	callq	luaL_register@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	lua_pushliteral@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_pushvalue@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967292, %esi               # imm = 0xFFFFFFFC
	callq	lua_settable@PLT
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	LUA_ENVIRONINDEX
	.p2align	2
LUA_ENVIRONINDEX:
	.long	0                               # 0x0
	.globl	PATTERN_T
	.p2align	2
PATTERN_T:
	.long	0                               # 0x0
	.globl	metapattreg
	.p2align	2
metapattreg:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lpeg"
	.bss
	.globl	pattreg
	.p2align	2
pattreg:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"__index"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_newtable
	.addrsig_sym lua_replace
	.addrsig_sym luaL_newmetatable
	.addrsig_sym luaL_register
	.addrsig_sym lua_pushliteral
	.addrsig_sym lua_pushvalue
	.addrsig_sym lua_settable
	.addrsig_sym LUA_ENVIRONINDEX
	.addrsig_sym PATTERN_T
	.addrsig_sym metapattreg
	.addrsig_sym pattreg