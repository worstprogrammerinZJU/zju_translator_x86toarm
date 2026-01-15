	.text
	.p2align	2                               // -- Begin function lua_proto_append_challenge_packet
	.type	lua_proto_append_challenge_packet,@function
lua_proto_append_challenge_packet:      // @lua_proto_append_challenge_packet
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	adrp	x8, LUA_TTABLE
	ldr	w2, [x8, :lo12:LUA_TTABLE]
	mov	w1, #1
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	luaL_checktype
	bl	network_mysqld_auth_challenge_new
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	adrp	x8, protocol_version
	ldr	w1, [x8, :lo12:protocol_version]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, server_version
	ldr	w1, [x8, :lo12:server_version]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, thread_id
	ldr	w1, [x8, :lo12:thread_id]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, capabilities
	ldr	w1, [x8, :lo12:capabilities]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, charset
	ldr	w1, [x8, :lo12:charset]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, server_status
	ldr	w1, [x8, :lo12:server_status]
	bl	LUA_IMPORT_INT
	ldr	x0, [sp, #24]
	adrp	x8, challenge
	ldr	w1, [x8, :lo12:challenge]
	bl	LUA_IMPORT_STR
	mov	x0, xzr
	bl	g_string_new
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	network_mysqld_proto_append_auth_challenge
	ldr	x0, [sp, #24]
	bl	network_mysqld_auth_challenge_free
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	S
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	lua_pushlstring
	ldur	x0, [x29, #-16]
	adrp	x8, TRUE
	ldr	w1, [x8, :lo12:TRUE]
	bl	g_string_free
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	lua_proto_append_challenge_packet, .Lfunc_end0-lua_proto_append_challenge_packet
                                        // -- End function
	.type	LUA_TTABLE,@object              // @LUA_TTABLE
	.bss
	.globl	LUA_TTABLE
	.p2align	2
LUA_TTABLE:
	.word	0                               // 0x0
	.size	LUA_TTABLE, 4
	.type	protocol_version,@object        // @protocol_version
	.globl	protocol_version
	.p2align	2
protocol_version:
	.word	0                               // 0x0
	.size	protocol_version, 4
	.type	server_version,@object          // @server_version
	.globl	server_version
	.p2align	2
server_version:
	.word	0                               // 0x0
	.size	server_version, 4
	.type	thread_id,@object               // @thread_id
	.globl	thread_id
	.p2align	2
thread_id:
	.word	0                               // 0x0
	.size	thread_id, 4
	.type	capabilities,@object            // @capabilities
	.globl	capabilities
	.p2align	2
capabilities:
	.word	0                               // 0x0
	.size	capabilities, 4
	.type	charset,@object                 // @charset
	.globl	charset
	.p2align	2
charset:
	.word	0                               // 0x0
	.size	charset, 4
	.type	server_status,@object           // @server_status
	.globl	server_status
	.p2align	2
server_status:
	.word	0                               // 0x0
	.size	server_status, 4
	.type	challenge,@object               // @challenge
	.globl	challenge
	.p2align	2
challenge:
	.word	0                               // 0x0
	.size	challenge, 4
	.type	TRUE,@object                    // @TRUE
	.globl	TRUE
	.p2align	2
TRUE:
	.word	0                               // 0x0
	.size	TRUE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym lua_proto_append_challenge_packet
	.addrsig_sym luaL_checktype
	.addrsig_sym network_mysqld_auth_challenge_new
	.addrsig_sym LUA_IMPORT_INT
	.addrsig_sym LUA_IMPORT_STR
	.addrsig_sym g_string_new
	.addrsig_sym network_mysqld_proto_append_auth_challenge
	.addrsig_sym network_mysqld_auth_challenge_free
	.addrsig_sym lua_pushlstring
	.addrsig_sym S
	.addrsig_sym g_string_free
	.addrsig_sym LUA_TTABLE
	.addrsig_sym protocol_version
	.addrsig_sym server_version
	.addrsig_sym thread_id
	.addrsig_sym capabilities
	.addrsig_sym charset
	.addrsig_sym server_status
	.addrsig_sym challenge
	.addrsig_sym TRUE