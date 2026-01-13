	.text
	.p2align	4, 0x90                         # -- Begin function load_library
load_library:                           # @load_library
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB0_3
# %bb.1:
	cmpl	$0, -20(%rbp)
	jne	.LBB0_3
# %bb.2:
	movl	-12(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	jv_load_file@PLT
	movl	%eax, -60(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movl	-12(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, %edi
	movl	$1, %esi
	callq	jv_load_file@PLT
	movl	%eax, -60(%rbp)
.LBB0_4:
	movl	-60(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_11
# %bb.5:
	movb	$0, %al
	callq	gen_noop@PLT
	movq	%rax, -56(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB0_10
# %bb.6:
	movl	-60(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_has_msg@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:
	movl	-60(%rbp), %edi
	callq	jv_invalid_get_msg@PLT
	movl	%eax, -60(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, -60(%rbp)
.LBB0_9:
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movl	-60(%rbp), %edi
	callq	jv_string_value@PLT
	movl	-84(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string_fmt@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	jq_report_error@PLT
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB0_10:
	jmp	.LBB0_18
.LBB0_11:
	cmpl	$0, -16(%rbp)
	je	.LBB0_13
# %bb.12:
	movl	-60(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movq	-32(%rbp), %rsi
	callq	gen_const_global@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB0_16
.LBB0_13:
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movl	-12(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movl	-60(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	movl	-60(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movl	-92(%rbp), %esi                 # 4-byte Reload
	movl	-88(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	callq	locfile_init@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	jq_parse_library@PLT
	movq	%rax, %rcx
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rdi
	callq	locfile_free@PLT
	cmpl	$0, -36(%rbp)
	jne	.LBB0_15
# %bb.14:
	movl	-12(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, %edi
	callq	strdup@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	jq_get_jq_origin@PLT
	movl	%eax, -108(%rbp)                # 4-byte Spill
	movq	-72(%rbp), %rdi
	callq	dirname@PLT
	movq	%rax, %rdi
	callq	jv_string@PLT
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movl	-108(%rbp), %esi                # 4-byte Reload
	movl	%eax, %edx
	movq	24(%rbp), %r8
	leaq	-56(%rbp), %rcx
	callq	process_dependencies@PLT
	movq	%rax, %rcx
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rdi
	callq	free@PLT
	movq	-56(%rbp), %rdi
	movl	OP_IS_CALL_PSEUDO(%rip), %esi
	callq	block_bind_self@PLT
	movq	%rax, -56(%rbp)
.LBB0_15:
	jmp	.LBB0_16
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:
	movq	24(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	movl	%eax, -64(%rbp)
	movq	24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	24(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$3, %rax
	movl	%eax, %esi
	callq	jv_mem_realloc@PLT
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	24(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$3, %rax
	movl	%eax, %esi
	callq	jv_mem_realloc@PLT
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-12(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, %edi
	callq	strdup@PLT
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-64(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-56(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-64(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
.LBB0_18:
	movq	-56(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movl	-60(%rbp), %edi
	callq	jv_free@PLT
	movl	-36(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unknown error"
.L.str.1:
	.asciz	"jq: error loading data file %s: %s\n"
	.bss
	.globl	OP_IS_CALL_PSEUDO
	.p2align	2
OP_IS_CALL_PSEUDO:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_library
	.addrsig_sym jv_load_file
	.addrsig_sym jv_string_value
	.addrsig_sym jv_is_valid
	.addrsig_sym gen_noop
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jv_string
	.addrsig_sym jq_report_error
	.addrsig_sym jv_string_fmt
	.addrsig_sym gen_const_global
	.addrsig_sym locfile_init
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jq_parse_library
	.addrsig_sym locfile_free
	.addrsig_sym strdup
	.addrsig_sym process_dependencies
	.addrsig_sym jq_get_jq_origin
	.addrsig_sym dirname
	.addrsig_sym free
	.addrsig_sym block_bind_self
	.addrsig_sym jv_mem_realloc
	.addrsig_sym jv_free
	.addrsig_sym OP_IS_CALL_PSEUDO