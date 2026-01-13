	.text
	.p2align	4, 0x90                         # -- Begin function lua_chassis_log
lua_chassis_log:                        # @lua_chassis_log
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	leaq	.L.str.3(%rip), %rdx
	leaq	lua_chassis_log.log_names(%rip), %rcx
	callq	luaL_checkoption@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	leaq	.L.str.6(%rip), %rdx
	callq	luaL_optstring@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -40(%rbp)
	movl	$-1, -44(%rbp)
	movl	$-1, -48(%rbp)
	movl	$1, -52(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	leaq	-80(%rbp), %rdx
	callq	lua_getstack@PLT
	cmpl	$0, %eax
	jne	.LBB0_3
# %bb.2:
	jmp	.LBB0_13
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	leaq	-80(%rbp), %rdx
	callq	lua_getinfo@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.4:
	jmp	.LBB0_13
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$11, %ecx
	movb	%al, -89(%rbp)                  # 1-byte Spill
	jge	.LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -32(%rbp)
	movb	%al, -89(%rbp)                  # 1-byte Spill
	je	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$47, %ecx
	movb	%al, -89(%rbp)                  # 1-byte Spill
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$64, %eax
	setne	%al
	movb	%al, -89(%rbp)                  # 1-byte Spill
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-89(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_1
.LBB0_13:
	cmpq	$0, -32(%rbp)
	je	.LBB0_24
# %bb.14:
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$64, %eax
	jne	.LBB0_16
# %bb.15:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB0_16:
	movq	-8(%rbp), %rdi
	movl	LUA_REGISTRYINDEX(%rip), %esi
	movl	CHASSIS_LUA_REGISTRY_KEY(%rip), %edx
	callq	lua_getfield@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_topointer@PLT
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pop@PLT
	cmpq	$0, -88(%rbp)
	je	.LBB0_23
# %bb.17:
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_23
# %bb.18:
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_str_has_prefix@PLT
	cmpq	$0, %rax
	je	.LBB0_22
# %bb.19:
	movq	-88(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	movsbl	G_DIR_SEPARATOR(%rip), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_21
# %bb.20:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB0_21:
	jmp	.LBB0_22
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	movl	G_LOG_DOMAIN(%rip), %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movslq	-12(%rbp), %rcx
	leaq	lua_chassis_log.log_levels(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	cmpq	$0, -32(%rbp)
	je	.LBB0_26
# %bb.25:
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB0_27
.LBB0_26:
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
.LBB0_27:
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	%rax, -120(%rbp)                # 8-byte Spill
	cmpq	$0, -32(%rbp)
	je	.LBB0_29
# %bb.28:
	movl	-44(%rbp), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	jmp	.LBB0_30
.LBB0_29:
	movl	-48(%rbp), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
.LBB0_30:
	movq	-120(%rbp), %rcx                # 8-byte Reload
	movl	-96(%rbp), %esi                 # 4-byte Reload
	movl	-100(%rbp), %edi                # 4-byte Reload
	movl	-124(%rbp), %r8d                # 4-byte Reload
	movq	-24(%rbp), %r9
	leaq	.L.str.9(%rip), %rdx
	callq	g_log@PLT
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
lua_chassis_log.log_names:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error"
.L.str.1:
	.asciz	"critical"
.L.str.2:
	.asciz	"warning"
.L.str.3:
	.asciz	"message"
.L.str.4:
	.asciz	"info"
.L.str.5:
	.asciz	"debug"
	.section	.rodata,"a",@progbits
	.p2align	4
lua_chassis_log.log_levels:
	.long	131                             # 0x83
	.long	133                             # 0x85
	.long	128                             # 0x80
	.long	129                             # 0x81
	.long	130                             # 0x82
	.long	132                             # 0x84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"nil"
.L.str.7:
	.asciz	"unknown"
.L.str.8:
	.asciz	"Sl"
	.bss
	.globl	LUA_REGISTRYINDEX
	.p2align	2
LUA_REGISTRYINDEX:
	.long	0                               # 0x0
	.globl	CHASSIS_LUA_REGISTRY_KEY
	.p2align	2
CHASSIS_LUA_REGISTRY_KEY:
	.long	0                               # 0x0
	.section	.rodata,"a",@progbits
	.globl	G_DIR_SEPARATOR
G_DIR_SEPARATOR:
	.byte	0                               # 0x0
	.bss
	.globl	G_LOG_DOMAIN
	.p2align	2
G_LOG_DOMAIN:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"(%s:%d) %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_chassis_log
	.addrsig_sym luaL_checkoption
	.addrsig_sym luaL_optstring
	.addrsig_sym lua_getstack
	.addrsig_sym lua_getinfo
	.addrsig_sym lua_getfield
	.addrsig_sym lua_topointer
	.addrsig_sym lua_pop
	.addrsig_sym g_str_has_prefix
	.addrsig_sym strlen
	.addrsig_sym g_log
	.addrsig_sym lua_chassis_log.log_names
	.addrsig_sym lua_chassis_log.log_levels
	.addrsig_sym LUA_REGISTRYINDEX
	.addrsig_sym CHASSIS_LUA_REGISTRY_KEY
	.addrsig_sym G_DIR_SEPARATOR
	.addrsig_sym G_LOG_DOMAIN