	.text
	.globl	close_output_file               // -- Begin function close_output_file
	.p2align	2
	.type	close_output_file,@function
close_output_file:                      // @close_output_file
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, outputfp
	ldr	w0, [x8, :lo12:outputfp]
	bl	fclose
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	close_output_file, .Lfunc_end0-close_output_file
                                        // -- End function
	.type	outputfp,@object                // @outputfp
	.bss
	.globl	outputfp
	.p2align	2
outputfp:
	.word	0                               // 0x0
	.size	outputfp, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fclose
	.addrsig_sym outputfp