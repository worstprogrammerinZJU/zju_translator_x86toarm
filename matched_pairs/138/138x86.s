	.text
	.p2align	4, 0x90                         # -- Begin function f_divide
f_divide:                               # @f_divide
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_5
# %bb.1:
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_5
# %bb.2:
	movl	-28(%rbp), %edi
	callq	jv_number_value@PLT
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_4
	jp	.LBB0_4
# %bb.3:
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	leaq	.L.str(%rip), %rdx
	callq	type_error2@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_4:
	movl	-24(%rbp), %edi
	callq	jv_number_value@PLT
	movsd	%xmm0, -40(%rbp)                # 8-byte Spill
	movl	-28(%rbp), %edi
	callq	jv_number_value@PLT
	movaps	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	jv_number@PLT
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %edi
	callq	jv_free@PLT
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_5:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_8
# %bb.6:
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_8
# %bb.7:
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	jv_string_split@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	leaq	.L.str.1(%rip), %rdx
	callq	type_error2@PLT
	movl	%eax, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot be divided because the divisor is zero"
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"cannot be divided"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_divide
	.addrsig_sym jv_free
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_number_value
	.addrsig_sym type_error2
	.addrsig_sym jv_number
	.addrsig_sym jv_string_split
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_STRING