	.text
	.p2align	4, 0x90                         # -- Begin function jvp_dump_string
jvp_dump_string:                        # @jvp_dump_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movl	%eax, %ecx
	movq	-112(%rbp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$34, %edi
	callq	put_char@PLT
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	movq	%rdi, -56(%rbp)
	movq	-48(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	callq	jvp_utf8_next@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB0_29
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$-1, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	$0, -100(%rbp)
	movl	$32, %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$126, -60(%rbp)
	jg	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$34, -60(%rbp)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$92, -60(%rbp)
	jne	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$92, %edi
	callq	put_char@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax
                                        # kill: def $al killed $al killed $eax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movsbl	%al, %edi
	callq	put_char@PLT
	jmp	.LBB0_23
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$32, -60(%rbp)
	jl	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$127, -60(%rbp)
	jne	.LBB0_18
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$-8, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)                # 8-byte Spill
	subl	$5, %eax
	ja	.LBB0_16
# %bb.30:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-120(%rbp), %rax                # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$92, %edi
	callq	put_char@PLT
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$98, %edi
	callq	put_char@PLT
	jmp	.LBB0_17
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$92, %edi
	callq	put_char@PLT
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$116, %edi
	callq	put_char@PLT
	jmp	.LBB0_17
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$92, %edi
	callq	put_char@PLT
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$114, %edi
	callq	put_char@PLT
	jmp	.LBB0_17
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$92, %edi
	callq	put_char@PLT
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$110, %edi
	callq	put_char@PLT
	jmp	.LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$92, %edi
	callq	put_char@PLT
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$102, %edi
	callq	put_char@PLT
	jmp	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -100(%rbp)
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_22
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -8(%rbp)
	je	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -100(%rbp)
	jmp	.LBB0_21
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	callq	put_buf@PLT
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_22
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -100(%rbp)
	je	.LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$65535, -60(%rbp)               # imm = 0xFFFF
	jg	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-96(%rbp), %rdi
	movl	-60(%rbp), %ecx
	movl	$32, %esi
	leaq	.L.str(%rip), %rdx
	movb	$0, %al
	callq	snprintf@PLT
	jmp	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %eax
	subl	$65536, %eax                    # imm = 0x10000
	movl	%eax, -60(%rbp)
	leaq	-96(%rbp), %rdi
	movl	-60(%rbp), %ecx
	andl	$1047552, %ecx                  # imm = 0xFFC00
	sarl	$10, %ecx
	orl	$55296, %ecx                    # imm = 0xD800
	movl	-60(%rbp), %r8d
	andl	$1023, %r8d                     # imm = 0x3FF
	orl	$56320, %r8d                    # imm = 0xDC00
	movl	$32, %esi
	leaq	.L.str.1(%rip), %rdx
	movb	$0, %al
	callq	snprintf@PLT
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-96(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	put_str@PLT
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_29:
	cmpl	$-1, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	$34, %edi
	callq	put_char@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_16-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\u%04x"
.L.str.1:
	.asciz	"\\u%04x\\u%04x"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_dump_string
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_string_value
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym put_char
	.addrsig_sym jvp_utf8_next
	.addrsig_sym put_buf
	.addrsig_sym snprintf
	.addrsig_sym put_str
	.addrsig_sym JV_KIND_STRING