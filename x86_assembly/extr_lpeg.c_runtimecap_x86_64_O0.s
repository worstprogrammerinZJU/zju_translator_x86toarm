	.text
	.p2align	4, 0x90                         # -- Begin function runtimecap
runtimecap:                             # @runtimecap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	findopen@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	captype@PLT
	cmpq	Cruntime(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	Cclose(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -80(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-8(%rbp), %rdi
	movl	$4, %esi
	leaq	.L.str(%rip), %rdx
	callq	luaL_checkstack@PLT
	leaq	-96(%rbp), %rdi
	callq	pushluaval@PLT
	movq	-8(%rbp), %rdi
	movl	SUBJIDX(%rip), %esi
	callq	lua_pushvalue@PLT
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	%eax, %esi
	callq	lua_pushinteger@PLT
	leaq	-96(%rbp), %rdi
	xorl	%esi, %esi
	callq	pushallcaptures@PLT
	movl	%eax, -100(%rbp)
	movq	-8(%rbp), %rdi
	movl	-100(%rbp), %esi
	addl	$2, %esi
	movl	LUA_MULTRET(%rip), %edx
	callq	lua_call@PLT
	movq	-16(%rbp), %rax
	movq	-112(%rbp), %rcx
	subq	%rcx, %rax
	sarq	$4, %rax
                                        # kill: def $eax killed $eax killed $rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Cruntime
	.p2align	3
Cruntime:
	.quad	0                               # 0x0
	.globl	Cclose
	.p2align	2
Cclose:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too many runtime captures"
	.bss
	.globl	SUBJIDX
	.p2align	2
SUBJIDX:
	.long	0                               # 0x0
	.globl	LUA_MULTRET
	.p2align	2
LUA_MULTRET:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym runtimecap
	.addrsig_sym findopen
	.addrsig_sym assert
	.addrsig_sym captype
	.addrsig_sym luaL_checkstack
	.addrsig_sym pushluaval
	.addrsig_sym lua_pushvalue
	.addrsig_sym lua_pushinteger
	.addrsig_sym pushallcaptures
	.addrsig_sym lua_call
	.addrsig_sym Cruntime
	.addrsig_sym Cclose
	.addrsig_sym SUBJIDX
	.addrsig_sym LUA_MULTRET