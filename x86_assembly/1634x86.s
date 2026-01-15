	.text
	.p2align	4, 0x90                         # -- Begin function testpattern
testpattern:                            # @testpattern
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	lua_touserdata@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.1:
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	lua_getmetatable@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.2:
	movq	-16(%rbp), %rdi
	movl	PATTERN_T(%rip), %esi
	callq	luaL_getmetatable@PLT
	movq	-16(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	movl	$4294967294, %edx               # imm = 0xFFFFFFFE
	callq	lua_rawequal@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	lua_pop@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movl	$0, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	PATTERN_T
	.p2align	2
PATTERN_T:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym testpattern
	.addrsig_sym lua_touserdata
	.addrsig_sym lua_getmetatable
	.addrsig_sym luaL_getmetatable
	.addrsig_sym lua_rawequal
	.addrsig_sym lua_pop
	.addrsig_sym PATTERN_T