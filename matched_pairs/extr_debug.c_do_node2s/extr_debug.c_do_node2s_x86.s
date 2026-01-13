	.text
	.p2align	4, 0x90                         # -- Begin function do_node2s
do_node2s:                              # @do_node2s
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$304, %rsp                      # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	$-33, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	subl	$146, %eax
	ja	.LBB0_89
# %bb.94:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	(%rax), %eax
	addl	$-153, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	subl	$7, %eax
	ja	.LBB0_19
# %bb.95:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_1(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_4:
	movq	-16(%rbp), %rax
	movsbl	4(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_13
.LBB0_6:
	movq	-16(%rbp), %rax
	movsbl	4(%rax), %eax
	cmpl	$92, %eax
	jne	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_12
.LBB0_8:
	movq	-16(%rbp), %rax
	movsbl	4(%rax), %eax
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:
	movq	-8(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_11
.LBB0_10:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsbl	4(%rax), %edx
	leaq	.L.str.4(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	jmp	.LBB0_20
.LBB0_14:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsbl	4(%rax), %edx
	leaq	.L.str.5(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_20
.LBB0_15:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsbl	4(%rax), %edx
	leaq	.L.str.6(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_20
.LBB0_16:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsbl	4(%rax), %edx
	leaq	.L.str.7(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_20
.LBB0_17:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	180(%rax), %edx
	leaq	.L.str.8(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_20
.LBB0_18:
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	176(%rax), %edi
	callq	quote_cstring@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.9(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_20
.LBB0_19:
	leaq	.L.str.10(%rip), %rdi
	callq	error@PLT
.LBB0_20:
	jmp	.LBB0_93
.LBB0_21:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	leaq	.L.str.11(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_22:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	168(%rax), %edx
	leaq	.L.str.12(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	movq	-16(%rbp), %rax
	cmpl	$0, 172(%rax)
	je	.LBB0_24
# %bb.23:
	movq	-8(%rbp), %rdi
	leaq	.L.str.13(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	172(%rax), %esi
	callq	a2s_declinit@PLT
	movq	-8(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_24:
	jmp	.LBB0_93
.LBB0_25:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	168(%rax), %edx
	leaq	.L.str.15(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_26:
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ty2s@PLT
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	cmpl	$173, (%rax)
	jne	.LBB0_28
# %bb.27:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	jmp	.LBB0_29
.LBB0_28:
	movq	-16(%rbp), %rdi
	callq	node2s@PLT
	movq	%rax, -104(%rbp)                # 8-byte Spill
.LBB0_29:
	movq	-88(%rbp), %rdx                 # 8-byte Reload
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movq	-104(%rbp), %rcx                # 8-byte Reload
	leaq	.L.str.16(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	movl	$0, -20(%rbp)
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -108(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	164(%rax), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-108(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_35
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_30 Depth=1
	movq	-8(%rbp), %rdi
	leaq	.L.str.17(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_33:                               #   in Loop: Header=BB0_30 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	164(%rax), %edi
	movl	-20(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, %rdi
	callq	node2s@PLT
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.18(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
# %bb.34:                               #   in Loop: Header=BB0_30 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_30
.LBB0_35:
	movq	-8(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_36:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.L.str.19(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_37:
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ty2s@PLT
	movq	-128(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	.L.str.16(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	movl	$0, -24(%rbp)
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -132(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	160(%rax), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-132(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_43
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=1
	cmpl	$0, -24(%rbp)
	jle	.LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-8(%rbp), %rdi
	leaq	.L.str.17(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_41:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-16(%rbp), %rax
	movl	160(%rax), %edi
	movl	-24(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ty2s@PLT
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	node2s@PLT
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	leaq	.L.str.20(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
# %bb.42:                               #   in Loop: Header=BB0_38 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_38
.LBB0_43:
	movq	-8(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	152(%rax), %rsi
	callq	do_node2s
	jmp	.LBB0_93
.LBB0_44:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	leaq	.L.str.21(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_45:
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	8(%rax), %rdi
	callq	ty2s@PLT
	movq	-160(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rcx
	leaq	.L.str.22(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	movq	-16(%rbp), %rax
	cmpl	$0, 136(%rax)
	je	.LBB0_47
# %bb.46:
	movq	-8(%rbp), %rdi
	leaq	.L.str.23(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	136(%rax), %esi
	callq	a2s_declinit@PLT
.LBB0_47:
	movq	-8(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_48:
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	node2s@PLT
	movq	%rax, -176(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, -164(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	ty2s@PLT
	movq	-184(%rbp), %rdi                # 8-byte Reload
	movq	-176(%rbp), %rdx                # 8-byte Reload
	movl	-164(%rbp), %ecx                # 4-byte Reload
	movq	%rax, %r8
	leaq	.L.str.24(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_49:
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	node2s@PLT
	movq	%rax, -192(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ty2s@PLT
	movq	-200(%rbp), %rdi                # 8-byte Reload
	movq	-192(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	leaq	.L.str.25(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_50:
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	node2s@PLT
	movq	%rax, -208(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	node2s@PLT
	movq	-216(%rbp), %rdi                # 8-byte Reload
	movq	-208(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	leaq	.L.str.26(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB0_52
# %bb.51:
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	node2s@PLT
	movq	-224(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.27(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_52:
	movq	-8(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_53:
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	node2s@PLT
	movq	%rax, -240(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	node2s@PLT
	movq	%rax, -232(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	node2s@PLT
	movq	-248(%rbp), %rdi                # 8-byte Reload
	movq	-240(%rbp), %rdx                # 8-byte Reload
	movq	-232(%rbp), %rcx                # 8-byte Reload
	movq	%rax, %r8
	leaq	.L.str.28(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_54:
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	node2s@PLT
	movq	-256(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str.29(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_55:
	movq	-8(%rbp), %rdi
	leaq	.L.str.30(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	movl	$0, -36(%rbp)
.LBB0_56:                               # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -260(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	72(%rax), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-260(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_59
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -272(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	72(%rax), %edi
	movl	-36(%rbp), %esi
	callq	vec_get@PLT
	movq	-272(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	do_node2s
	movq	-8(%rbp), %rdi
	leaq	.L.str.31(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
# %bb.58:                               #   in Loop: Header=BB0_56 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_56
.LBB0_59:
	movq	-8(%rbp), %rdi
	leaq	.L.str.32(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_60:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	64(%rax), %rsi
	callq	do_node2s
	movq	-8(%rbp), %rdi
	leaq	.L.str.33(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	56(%rax), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_61:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.34(%rip), %rsi
	callq	uop_to_string@PLT
	jmp	.LBB0_93
.LBB0_62:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.35(%rip), %rsi
	callq	uop_to_string@PLT
	jmp	.LBB0_93
.LBB0_63:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.36(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_64:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.37(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_65:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.38(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_66:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.39(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_67:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.40(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_68:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.41(%rip), %rsi
	callq	uop_to_string@PLT
	jmp	.LBB0_93
.LBB0_69:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.42(%rip), %rsi
	callq	uop_to_string@PLT
	jmp	.LBB0_93
.LBB0_70:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.43(%rip), %rsi
	callq	uop_to_string@PLT
	jmp	.LBB0_93
.LBB0_71:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.44(%rip), %rsi
	callq	uop_to_string@PLT
	jmp	.LBB0_93
.LBB0_72:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.45(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_73:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.46(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_74:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.47(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_75:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.48(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_76:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.49(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_77:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.50(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_78:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.51(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_79:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.52(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_80:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.53(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_81:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.54(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_82:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.55(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_83:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.56(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_84:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.57(%rip), %rsi
	callq	uop_to_string@PLT
	jmp	.LBB0_93
.LBB0_85:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.58(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_86:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	leaq	.L.str.59(%rip), %rsi
	callq	binop_to_string@PLT
	jmp	.LBB0_93
.LBB0_87:
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	48(%rax), %rdi
	callq	ty2s@PLT
	movq	%rax, -288(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ty2s@PLT
	movq	%rax, -280(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	node2s@PLT
	movq	-296(%rbp), %rdi                # 8-byte Reload
	movq	-288(%rbp), %rdx                # 8-byte Reload
	movq	-280(%rbp), %rcx                # 8-byte Reload
	movq	%rax, %r8
	leaq	.L.str.60(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_88:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	leaq	.L.str.61(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_93
.LBB0_89:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	node2s@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	node2s@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	OP_EQ(%rip), %eax
	jne	.LBB0_91
# %bb.90:
	movq	-8(%rbp), %rdi
	leaq	.L.str.62(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
	jmp	.LBB0_92
.LBB0_91:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	leaq	.L.str.63(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_92:
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	.L.str.64(%rip), %rsi
	movb	$0, %al
	callq	buf_printf@PLT
.LBB0_93:
	addq	$304, %rsp                      # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_84-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_85-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_86-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_64-.LJTI0_0
	.long	.LBB0_64-.LJTI0_0
	.long	.LBB0_63-.LJTI0_0
	.long	.LBB0_68-.LJTI0_0
	.long	.LBB0_69-.LJTI0_0
	.long	.LBB0_70-.LJTI0_0
	.long	.LBB0_71-.LJTI0_0
	.long	.LBB0_67-.LJTI0_0
	.long	.LBB0_73-.LJTI0_0
	.long	.LBB0_72-.LJTI0_0
	.long	.LBB0_66-.LJTI0_0
	.long	.LBB0_88-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_87-.LJTI0_0
	.long	.LBB0_81-.LJTI0_0
	.long	.LBB0_75-.LJTI0_0
	.long	.LBB0_83-.LJTI0_0
	.long	.LBB0_83-.LJTI0_0
	.long	.LBB0_82-.LJTI0_0
	.long	.LBB0_80-.LJTI0_0
	.long	.LBB0_76-.LJTI0_0
	.long	.LBB0_78-.LJTI0_0
	.long	.LBB0_77-.LJTI0_0
	.long	.LBB0_79-.LJTI0_0
	.long	.LBB0_74-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_89-.LJTI0_0
	.long	.LBB0_53-.LJTI0_0
	.long	.LBB0_60-.LJTI0_0
	.long	.LBB0_54-.LJTI0_0
	.long	.LBB0_22-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_21-.LJTI0_0
	.long	.LBB0_48-.LJTI0_0
	.long	.LBB0_50-.LJTI0_0
	.long	.LBB0_25-.LJTI0_0
	.long	.LBB0_44-.LJTI0_0
	.long	.LBB0_26-.LJTI0_0
	.long	.LBB0_36-.LJTI0_0
	.long	.LBB0_26-.LJTI0_0
	.long	.LBB0_37-.LJTI0_0
	.long	.LBB0_62-.LJTI0_0
	.long	.LBB0_45-.LJTI0_0
	.long	.LBB0_49-.LJTI0_0
	.long	.LBB0_55-.LJTI0_0
	.long	.LBB0_61-.LJTI0_0
.LJTI0_1:
	.long	.LBB0_15-.LJTI0_1
	.long	.LBB0_16-.LJTI0_1
	.long	.LBB0_17-.LJTI0_1
	.long	.LBB0_14-.LJTI0_1
	.long	.LBB0_17-.LJTI0_1
	.long	.LBB0_17-.LJTI0_1
	.long	.LBB0_4-.LJTI0_1
	.long	.LBB0_18-.LJTI0_1
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(nil)"
.L.str.1:
	.asciz	"'\n'"
.L.str.2:
	.asciz	"'\\\\'"
.L.str.3:
	.asciz	"'\\0'"
.L.str.4:
	.asciz	"'%c'"
.L.str.5:
	.asciz	"%d"
.L.str.6:
	.asciz	"%ldL"
.L.str.7:
	.asciz	"%lldL"
.L.str.8:
	.asciz	"%f"
.L.str.9:
	.asciz	"\"%s\""
.L.str.10:
	.asciz	"internal error"
.L.str.11:
	.asciz	"%s:"
.L.str.12:
	.asciz	"lv=%s"
.L.str.13:
	.asciz	"("
.L.str.14:
	.asciz	")"
.L.str.15:
	.asciz	"gv=%s"
.L.str.16:
	.asciz	"(%s)%s("
.L.str.17:
	.asciz	","
.L.str.18:
	.asciz	"%s"
.L.str.19:
	.asciz	"(funcdesg %s)"
.L.str.20:
	.asciz	"%s %s"
.L.str.21:
	.asciz	"goto(%s)"
.L.str.22:
	.asciz	"(decl %s %s"
.L.str.23:
	.asciz	" "
.L.str.24:
	.asciz	"%s@%d"
.L.str.25:
	.asciz	"(conv %s=>%s)"
.L.str.26:
	.asciz	"(if %s %s"
.L.str.27:
	.asciz	" %s"
.L.str.28:
	.asciz	"(? %s %s %s)"
.L.str.29:
	.asciz	"(return %s)"
.L.str.30:
	.asciz	"{"
.L.str.31:
	.asciz	";"
.L.str.32:
	.asciz	"}"
.L.str.33:
	.asciz	"."
.L.str.34:
	.asciz	"addr"
.L.str.35:
	.asciz	"deref"
.L.str.36:
	.asciz	"<<"
.L.str.37:
	.asciz	">>"
.L.str.38:
	.asciz	">="
.L.str.39:
	.asciz	"<="
.L.str.40:
	.asciz	"!="
.L.str.41:
	.asciz	"pre++"
.L.str.42:
	.asciz	"pre--"
.L.str.43:
	.asciz	"post++"
.L.str.44:
	.asciz	"post--"
.L.str.45:
	.asciz	"and"
.L.str.46:
	.asciz	"or"
.L.str.47:
	.asciz	"+="
.L.str.48:
	.asciz	"-="
.L.str.49:
	.asciz	"*="
.L.str.50:
	.asciz	"/="
.L.str.51:
	.asciz	"%="
.L.str.52:
	.asciz	"&="
.L.str.53:
	.asciz	"|="
.L.str.54:
	.asciz	"^="
.L.str.55:
	.asciz	"<<="
.L.str.56:
	.asciz	">>="
.L.str.57:
	.asciz	"!"
.L.str.58:
	.asciz	"&"
.L.str.59:
	.asciz	"|"
.L.str.60:
	.asciz	"((%s)=>(%s) %s)"
.L.str.61:
	.asciz	"&&%s"
	.section	.rodata,"a",@progbits
	.globl	OP_EQ
	.p2align	2
OP_EQ:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"(== "
.L.str.63:
	.asciz	"(%c "
.L.str.64:
	.asciz	"%s %s)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_node2s
	.addrsig_sym buf_printf
	.addrsig_sym quote_cstring
	.addrsig_sym error
	.addrsig_sym a2s_declinit
	.addrsig_sym ty2s
	.addrsig_sym node2s
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym uop_to_string
	.addrsig_sym binop_to_string
	.addrsig_sym OP_EQ