	.text
	.p2align	4, 0x90                         # -- Begin function lua_chassis_log_message
lua_chassis_log_message:                # @lua_chassis_log_message
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lua_gettop@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	lua_pushliteral@PLT
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_insert@PLT
	movq	-8(%rbp), %rdi
	callq	lua_chassis_log@PLT
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_remove@PLT
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	lua_gettop@PLT
	movl	%eax, %ecx
	movl	-20(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	g_assert@PLT
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"message"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_chassis_log_message
	.addrsig_sym lua_gettop
	.addrsig_sym lua_pushliteral
	.addrsig_sym lua_insert
	.addrsig_sym lua_chassis_log
	.addrsig_sym lua_remove
	.addrsig_sym g_assert