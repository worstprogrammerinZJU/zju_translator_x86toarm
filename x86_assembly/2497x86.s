	.text
	.globl	luaopen_time_ticker             # -- Begin function luaopen_time_ticker
	.p2align	4, 0x90
luaopen_time_ticker:                    # @luaopen_time_ticker
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	time_ticklib(%rip), %edx
	leaq	.L.str(%rip), %rsi
	callq	luaL_register@PLT
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ticker"
	.bss
	.globl	time_ticklib
	.p2align	2
time_ticklib:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym luaL_register
	.addrsig_sym time_ticklib