	.text
	.p2align	2                               // -- Begin function local_static3
	.type	local_static3,@function
local_static3:                          // @local_static3
// %bb.0:
	adrp	x9, local_static3.z
	mov	w8, #100
	str	w8, [x9, :lo12:local_static3.z]
	ret
.Lfunc_end0:
	.size	local_static3, .Lfunc_end0-local_static3
                                        // -- End function
	.type	local_static3.x,@object         // @local_static3.x
	.data
	.p2align	2
local_static3.x:
	.word	5                               // 0x5
	.size	local_static3.x, 4
	.type	local_static3.y,@object         // @local_static3.y
local_static3.y:
	.asciz	"8"
	.size	local_static3.y, 2
	.type	local_static3.z,@object         // @local_static3.z
	.local	local_static3.z
	.comm	local_static3.z,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym local_static3
	.addrsig_sym local_static3.z