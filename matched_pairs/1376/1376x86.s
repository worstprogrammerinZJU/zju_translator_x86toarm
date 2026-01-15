	.text
	.p2align	4, 0x90                         # -- Begin function parse_token
parse_token:                            # @parse_token
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movsbl	-17(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	subl	$44, %eax
	je	.LBB0_19
	jmp	.LBB0_57
.LBB0_57:
	movl	-24(%rbp), %eax                 # 4-byte Reload
	subl	$58, %eax
	je	.LBB0_11
	jmp	.LBB0_58
.LBB0_58:
	movl	-24(%rbp), %eax                 # 4-byte Reload
	subl	$91, %eax
	je	.LBB0_1
	jmp	.LBB0_59
.LBB0_59:
	movl	-24(%rbp), %eax                 # 4-byte Reload
	subl	$93, %eax
	je	.LBB0_32
	jmp	.LBB0_60
.LBB0_60:
	movl	-24(%rbp), %eax                 # 4-byte Reload
	subl	$123, %eax
	je	.LBB0_6
	jmp	.LBB0_61
.LBB0_61:
	movl	-24(%rbp), %eax                 # 4-byte Reload
	subl	$125, %eax
	je	.LBB0_41
	jmp	.LBB0_55
.LBB0_1:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	MAX_PARSING_DEPTH(%rip), %eax
	jl	.LBB0_3
# %bb.2:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_3:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.4:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_5:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	jv_array@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	push@PLT
	jmp	.LBB0_55
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	MAX_PARSING_DEPTH(%rip), %eax
	jl	.LBB0_8
# %bb.7:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_8:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_10
# %bb.9:
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_10:
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	jv_object@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	push@PLT
	jmp	.LBB0_55
.LBB0_11:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_13
# %bb.12:
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_13:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_15
# %bb.14:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_OBJECT(%rip), %eax
	je	.LBB0_16
.LBB0_15:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_16:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_STRING(%rip), %eax
	je	.LBB0_18
# %bb.17:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_18:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	push@PLT
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB0_55
.LBB0_19:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	jne	.LBB0_21
# %bb.20:
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_21:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_23
# %bb.22:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_23:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_ARRAY(%rip), %eax
	jne	.LBB0_25
# %bb.24:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	jv_array_append@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB0_31
.LBB0_25:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_STRING(%rip), %eax
	jne	.LBB0_29
# %bb.26:
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$1, (%rcx)
	movb	%al, -41(%rbp)                  # 1-byte Spill
	jle	.LBB0_28
# %bb.27:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_OBJECT(%rip), %eax
	sete	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_28:
	movb	-41(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	callq	jv_object_set@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB0_30
.LBB0_29:
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_30:
	jmp	.LBB0_31
.LBB0_31:
	jmp	.LBB0_55
.LBB0_32:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_34
# %bb.33:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_ARRAY(%rip), %eax
	je	.LBB0_35
.LBB0_34:
	leaq	.L.str.8(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_35:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_37
# %bb.36:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	jv_array_append@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB0_40
.LBB0_37:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	cmpl	$0, %eax
	je	.LBB0_39
# %bb.38:
	leaq	.L.str.9(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_39:
	jmp	.LBB0_40
.LBB0_40:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_free@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	(%rdx), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rdx)
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB0_55
.LBB0_41:
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_43
# %bb.42:
	leaq	.L.str.10(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_43:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_is_valid@PLT
	cmpl	$0, %eax
	je	.LBB0_49
# %bb.44:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_STRING(%rip), %eax
	je	.LBB0_46
# %bb.45:
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_46:
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$1, (%rcx)
	movb	%al, -42(%rbp)                  # 1-byte Spill
	jle	.LBB0_48
# %bb.47:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_OBJECT(%rip), %eax
	sete	%al
	movb	%al, -42(%rbp)                  # 1-byte Spill
.LBB0_48:
	movb	-42(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	callq	jv_object_set@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB0_54
.LBB0_49:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_get_kind@PLT
	cmpl	JV_KIND_OBJECT(%rip), %eax
	je	.LBB0_51
# %bb.50:
	leaq	.L.str.10(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_51:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_object_length@PLT
	cmpl	$0, %eax
	je	.LBB0_53
# %bb.52:
	leaq	.L.str.11(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_56
.LBB0_53:
	jmp	.LBB0_54
.LBB0_54:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	jv_free@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	(%rdx), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rdx)
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 16(%rax)
.LBB0_55:
	movq	$0, -8(%rbp)
.LBB0_56:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MAX_PARSING_DEPTH
	.p2align	2
MAX_PARSING_DEPTH:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Exceeds depth limit for parsing"
.L.str.1:
	.asciz	"Expected separator between values"
.L.str.2:
	.asciz	"Expected string key before ':'"
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"':' not as part of an object"
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Object keys must be strings"
.L.str.5:
	.asciz	"Expected value before ','"
.L.str.6:
	.asciz	"',' not as part of an object or array"
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Objects must consist of key:value pairs"
.L.str.8:
	.asciz	"Unmatched ']'"
.L.str.9:
	.asciz	"Expected another array element"
.L.str.10:
	.asciz	"Unmatched '}'"
.L.str.11:
	.asciz	"Expected another key-value pair"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_token
	.addrsig_sym jv_is_valid
	.addrsig_sym push
	.addrsig_sym jv_array
	.addrsig_sym jv_object
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_invalid
	.addrsig_sym jv_array_append
	.addrsig_sym assert
	.addrsig_sym jv_object_set
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym jv_object_length
	.addrsig_sym MAX_PARSING_DEPTH
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_ARRAY