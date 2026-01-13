	.text
	.p2align	4, 0x90                         # -- Begin function process_dependencies
process_dependencies:                   # @process_dependencies
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	block_take_imports@PLT
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	-44(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, -56(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
	cmpl	$0, -56(%rbp)
	jle	.LBB0_31
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movl	-44(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-56(%rbp), %esi
	callq	jv_array_get@PLT
	movl	%eax, -60(%rbp)
	movq	$0, -72(%rbp)
	movl	-60(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -132(%rbp)                # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	-132(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	callq	jv_object_get@PLT
	movl	%eax, %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_TRUE(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	-60(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -128(%rbp)                # 4-byte Spill
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	-128(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	callq	jv_object_get@PLT
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_TRUE(%rip), %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -80(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -88(%rbp)
	movl	-60(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -136(%rbp)                # 4-byte Spill
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movl	-136(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	callq	jv_object_get@PLT
	movl	%eax, %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_TRUE(%rip), %rax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -88(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-84(%rbp), %edi
	callq	jv_free@PLT
	movl	-60(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -148(%rbp)                # 4-byte Spill
	leaq	.L.str.3(%rip), %rdi
	callq	jv_string@PLT
	movl	-148(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	callq	jv_object_get@PLT
	movl	%eax, %edi
	callq	validate_relpath@PLT
	movl	%eax, -92(%rbp)
	movl	-60(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -144(%rbp)                # 4-byte Spill
	leaq	.L.str.4(%rip), %rdi
	callq	jv_string@PLT
	movl	-144(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	callq	jv_object_get@PLT
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %edi
	callq	jv_is_valid@PLT
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -137(%rbp)                 # 1-byte Spill
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-96(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	sete	%al
	movb	%al, -137(%rbp)                 # 1-byte Spill
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-137(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-96(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-96(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -72(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	movl	-60(%rbp), %eax
	movl	%eax, -188(%rbp)                # 4-byte Spill
	leaq	.L.str.5(%rip), %rdi
	callq	jv_string@PLT
	movl	-188(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	callq	jv_object_get@PLT
	movq	-184(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	callq	default_search@PLT
	movl	%eax, -100(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	movl	-92(%rbp), %eax
	movl	%eax, -168(%rbp)                # 4-byte Spill
	movl	-100(%rbp), %eax
	movl	%eax, -164(%rbp)                # 4-byte Spill
	movl	-76(%rbp), %edx
	leaq	.L.str.7(%rip), %rax
	leaq	.L.str.6(%rip), %rcx
	cmpl	$0, %edx
	cmovneq	%rcx, %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movl	-20(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -152(%rbp)                # 4-byte Spill
	movl	-24(%rbp), %edi
	callq	jv_copy@PLT
	movq	-176(%rbp), %rdi                # 8-byte Reload
	movl	-168(%rbp), %esi                # 4-byte Reload
	movl	-164(%rbp), %edx                # 4-byte Reload
	movq	-160(%rbp), %rcx                # 8-byte Reload
	movl	-152(%rbp), %r8d                # 4-byte Reload
	movl	%eax, %r9d
	callq	find_lib@PLT
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-96(%rbp), %edi
	callq	jv_free@PLT
	cmpl	$0, -88(%rbp)
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-104(%rbp), %edi
	callq	jv_free@PLT
	jmp	.LBB0_1
.LBB0_13:
	movl	-104(%rbp), %edi
	callq	jv_invalid_get_msg@PLT
	movl	%eax, -108(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)                # 8-byte Spill
	movl	-108(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, %rsi
	leaq	.L.str.8(%rip), %rdi
	callq	jv_string_fmt@PLT
	movq	-200(%rbp), %rdi                # 8-byte Reload
	movl	%eax, %esi
	callq	jq_report_error@PLT
	movl	-108(%rbp), %edi
	callq	jv_free@PLT
	movl	-44(%rbp), %edi
	callq	jv_free@PLT
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_32
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-104(%rbp), %esi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movq	-72(%rbp), %r9
	movq	-40(%rbp), %rax
	leaq	-112(%rbp), %r10
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	load_library@PLT
	movq	%rax, %rcx
	movslq	-52(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-112(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	OP_IS_CALL_PSEUDO(%rip), %edx
	movq	-72(%rbp), %rcx
	callq	block_bind_library@PLT
	movl	%eax, -48(%rbp)
	movl	-112(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	OP_IS_CALL_PSEUDO(%rip), %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	block_bind_library@PLT
	movl	%eax, -48(%rbp)
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_30
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movq	$0, -120(%rbp)
.LBB0_19:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=2
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-120(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -204(%rbp)                # 4-byte Spill
	movl	-104(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-204(%rbp), %edi                # 4-byte Reload
	movq	%rax, %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=2
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_19 Depth=2
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB0_19
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-120(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-104(%rbp), %edi
	callq	jv_free@PLT
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-120(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	movl	-48(%rbp), %esi
	movl	OP_IS_CALL_PSEUDO(%rip), %edx
	movq	-72(%rbp), %rcx
	callq	block_bind_library@PLT
	movl	%eax, -48(%rbp)
	jmp	.LBB0_29
.LBB0_26:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	gen_noop@PLT
	movl	%eax, -124(%rbp)
	movq	-16(%rbp), %rdi
	movl	-104(%rbp), %esi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movq	-72(%rbp), %r9
	movq	-40(%rbp), %rax
	leaq	-124(%rbp), %r10
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	load_library@PLT
	movq	%rax, %rcx
	movslq	-52(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-124(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	OP_IS_CALL_PSEUDO(%rip), %edx
	movq	-72(%rbp), %rcx
	callq	block_bind_library@PLT
	movl	%eax, -48(%rbp)
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-96(%rbp), %edi
	callq	jv_free@PLT
	jmp	.LBB0_1
.LBB0_31:
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-44(%rbp), %edi
	callq	jv_free@PLT
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_32:
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"is_data"
	.bss
	.globl	JV_KIND_TRUE
	.p2align	3
JV_KIND_TRUE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"raw"
.L.str.2:
	.asciz	"optional"
.L.str.3:
	.asciz	"relpath"
.L.str.4:
	.asciz	"as"
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"search"
.L.str.6:
	.asciz	".json"
.L.str.7:
	.asciz	".jq"
.L.str.8:
	.asciz	"jq: error: %s\n"
	.bss
	.globl	OP_IS_CALL_PSEUDO
	.p2align	2
OP_IS_CALL_PSEUDO:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym process_dependencies
	.addrsig_sym block_take_imports
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_get
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_object_get
	.addrsig_sym jv_string
	.addrsig_sym jv_free
	.addrsig_sym validate_relpath
	.addrsig_sym assert
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_string_value
	.addrsig_sym default_search
	.addrsig_sym find_lib
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jq_report_error
	.addrsig_sym jv_string_fmt
	.addrsig_sym load_library
	.addrsig_sym block_bind_library
	.addrsig_sym strcmp
	.addrsig_sym gen_noop
	.addrsig_sym JV_KIND_TRUE
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym OP_IS_CALL_PSEUDO