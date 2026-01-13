	.text
	.p2align	4, 0x90                         # -- Begin function printcapkind
printcapkind:                           # @printcapkind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	leaq	-112(%rbp), %rdi
	leaq	.L__const.printcapkind.modes(%rip), %rsi
	movl	$104, %edx
	callq	memcpy@PLT
	movslq	-4(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rsi
	leaq	.L.str.13(%rip), %rdi
	callq	printf@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"close"
.L.str.1:
	.asciz	"position"
.L.str.2:
	.asciz	"constant"
.L.str.3:
	.asciz	"backref"
.L.str.4:
	.asciz	"argument"
.L.str.5:
	.asciz	"simple"
.L.str.6:
	.asciz	"table"
.L.str.7:
	.asciz	"function"
.L.str.8:
	.asciz	"query"
.L.str.9:
	.asciz	"string"
.L.str.10:
	.asciz	"substitution"
.L.str.11:
	.asciz	"accumulator"
.L.str.12:
	.asciz	"runtime"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.printcapkind.modes:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printcapkind
	.addrsig_sym printf