	.text
	.p2align	4, 0x90                         # -- Begin function set_info
set_info:                               # @set_info
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	lua_pushliteral@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	lua_pushliteral@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967293, %esi               # imm = 0xFFFFFFFD
	callq	lua_settable@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	lua_pushliteral@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	lua_pushliteral@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967293, %esi               # imm = 0xFFFFFFFD
	callq	lua_settable@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	lua_pushliteral@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	lua_pushliteral@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967293, %esi               # imm = 0xFFFFFFFD
	callq	lua_settable@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_COPYRIGHT"
.L.str.1:
	.asciz	"Copyright (C) 2011 Qihoo 360 - wangchao3"
.L.str.2:
	.asciz	"_DESCRIPTION"
.L.str.3:
	.asciz	"CRC32 String for Proxy.*"
.L.str.4:
	.asciz	"_VERSION"
.L.str.5:
	.asciz	"LuaCRC32string 0.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_info
	.addrsig_sym lua_pushliteral
	.addrsig_sym lua_settable