	.text
	.globl	load_module_meta                # -- Begin function load_module_meta
	.p2align	4, 0x90
load_module_meta:                       # @load_module_meta
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movl	-20(%rbp), %edi
	callq	validate_relpath@PLT
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	jq_get_lib_dirs@PLT
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	jq_get_jq_origin@PLT
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	jv_null@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movl	-64(%rbp), %esi                 # 4-byte Reload
	movl	-60(%rbp), %edx                 # 4-byte Reload
	movl	-56(%rbp), %r8d                 # 4-byte Reload
	movl	%eax, %r9d
	leaq	.L.str(%rip), %rcx
	callq	find_lib@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, %edi
	movl	$1, %esi
	callq	jv_load_file@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.3:
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movl	-24(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movl	-32(%rbp), %edi
	callq	jv_string_value@PLT
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movl	-32(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_string_length_bytes@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	-80(%rbp), %esi                 # 4-byte Reload
	movl	-76(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	callq	locfile_init@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	leaq	-36(%rbp), %rsi
	callq	jq_parse_library@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB0_7
# %bb.4:
	movl	-36(%rbp), %edi
	callq	block_module_meta@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	movb	$0, %al
	callq	jv_object@PLT
	movl	%eax, -28(%rbp)
.LBB0_6:
	movl	-28(%rbp), %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	leaq	-36(%rbp), %rdi
	callq	block_take_imports@PLT
	movl	-96(%rbp), %edi                 # 4-byte Reload
	movl	-92(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jv_object_set@PLT
	movl	%eax, -28(%rbp)
.LBB0_7:
	movq	-48(%rbp), %rdi
	callq	locfile_free@PLT
	movl	-36(%rbp), %edi
	callq	block_free@PLT
.LBB0_8:
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	movl	-32(%rbp), %edi
	callq	jv_free@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".jq"
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"deps"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_lib
	.addrsig_sym validate_relpath
	.addrsig_sym jq_get_lib_dirs
	.addrsig_sym jq_get_jq_origin
	.addrsig_sym jv_null
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_load_file
	.addrsig_sym jv_string_value
	.addrsig_sym locfile_init
	.addrsig_sym jv_string_length_bytes
	.addrsig_sym jv_copy
	.addrsig_sym jq_parse_library
	.addrsig_sym block_module_meta
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_object
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string
	.addrsig_sym block_take_imports
	.addrsig_sym locfile_free
	.addrsig_sym block_free
	.addrsig_sym jv_free
	.addrsig_sym JV_KIND_NULL