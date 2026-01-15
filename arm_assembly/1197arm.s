	.text
	.globl	job_state                       // -- Begin function job_state
	.p2align	2
	.type	job_state,@function
job_state:                              // @job_state
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, Ready
	ldr	x9, [x9, :lo12:Ready]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, .L.str
	add	x8, x8, :lo12:.L.str
	str	x8, [sp, #8]
	b	.LBB0_9
.LBB0_2:
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, Reserved
	ldr	x9, [x9, :lo12:Reserved]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	str	x8, [sp, #8]
	b	.LBB0_9
.LBB0_4:
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, Buried
	ldr	x9, [x9, :lo12:Buried]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, .L.str.2
	add	x8, x8, :lo12:.L.str.2
	str	x8, [sp, #8]
	b	.LBB0_9
.LBB0_6:
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, Delayed
	ldr	x9, [x9, :lo12:Delayed]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, .L.str.3
	add	x8, x8, :lo12:.L.str.3
	str	x8, [sp, #8]
	b	.LBB0_9
.LBB0_8:
	adrp	x8, .L.str.4
	add	x8, x8, :lo12:.L.str.4
	str	x8, [sp, #8]
	b	.LBB0_9
.LBB0_9:
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	job_state, .Lfunc_end0-job_state
                                        // -- End function
	.type	Ready,@object                   // @Ready
	.bss
	.globl	Ready
	.p2align	3
Ready:
	.xword	0                               // 0x0
	.size	Ready, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ready"
	.size	.L.str, 6
	.type	Reserved,@object                // @Reserved
	.bss
	.globl	Reserved
	.p2align	3
Reserved:
	.xword	0                               // 0x0
	.size	Reserved, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"reserved"
	.size	.L.str.1, 9
	.type	Buried,@object                  // @Buried
	.bss
	.globl	Buried
	.p2align	3
Buried:
	.xword	0                               // 0x0
	.size	Buried, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"buried"
	.size	.L.str.2, 7
	.type	Delayed,@object                 // @Delayed
	.bss
	.globl	Delayed
	.p2align	3
Delayed:
	.xword	0                               // 0x0
	.size	Delayed, 8
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"delayed"
	.size	.L.str.3, 8
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"invalid"
	.size	.L.str.4, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Ready
	.addrsig_sym Reserved
	.addrsig_sym Buried
	.addrsig_sym Delayed