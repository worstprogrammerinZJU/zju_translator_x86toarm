	.text
	.p2align	4, 0x90                         # -- Begin function stream_token
stream_token:                           # @stream_token
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movsbl	-17(%rbp), %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	subl	$44, %eax
	je	.LBB0_18
	jmp	.LBB0_84
.LBB0_84:
	movl	-40(%rbp), %eax                 # 4-byte Reload
	subl	$58, %eax
	je	.LBB0_7
	jmp	.LBB0_85
.LBB0_85:
	movl	-40(%rbp), %eax                 # 4-byte Reload
	subl	$91, %eax
	je	.LBB0_1
	jmp	.LBB0_86
.LBB0_86:
	movl	-40(%rbp), %eax                 # 4-byte Reload
	subl	$93, %eax
	je	.LBB0_33
	jmp	.LBB0_87
.LBB0_87:
	movl	-40(%rbp), %eax                 # 4-byte Reload
	subl	$123, %eax
	je	.LBB0_4
	jmp	.LBB0_88
.LBB0_88:
	movl	-40(%rbp), %eax                 # 4-byte Reload
	subl	$125, %eax
	je	.LBB0_52
	jmp	.LBB0_82
.LBB0_1:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.2:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_3:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	xorl	%edi, %edi
	callq	jv_number@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	jv_array_append@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	JV_LAST_OPEN_ARRAY(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	jmp	.LBB0_82
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_VALUE(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	jv_null@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	jv_array_append@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	JV_LAST_OPEN_OBJECT(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	jmp	.LBB0_82
.LBB0_7:
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB0_9
# %bb.8:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	subl	$1, %esi
	callq	jv_array_get@PLT
	movq	%rax, %rdi
	movq	%rdi, -32(%rbp)
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_NUMBER(%rip), %eax
	jne	.LBB0_10
.LBB0_9:
	movq	-32(%rbp), %rdi
	callq	jv_free@PLT
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_10:
	movq	-32(%rbp), %rdi
	callq	jv_free@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_12
# %bb.11:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_NONE(%rip), %rax
	jne	.LBB0_13
.LBB0_12:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_13:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_STRING(%rip), %eax
	je	.LBB0_15
# %bb.14:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_15:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_VALUE(%rip), %rax
	je	.LBB0_17
# %bb.16:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_17:
	movq	JV_LAST_COLON(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	subl	$1, %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	callq	jv_array_set@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	jmp	.LBB0_82
.LBB0_18:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_VALUE(%rip), %rax
	je	.LBB0_20
# %bb.19:
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_20:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB0_22
# %bb.21:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_22:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	subl	$1, %esi
	callq	jv_array_get@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	jv_get_kind@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	JV_KIND_NUMBER(%rip), %eax
	jne	.LBB0_26
# %bb.23:
	movq	-32(%rbp), %rdi
	callq	jv_number_value@PLT
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_25
# %bb.24:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movb	$0, %al
	callq	JV_ARRAY@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
.LBB0_25:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movl	-36(%rbp), %edi
	addl	$1, %edi
	callq	jv_number@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movl	-60(%rbp), %esi                 # 4-byte Reload
	movq	%rax, %rdx
	callq	jv_array_set@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	JV_LAST_COMMA(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_32
.LBB0_26:
	movl	-24(%rbp), %eax
	cmpl	JV_KIND_STRING(%rip), %eax
	jne	.LBB0_30
# %bb.27:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_29
# %bb.28:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movb	$0, %al
	callq	JV_ARRAY@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
.LBB0_29:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	jv_true@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	-76(%rbp), %esi                 # 4-byte Reload
	movq	%rax, %rdx
	callq	jv_array_set@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	JV_LAST_COMMA(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_31
.LBB0_30:
	movl	-24(%rbp), %eax
	cmpl	JV_KIND_NULL(%rip), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-32(%rbp), %rdi
	callq	jv_free@PLT
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_31:
	jmp	.LBB0_32
.LBB0_32:
	movq	-32(%rbp), %rdi
	callq	jv_free@PLT
	jmp	.LBB0_82
.LBB0_33:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB0_35
# %bb.34:
	leaq	.L.str.8(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_35:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_COMMA(%rip), %rax
	jne	.LBB0_37
# %bb.36:
	leaq	.L.str.9(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_37:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_OPEN_ARRAY(%rip), %rax
	jne	.LBB0_39
# %bb.38:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
.LBB0_39:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	subl	$1, %esi
	callq	jv_array_get@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	jv_get_kind@PLT
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	jv_free@PLT
	movl	-24(%rbp), %eax
	cmpl	JV_KIND_NUMBER(%rip), %eax
	je	.LBB0_41
# %bb.40:
	leaq	.L.str.10(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_41:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_43
# %bb.42:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	jv_true@PLT
	movl	-100(%rbp), %edi                # 4-byte Reload
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	JV_ARRAY@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	jmp	.LBB0_46
.LBB0_43:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_OPEN_ARRAY(%rip), %rax
	je	.LBB0_45
# %bb.44:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movb	$0, %al
	callq	JV_ARRAY@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
.LBB0_45:
	jmp	.LBB0_46
.LBB0_46:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 8(%rax)
	xorl	%esi, %esi
	callq	jv_array_slice@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_OPEN_ARRAY(%rip), %rax
	jne	.LBB0_48
# %bb.47:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, -104(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	jv_array@PLT
	movl	-104(%rbp), %edi                # 4-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	JV_ARRAY@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
.LBB0_48:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB0_50
# %bb.49:
	movq	JV_LAST_NONE(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_51
.LBB0_50:
	movq	JV_LAST_VALUE(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_51:
	jmp	.LBB0_82
.LBB0_52:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB0_54
# %bb.53:
	leaq	.L.str.11(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_54:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_COMMA(%rip), %rax
	jne	.LBB0_56
# %bb.55:
	leaq	.L.str.12(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_56:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_OPEN_OBJECT(%rip), %rax
	jne	.LBB0_58
# %bb.57:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
.LBB0_58:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	subl	$1, %esi
	callq	jv_array_get@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	jv_get_kind@PLT
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	jv_free@PLT
	movl	-24(%rbp), %eax
	cmpl	JV_KIND_NUMBER(%rip), %eax
	jne	.LBB0_60
# %bb.59:
	leaq	.L.str.13(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_60:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_64
# %bb.61:
	movl	-24(%rbp), %eax
	cmpl	JV_KIND_STRING(%rip), %eax
	je	.LBB0_63
# %bb.62:
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_63:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, -116(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movb	$0, %al
	callq	jv_true@PLT
	movl	-116(%rbp), %edi                # 4-byte Reload
	movq	-112(%rbp), %rsi                # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	JV_ARRAY@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	jmp	.LBB0_76
.LBB0_64:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_COLON(%rip), %rax
	jne	.LBB0_66
# %bb.65:
	leaq	.L.str.14(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_66:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_COMMA(%rip), %rax
	jne	.LBB0_68
# %bb.67:
	leaq	.L.str.15(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_68:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_OPEN_ARRAY(%rip), %rax
	jne	.LBB0_70
# %bb.69:
	leaq	.L.str.13(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_70:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_VALUE(%rip), %rax
	je	.LBB0_73
# %bb.71:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_OPEN_OBJECT(%rip), %rax
	je	.LBB0_73
# %bb.72:
	leaq	.L.str.16(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_83
.LBB0_73:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_OPEN_OBJECT(%rip), %rax
	je	.LBB0_75
# %bb.74:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movb	$0, %al
	callq	JV_ARRAY@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
.LBB0_75:
	jmp	.LBB0_76
.LBB0_76:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 8(%rax)
	xorl	%esi, %esi
	callq	jv_array_slice@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	JV_LAST_OPEN_OBJECT(%rip), %rax
	jne	.LBB0_78
# %bb.77:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_copy@PLT
	movl	%eax, -120(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	jv_object@PLT
	movl	-120(%rbp), %edi                # 4-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	JV_ARRAY@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
.LBB0_78:
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB0_80
# %bb.79:
	movq	JV_LAST_NONE(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_81
.LBB0_80:
	movq	JV_LAST_VALUE(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_81:
	jmp	.LBB0_82
.LBB0_82:
	movq	$0, -8(%rbp)
.LBB0_83:
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Expected a separator between values"
	.bss
	.globl	JV_LAST_OPEN_ARRAY
	.p2align	3
JV_LAST_OPEN_ARRAY:
	.quad	0
	.globl	JV_LAST_VALUE
	.p2align	3
JV_LAST_VALUE:
	.quad	0
	.globl	JV_LAST_OPEN_OBJECT
	.p2align	3
JV_LAST_OPEN_OBJECT:
	.quad	0
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"':' not as part of an object"
	.bss
	.globl	JV_LAST_NONE
	.p2align	3
JV_LAST_NONE:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Expected string key before ':'"
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Object keys must be strings"
.L.str.4:
	.asciz	"':' should follow a key"
	.bss
	.globl	JV_LAST_COLON
	.p2align	3
JV_LAST_COLON:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Expected value before ','"
.L.str.6:
	.asciz	"',' not as part of an object or array"
	.bss
	.globl	JV_LAST_COMMA
	.p2align	3
JV_LAST_COMMA:
	.quad	0
	.globl	JV_KIND_NULL
	.p2align	2
JV_KIND_NULL:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Objects must consist of key:value pairs"
.L.str.8:
	.asciz	"Unmatched ']' at the top-level"
.L.str.9:
	.asciz	"Expected another array element"
.L.str.10:
	.asciz	"Unmatched ']' in the middle of an object"
.L.str.11:
	.asciz	"Unmatched '}' at the top-level"
.L.str.12:
	.asciz	"Expected another key:value pair"
.L.str.13:
	.asciz	"Unmatched '}' in the middle of an array"
.L.str.14:
	.asciz	"Missing value in key:value pair"
.L.str.15:
	.asciz	"Expected another key-value pair"
.L.str.16:
	.asciz	"Unmatched '}'"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stream_token
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_array_append
	.addrsig_sym jv_number
	.addrsig_sym jv_null
	.addrsig_sym jv_invalid
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_get
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym jv_array_set
	.addrsig_sym jv_number_value
	.addrsig_sym JV_ARRAY
	.addrsig_sym jv_true
	.addrsig_sym assert
	.addrsig_sym jv_array_slice
	.addrsig_sym jv_array
	.addrsig_sym jv_object
	.addrsig_sym JV_LAST_OPEN_ARRAY
	.addrsig_sym JV_LAST_VALUE
	.addrsig_sym JV_LAST_OPEN_OBJECT
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JV_LAST_NONE
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_LAST_COLON
	.addrsig_sym JV_LAST_COMMA
	.addrsig_sym JV_KIND_NULL