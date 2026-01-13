	.text
	.p2align	4, 0x90                         # -- Begin function compile
compile:                                # @compile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$336, %rsp                      # imm = 0x150
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	leaq	-16(%rbp), %rdi
	callq	expand_call_arglist@PLT
	movq	%rax, %rcx
	movslq	-52(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -52(%rbp)
	movl	RET(%rip), %edi
	callq	gen_op_simple@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	BLOCK@PLT
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	jv_array@PLT
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	cmpq	$0, -96(%rbp)
	je	.LBB0_21
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	opcode_describe@PLT
	movl	(%rax), %eax
	movl	%eax, -100(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CALL_JQ(%rip), %rax
	jne	.LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -112(%rbp)
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movl	-100(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -100(%rbp)
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=2
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB0_6
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-100(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, 96(%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	CLOSURE_REF(%rip), %rcx
	movb	%al, -225(%rbp)                 # 1-byte Spill
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_PARAM(%rip), %rax
	setne	%al
	movb	%al, -225(%rbp)                 # 1-byte Spill
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-225(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	opcode_describe@PLT
	movl	4(%rax), %eax
	andl	OP_HAS_VARIABLE(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-60(%rbp), %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-96(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-88(%rbp), %rax
	movq	%rax, -240(%rbp)                # 8-byte Spill
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_string@PLT
	movq	-240(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	jv_array_append@PLT
	movq	%rax, -88(%rbp)
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_CREATE(%rip), %rax
	jne	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-96(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	%ecx, 24(%rax)
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_CREATE_C(%rip), %rax
	jne	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-96(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rcx
	movl	16(%rcx), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, 16(%rcx)
	movl	%eax, -116(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)                # 8-byte Spill
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_string@PLT
	movq	-248(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	jv_array_append@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rcx, 8(%rax)
	movq	-96(%rbp), %rax
	movq	48(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	(%rax), %rax
	movslq	-116(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-116(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, 24(%rax)
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB0_1
.LBB0_21:
	cmpl	$65535, -56(%rbp)               # imm = 0xFFFF
	jle	.LBB0_23
# %bb.22:
	movq	-32(%rbp), %rdi
	movl	UNKNOWN_LOCATION(%rip), %esi
	movl	-56(%rbp), %ecx
	leaq	.L.str(%rip), %rdx
	callq	locfile_locate@PLT
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB0_23:
	movl	-56(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -256(%rbp)                # 8-byte Spill
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movq	-256(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	movq	-88(%rbp), %rdx
	callq	jv_object_set@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_35
# %bb.24:
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movl	$8, %edi
	callq	jv_mem_calloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB0_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
	cmpq	$0, -128(%rbp)
	je	.LBB0_34
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_CREATE(%rip), %rax
	jne	.LBB0_32
# %bb.27:                               #   in Loop: Header=BB0_25 Depth=1
	movl	$72, %edi
	callq	jv_mem_alloc@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-128(%rbp), %rcx
	movslq	24(%rcx), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, 64(%rax)
	movq	-24(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, 56(%rax)
	movq	-136(%rbp), %rax
	movq	$0, 48(%rax)
	movb	$0, %al
	callq	jv_object@PLT
	movq	%rax, -272(%rbp)                # 8-byte Spill
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, -264(%rbp)                # 8-byte Spill
	movq	-128(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_string@PLT
	movq	-272(%rbp), %rdi                # 8-byte Reload
	movq	-264(%rbp), %rsi                # 8-byte Reload
	movq	%rax, %rdx
	callq	jv_object_set@PLT
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, 40(%rax)
	movb	$0, %al
	callq	jv_array@PLT
	movq	%rax, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -152(%rbp)
.LBB0_28:                               #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -152(%rbp)
	je	.LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=2
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_PARAM(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-152(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-152(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-136(%rbp), %rcx
	movq	48(%rcx), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, 48(%rcx)
	movl	%eax, %ecx
	movq	-152(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-136(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, 96(%rax)
	movq	-144(%rbp), %rax
	movq	%rax, -280(%rbp)                # 8-byte Spill
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_string@PLT
	movq	-280(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	jv_array_append@PLT
	movq	%rax, -144(%rbp)
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=2
	movq	-152(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB0_28
.LBB0_31:                               #   in Loop: Header=BB0_25 Depth=1
	movq	-136(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -296(%rbp)                # 8-byte Spill
	leaq	.L.str.3(%rip), %rdi
	callq	jv_string@PLT
	movq	-296(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	movq	-144(%rbp), %rdx
	callq	jv_object_set@PLT
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-136(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	80(%rax), %rsi
	movq	88(%rax), %rdx
	callq	compile
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -288(%rbp)                # 8-byte Spill
	movb	$0, %al
	callq	gen_noop@PLT
	movq	%rax, %rcx
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	%rcx, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	-168(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movq	-160(%rbp), %rcx
	movq	%rcx, 88(%rax)
.LBB0_32:                               #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_25 Depth=1
	movq	-128(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB0_25
.LBB0_34:
	jmp	.LBB0_36
.LBB0_35:
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
.LBB0_36:
	movq	-24(%rbp), %rax
	movl	4(%rax), %esi
	movl	$4, %edi
	callq	jv_mem_calloc@PLT
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	$0, -56(%rbp)
	movb	$0, %al
	callq	jv_array@PLT
	movq	%rax, -184(%rbp)
	movl	$-1, -188(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB0_80
# %bb.37:
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)
.LBB0_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	cmpq	$0, -200(%rbp)
	je	.LBB0_79
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-200(%rbp), %rax
	movq	(%rax), %rdi
	callq	opcode_describe@PLT
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_78
.LBB0_41:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-200(%rbp), %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	CLOSURE_REF(%rip), %rcx
	movb	%al, -297(%rbp)                 # 1-byte Spill
	je	.LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_PARAM(%rip), %rax
	setne	%al
	movb	%al, -297(%rbp)                 # 1-byte Spill
.LBB0_43:                               #   in Loop: Header=BB0_38 Depth=1
	movb	-297(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CALL_BUILTIN(%rip), %rax
	jne	.LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_CREATE_C(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-200(%rbp), %rax
	cmpq	$0, 72(%rax)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-200(%rbp), %rax
	movl	24(%rax), %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movl	24(%rax), %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_77
.LBB0_45:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CALL_JQ(%rip), %rax
	jne	.LBB0_58
# %bb.46:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rcx
	movb	$1, %al
	cmpq	CLOSURE_CREATE(%rip), %rcx
	movb	%al, -298(%rbp)                 # 1-byte Spill
	je	.LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_PARAM(%rip), %rax
	sete	%al
	movb	%al, -298(%rbp)                 # 1-byte Spill
.LBB0_48:                               #   in Loop: Header=BB0_38 Depth=1
	movb	-298(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-200(%rbp), %rax
	movl	24(%rax), %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-24(%rbp), %rdi
	movq	-200(%rbp), %rax
	movq	56(%rax), %rsi
	callq	nesting_level@PLT
	movl	%eax, %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movl	24(%rax), %eax
	movl	%eax, -304(%rbp)                # 4-byte Spill
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_CREATE(%rip), %rax
	jne	.LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_38 Depth=1
	movl	ARG_NEWCLOSURE(%rip), %eax
	movl	%eax, -308(%rbp)                # 4-byte Spill
	jmp	.LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_38 Depth=1
	xorl	%eax, %eax
	movl	%eax, -308(%rbp)                # 4-byte Spill
	jmp	.LBB0_51
.LBB0_51:                               #   in Loop: Header=BB0_38 Depth=1
	movl	-304(%rbp), %edx                # 4-byte Reload
	movl	-308(%rbp), %eax                # 4-byte Reload
	orl	%eax, %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-200(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -216(%rbp)
.LBB0_52:                               #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -216(%rbp)
	je	.LBB0_57
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=2
	movq	-216(%rbp), %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	CLOSURE_REF(%rip), %rcx
	movb	%al, -309(%rbp)                 # 1-byte Spill
	jne	.LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_52 Depth=2
	movq	-216(%rbp), %rax
	movq	56(%rax), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_CREATE(%rip), %rax
	sete	%al
	movb	%al, -309(%rbp)                 # 1-byte Spill
.LBB0_55:                               #   in Loop: Header=BB0_52 Depth=2
	movb	-309(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	movq	-216(%rbp), %rax
	movq	56(%rax), %rsi
	callq	nesting_level@PLT
	movl	%eax, %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-216(%rbp), %rax
	movq	56(%rax), %rax
	movl	24(%rax), %edx
	orl	ARG_NEWCLOSURE(%rip), %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.56:                               #   in Loop: Header=BB0_52 Depth=2
	movq	-216(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB0_52
.LBB0_57:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_76
.LBB0_58:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-208(%rbp), %rax
	movl	4(%rax), %eax
	andl	OP_HAS_CONSTANT(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_61
# %bb.59:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-208(%rbp), %rax
	movl	4(%rax), %eax
	andl	OP_HAS_VARIABLE(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-184(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, %rdi
	callq	jv_array_length@PLT
	movl	%eax, %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-184(%rbp), %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	movq	-200(%rbp), %rax
	movq	40(%rax), %rdi
	callq	jv_copy@PLT
	movq	-320(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	jv_array_append@PLT
	movq	%rax, -184(%rbp)
	movq	-24(%rbp), %rdi
	movq	-200(%rbp), %rax
	movq	56(%rax), %rsi
	callq	nesting_level@PLT
	movl	%eax, %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movl	24(%rax), %eax
	movl	%eax, -220(%rbp)
	movl	-220(%rbp), %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_75
.LBB0_61:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-208(%rbp), %rax
	movl	4(%rax), %eax
	andl	OP_HAS_CONSTANT(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-184(%rbp), %rdi
	callq	jv_copy@PLT
	movq	%rax, %rdi
	callq	jv_array_length@PLT
	movl	%eax, %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-184(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	movq	-200(%rbp), %rax
	movq	40(%rax), %rdi
	callq	jv_copy@PLT
	movq	-328(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	jv_array_append@PLT
	movq	%rax, -184(%rbp)
	jmp	.LBB0_74
.LBB0_63:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-208(%rbp), %rax
	movl	4(%rax), %eax
	andl	OP_HAS_VARIABLE(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_67
# %bb.64:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-24(%rbp), %rdi
	movq	-200(%rbp), %rax
	movq	56(%rax), %rsi
	callq	nesting_level@PLT
	movl	%eax, %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movl	24(%rax), %eax
	movl	%eax, -224(%rbp)
	movl	-224(%rbp), %edx
	movq	-176(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-224(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jle	.LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_38 Depth=1
	movl	-224(%rbp), %eax
	movl	%eax, -188(%rbp)
.LBB0_66:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_73
.LBB0_67:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-208(%rbp), %rax
	movl	4(%rax), %eax
	andl	OP_HAS_BRANCH(%rip), %eax
	cmpl	$0, %eax
	je	.LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$-1, (%rax)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %eax
	cmpl	-56(%rbp), %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-200(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %edx
	movl	-56(%rbp), %eax
	addl	$1, %eax
	subl	%eax, %edx
	movq	-176(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_72
.LBB0_69:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-208(%rbp), %rax
	cmpl	$1, (%rax)
	jle	.LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_38 Depth=1
	xorl	%edi, %edi
	callq	assert@PLT
.LBB0_71:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_72
.LBB0_72:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_73
.LBB0_73:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_74
.LBB0_74:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_75
.LBB0_75:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_76
.LBB0_76:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_77
.LBB0_77:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_78
.LBB0_78:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB0_38
.LBB0_79:
	jmp	.LBB0_80
.LBB0_80:
	movq	-184(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 24(%rax)
	movl	-188(%rbp), %ecx
	addl	$2, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	block_free@PLT
	movl	-52(%rbp), %eax
	addq	$336, %rsp                      # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	RET
	.p2align	2
RET:
	.long	0                               # 0x0
	.globl	CALL_JQ
	.p2align	3
CALL_JQ:
	.quad	0                               # 0x0
	.globl	CLOSURE_REF
	.p2align	3
CLOSURE_REF:
	.quad	0                               # 0x0
	.globl	CLOSURE_PARAM
	.p2align	3
CLOSURE_PARAM:
	.quad	0                               # 0x0
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.long	0                               # 0x0
	.globl	CLOSURE_CREATE
	.p2align	3
CLOSURE_CREATE:
	.quad	0                               # 0x0
	.globl	CLOSURE_CREATE_C
	.p2align	3
CLOSURE_CREATE_C:
	.quad	0                               # 0x0
	.globl	UNKNOWN_LOCATION
	.p2align	2
UNKNOWN_LOCATION:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"function compiled to %d bytes which is too long"
.L.str.1:
	.asciz	"locals"
.L.str.2:
	.asciz	"name"
.L.str.3:
	.asciz	"params"
	.bss
	.globl	CALL_BUILTIN
	.p2align	3
CALL_BUILTIN:
	.quad	0                               # 0x0
	.globl	ARG_NEWCLOSURE
	.p2align	2
ARG_NEWCLOSURE:
	.long	0                               # 0x0
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.long	0                               # 0x0
	.globl	OP_HAS_BRANCH
	.p2align	2
OP_HAS_BRANCH:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym compile
	.addrsig_sym expand_call_arglist
	.addrsig_sym BLOCK
	.addrsig_sym gen_op_simple
	.addrsig_sym jv_array
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym jv_array_append
	.addrsig_sym jv_string
	.addrsig_sym locfile_locate
	.addrsig_sym jv_object_set
	.addrsig_sym jv_mem_calloc
	.addrsig_sym jv_mem_alloc
	.addrsig_sym jv_object
	.addrsig_sym gen_noop
	.addrsig_sym nesting_level
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym block_free
	.addrsig_sym RET
	.addrsig_sym CALL_JQ
	.addrsig_sym CLOSURE_REF
	.addrsig_sym CLOSURE_PARAM
	.addrsig_sym OP_HAS_VARIABLE
	.addrsig_sym CLOSURE_CREATE
	.addrsig_sym CLOSURE_CREATE_C
	.addrsig_sym UNKNOWN_LOCATION
	.addrsig_sym CALL_BUILTIN
	.addrsig_sym ARG_NEWCLOSURE
	.addrsig_sym OP_HAS_CONSTANT
	.addrsig_sym OP_HAS_BRANCH