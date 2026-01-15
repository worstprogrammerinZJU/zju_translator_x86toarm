	.text
	.globl	crc32_string                    # -- Begin function crc32_string
	.p2align	4, 0x90
crc32_string:                           # @crc32_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	leaq	-16(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	g_debug@PLT
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	crc32@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	g_debug@PLT
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	lua_pushnumber@PLT
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"string:%s, length:%d"
.L.str.1:
	.asciz	"crc key:%ld"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym luaL_checklstring
	.addrsig_sym g_debug
	.addrsig_sym crc32
	.addrsig_sym lua_pushnumber