	.text
	.p2align	4, 0x90                         # -- Begin function constant_fold
constant_fold:                          # @constant_fold
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	block_is_single@PLT
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.1:
	movl	-8(%rbp), %edi
	callq	block_is_const@PLT
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.2:
	movl	-12(%rbp), %edi
	callq	block_is_single@PLT
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:
	movl	-12(%rbp), %edi
	callq	block_is_const@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
.LBB0_4:
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_53
.LBB0_5:
	cmpl	$43, -16(%rbp)
	jne	.LBB0_11
# %bb.6:
	movl	-8(%rbp), %edi
	callq	block_const_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_8
# %bb.7:
	movl	-8(%rbp), %edi
	callq	block_free@PLT
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_53
.LBB0_8:
	movl	-12(%rbp), %edi
	callq	block_const_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_10
# %bb.9:
	movl	-12(%rbp), %edi
	callq	block_free@PLT
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_53
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movl	-8(%rbp), %edi
	callq	block_const_kind@PLT
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %edi
	callq	block_const_kind@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	je	.LBB0_13
# %bb.12:
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_53
.LBB0_13:
	movb	$0, %al
	callq	jv_invalid@PLT
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %edi
	callq	block_const_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_45
# %bb.14:
	movl	-8(%rbp), %edi
	callq	block_const@PLT
	movl	%eax, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	block_const@PLT
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_number_value@PLT
	movsd	%xmm0, -40(%rbp)
	movl	-28(%rbp), %edi
	callq	jv_number_value@PLT
	movsd	%xmm0, -48(%rbp)
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	jv_cmp@PLT
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	addl	$-42, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	subl	$89, %eax
	ja	.LBB0_43
# %bb.54:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_15:
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	callq	jv_number@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_16:
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	callq	jv_number@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_17:
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	callq	jv_number@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_18:
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	divsd	-48(%rbp), %xmm0
	callq	jv_number@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_19:
	cmpl	$0, -52(%rbp)
	jne	.LBB0_21
# %bb.20:
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	jmp	.LBB0_22
.LBB0_21:
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -76(%rbp)                 # 4-byte Spill
.LBB0_22:
	movl	-76(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_23:
	cmpl	$0, -52(%rbp)
	je	.LBB0_25
# %bb.24:
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	jmp	.LBB0_26
.LBB0_25:
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -80(%rbp)                 # 4-byte Spill
.LBB0_26:
	movl	-80(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_27:
	cmpl	$0, -52(%rbp)
	jge	.LBB0_29
# %bb.28:
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	jmp	.LBB0_30
.LBB0_29:
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -84(%rbp)                 # 4-byte Spill
.LBB0_30:
	movl	-84(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_31:
	cmpl	$0, -52(%rbp)
	jle	.LBB0_33
# %bb.32:
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	jmp	.LBB0_34
.LBB0_33:
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -88(%rbp)                 # 4-byte Spill
.LBB0_34:
	movl	-88(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_35:
	cmpl	$0, -52(%rbp)
	jg	.LBB0_37
# %bb.36:
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	jmp	.LBB0_38
.LBB0_37:
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -92(%rbp)                 # 4-byte Spill
.LBB0_38:
	movl	-92(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_39:
	cmpl	$0, -52(%rbp)
	jl	.LBB0_41
# %bb.40:
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	jmp	.LBB0_42
.LBB0_41:
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -96(%rbp)                 # 4-byte Spill
.LBB0_42:
	movl	-96(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB0_44
.LBB0_43:
	jmp	.LBB0_44
.LBB0_44:
	jmp	.LBB0_50
.LBB0_45:
	cmpl	$43, -16(%rbp)
	jne	.LBB0_48
# %bb.46:
	movl	-8(%rbp), %edi
	callq	block_const_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_48
# %bb.47:
	movl	-8(%rbp), %edi
	callq	block_const@PLT
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movl	-12(%rbp), %edi
	callq	block_const@PLT
	movl	-100(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	callq	jv_string_concat@PLT
	movl	%eax, -20(%rbp)
	jmp	.LBB0_49
.LBB0_48:
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_53
.LBB0_49:
	jmp	.LBB0_50
.LBB0_50:
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_INVALID(%rip), %rax
	jne	.LBB0_52
# %bb.51:
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_53
.LBB0_52:
	movl	-8(%rbp), %edi
	callq	block_free@PLT
	movl	-12(%rbp), %edi
	callq	block_free@PLT
	movl	-20(%rbp), %edi
	callq	gen_const@PLT
	movl	%eax, -4(%rbp)
.LBB0_53:
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_17-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_16-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_18-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_27-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_31-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_43-.LJTI0_0
	.long	.LBB0_23-.LJTI0_0
	.long	.LBB0_35-.LJTI0_0
	.long	.LBB0_39-.LJTI0_0
	.long	.LBB0_19-.LJTI0_0
                                        # -- End function
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.globl	JV_KIND_INVALID
	.p2align	3
JV_KIND_INVALID:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym constant_fold
	.addrsig_sym block_is_single
	.addrsig_sym block_is_const
	.addrsig_sym gen_noop
	.addrsig_sym block_const_kind
	.addrsig_sym block_free
	.addrsig_sym jv_invalid
	.addrsig_sym block_const
	.addrsig_sym jv_number_value
	.addrsig_sym jv_cmp
	.addrsig_sym jv_number
	.addrsig_sym jv_true
	.addrsig_sym jv_false
	.addrsig_sym jv_string_concat
	.addrsig_sym jv_get_kind
	.addrsig_sym gen_const
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_INVALID