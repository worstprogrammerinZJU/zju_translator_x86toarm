	.text
	.p2align	4, 0x90                         # -- Begin function usage
usage:                                  # @usage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	stderr(%rip), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	stdout(%rip), %rax
	movq	%rax, -16(%rbp)
.LBB0_2:
	movq	-16(%rbp), %rdi
	movq	JQ_VERSION(%rip), %rdx
	movq	progname(%rip), %rcx
	movq	progname(%rip), %r8
	movq	progname(%rip), %r9
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movq	progname(%rip), %rdx
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
.LBB0_5:
	cmpl	$0, -20(%rbp)
	jge	.LBB0_8
# %bb.6:
	cmpl	$0, -4(%rbp)
	jne	.LBB0_8
# %bb.7:
	movl	$2, %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	jmp	.LBB0_9
.LBB0_8:
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
.LBB0_9:
	movl	-24(%rbp), %edi                 # 4-byte Reload
	callq	exit@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	3
stderr:
	.quad	0
	.globl	stdout
	.p2align	3
stdout:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq - commandline JSON processor [version %s]\n\nUsage:\t%s [options] <jq filter> [file...]\n\t%s [options] --args <jq filter> [strings...]\n\t%s [options] --jsonargs <jq filter> [JSON_TEXTS...]\n\njq is a tool for processing JSON inputs, applying the given filter to\nits JSON text inputs and producing the filter's results as JSON on\nstandard output.\n\nThe simplest filter is ., which copies jq's input to its output\nunmodified (except for formatting, but note that IEEE754 is used\nfor number representation internally, with all that that implies).\n\nFor more advanced filters see the jq(1) manpage (\"man jq\")\nand/or https://stedolan.github.io/jq\n\nExample:\n\n\t$ echo '{\"foo\": 0}' | jq .\n\t{\n\t\t\"foo\": 0\n\t}\n\n"
	.bss
	.globl	JQ_VERSION
	.p2align	3
JQ_VERSION:
	.quad	0
	.globl	progname
	.p2align	3
progname:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"For a listing of options, use %s --help.\n"
.L.str.2:
	.asciz	"Some of the options include:\n  -c               compact instead of pretty-printed output;\n  -n               use `null` as the single input value;\n  -e               set the exit status code based on the output;\n  -s               read (slurp) all inputs into an array; apply filter to it;\n  -r               output raw strings, not JSON texts;\n  -R               read raw strings, not JSON texts;\n  -C               colorize JSON;\n  -M               monochrome (don't colorize JSON);\n  -S               sort keys of objects on output;\n  --tab            use tabs for indentation;\n  --arg a v        set variable $a to value <v>;\n  --argjson a v    set variable $a to JSON value <v>;\n  --slurpfile a f  set variable $a to an array of JSON texts read from <f>;\n  --rawfile a f    set variable $a to a string consisting of the contents of <f>;\n  --args           remaining arguments are string arguments, not files;\n  --jsonargs       remaining arguments are JSON arguments, not files;\n  --               terminates argument processing;\n\nNamed arguments are also available as $ARGS.named[], while\npositional arguments are available as $ARGS.positional[].\n\nSee the manpage for more options.\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usage
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym stderr
	.addrsig_sym stdout
	.addrsig_sym JQ_VERSION
	.addrsig_sym progname