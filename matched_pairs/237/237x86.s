	.text
	.p2align	4, 0x90                         # -- Begin function remap_print
remap_print:                            # @remap_print
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lua_gettop@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	lua_getglobal@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	lua_getglobal@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	leaq	.L.str.1(%rip), %rdx
	callq	lua_setfield@PLT
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pop@PLT
	movq	-8(%rbp), %rdi
	movl	lua_chassis_log_message(%rip), %edx
	leaq	.L.str.1(%rip), %rsi
	callq	lua_register@PLT
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	lua_gettop@PLT
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	g_assert@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"os"
.L.str.1:
	.asciz	"print"
	.bss
	.globl	lua_chassis_log_message
	.p2align	2
lua_chassis_log_message:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym remap_print
	.addrsig_sym lua_gettop
	.addrsig_sym lua_getglobal
	.addrsig_sym lua_setfield
	.addrsig_sym lua_pop
	.addrsig_sym lua_register
	.addrsig_sym g_assert
	.addrsig_sym lua_chassis_log_message