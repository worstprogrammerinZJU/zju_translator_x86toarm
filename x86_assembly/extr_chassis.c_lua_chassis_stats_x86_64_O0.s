	.text
	.p2align	4, 0x90                         # -- Begin function lua_chassis_stats
lua_chassis_stats:                      # @lua_chassis_stats
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	FALSE(%rip), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	lua_gettop@PLT
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -24(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	cmpl	$1, -56(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	luaL_checkstring@PLT
	movq	%rax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	leaq	.L.str(%rip), %rdx
	callq	luaL_argerror@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_39
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	lua_newtable@PLT
	movq	-16(%rbp), %rdi
	movl	LUA_REGISTRYINDEX(%rip), %esi
	movl	CHASSIS_LUA_REGISTRY_KEY(%rip), %edx
	callq	lua_getfield@PLT
	movq	-16(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_topointer@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pop@PLT
	cmpl	$0, -56(%rbp)
	jne	.LBB0_12
# %bb.7:
	cmpq	$0, -32(%rbp)
	je	.LBB0_12
# %bb.8:
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	chassis_stats_get@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_10
# %bb.9:
	movl	FALSE(%rip), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movl	TRUE(%rip), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	lua_newtable@PLT
	movq	-64(%rbp), %rdi
	movl	chassis_stats_setluaval(%rip), %esi
	movq	-16(%rbp), %rdx
	callq	g_hash_table_foreach@PLT
	movq	-16(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	leaq	.L.str.1(%rip), %rdx
	callq	lua_setfield@PLT
	movq	-64(%rbp), %rdi
	callq	g_hash_table_destroy@PLT
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	cmpq	$0, -32(%rbp)
	je	.LBB0_36
# %bb.13:
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_36
# %bb.14:
	movq	$0, -48(%rbp)
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB0_35
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_33
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_33
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=1
	movq	$0, -72(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	*%rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=1
	movl	TRUE(%rip), %eax
	movl	%eax, -52(%rbp)
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-16(%rbp), %rdi
	callq	lua_newtable@PLT
	movq	-72(%rbp), %rdi
	movl	chassis_stats_setluaval(%rip), %esi
	movq	-16(%rbp), %rdx
	callq	g_hash_table_foreach@PLT
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_setfield@PLT
	movq	-72(%rbp), %rdi
	callq	g_hash_table_destroy@PLT
	jmp	.LBB0_32
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	g_ascii_strcasecmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_26
# %bb.23:
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	chassis_stats_get@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_25
# %bb.24:
	movl	FALSE(%rip), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_35
.LBB0_25:
	movl	TRUE(%rip), %eax
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rdi
	movl	chassis_stats_setluaval(%rip), %esi
	movq	-16(%rbp), %rdx
	callq	g_hash_table_foreach@PLT
	movq	-72(%rbp), %rdi
	callq	g_hash_table_destroy@PLT
	jmp	.LBB0_35
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_ascii_strcasecmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_30
# %bb.27:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	*%rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_29
# %bb.28:
	movl	FALSE(%rip), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_35
.LBB0_29:
	movl	TRUE(%rip), %eax
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rdi
	movl	chassis_stats_setluaval(%rip), %esi
	movq	-16(%rbp), %rdx
	callq	g_hash_table_foreach@PLT
	movq	-72(%rbp), %rdi
	callq	g_hash_table_destroy@PLT
	jmp	.LBB0_35
.LBB0_30:                               #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_32
.LBB0_32:                               #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_15
.LBB0_35:
	jmp	.LBB0_36
.LBB0_36:
	cmpl	$0, -52(%rbp)
	jne	.LBB0_38
# %bb.37:
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pop@PLT
	movq	-16(%rbp), %rdi
	callq	lua_pushnil@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_39
.LBB0_38:
	movl	$1, -4(%rbp)
.LBB0_39:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	FALSE
	.p2align	2
FALSE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"currently only zero or one arguments are allowed"
	.bss
	.globl	LUA_REGISTRYINDEX
	.p2align	2
LUA_REGISTRYINDEX:
	.long	0                               # 0x0
	.globl	CHASSIS_LUA_REGISTRY_KEY
	.p2align	2
CHASSIS_LUA_REGISTRY_KEY:
	.long	0                               # 0x0
	.globl	TRUE
	.p2align	2
TRUE:
	.long	0                               # 0x0
	.globl	chassis_stats_setluaval
	.p2align	2
chassis_stats_setluaval:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"chassis"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_chassis_stats
	.addrsig_sym lua_gettop
	.addrsig_sym luaL_checkstring
	.addrsig_sym luaL_argerror
	.addrsig_sym lua_newtable
	.addrsig_sym lua_getfield
	.addrsig_sym lua_topointer
	.addrsig_sym lua_pop
	.addrsig_sym chassis_stats_get
	.addrsig_sym g_hash_table_foreach
	.addrsig_sym lua_setfield
	.addrsig_sym g_hash_table_destroy
	.addrsig_sym g_ascii_strcasecmp
	.addrsig_sym lua_pushnil
	.addrsig_sym FALSE
	.addrsig_sym LUA_REGISTRYINDEX
	.addrsig_sym CHASSIS_LUA_REGISTRY_KEY
	.addrsig_sym TRUE
	.addrsig_sym chassis_stats_setluaval