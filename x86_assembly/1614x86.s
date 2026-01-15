	.text
	.p2align	4, 0x90                         # -- Begin function rcapture_l
rcapture_l:                             # @rcapture_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	lua_type@PLT
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)                 # 4-byte Spill
	subl	$128, %eax
	je	.LBB0_2
	jmp	.LBB0_6
.LBB0_6:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$129, %eax
	je	.LBB0_3
	jmp	.LBB0_7
.LBB0_7:
	movl	-20(%rbp), %eax                 # 4-byte Reload
	subl	$130, %eax
	jne	.LBB0_4
	jmp	.LBB0_1
.LBB0_1:
	movq	-16(%rbp), %rdi
	movl	Cfunction(%rip), %esi
	movl	$2, %edx
	callq	capture_aux@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	Cquery(%rip), %esi
	movl	$2, %edx
	callq	capture_aux@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_3:
	movq	-16(%rbp), %rdi
	movl	Cstring(%rip), %esi
	movl	$2, %edx
	callq	capture_aux@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	leaq	.L.str(%rip), %rdx
	callq	luaL_argerror@PLT
	movl	%eax, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Cfunction
	.p2align	2
Cfunction:
	.long	0                               # 0x0
	.globl	Cquery
	.p2align	2
Cquery:
	.long	0                               # 0x0
	.globl	Cstring
	.p2align	2
Cstring:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid replacement value"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rcapture_l
	.addrsig_sym lua_type
	.addrsig_sym capture_aux
	.addrsig_sym luaL_argerror
	.addrsig_sym Cfunction
	.addrsig_sym Cquery
	.addrsig_sym Cstring