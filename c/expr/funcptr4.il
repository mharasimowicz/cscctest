.assembly '<Assembly>'
{
	.ver 0:0:0:0
}
.module '<Module>'
.custom instance void OpenSystem.C.MemoryModelAttribute::.ctor(int32) = (01 00 40 00 00 00 00 00)
.method private static int32 'Compare'(void modopt(['OpenSystem.C']'OpenSystem.C'.'IsConst') * 'p_Node1', void modopt(['OpenSystem.C']'OpenSystem.C'.'IsConst') * 'p_Node2') cil managed 
{
	ldc.i4.0
	ret
	.maxstack 1
} // method Compare
.method public static int32 'main'() cil managed 
{
	.locals init	(int32 * *, unsigned int32)
	ldc.i4.0
	conv.i
	stloc.0
	ldc.i4.0
	stloc.1
	ldloc.0
	ldloc.1
	ldc.i4.8
	ldftn	int32 'Compare'(void modopt(['OpenSystem.C']'OpenSystem.C'.'IsConst') *, void modopt(['OpenSystem.C']'OpenSystem.C'.'IsConst') *)
	call	void 'qsort'(void *, unsigned int32, unsigned int32, method int32 *(void modopt(['OpenSystem.C']'OpenSystem.C'.'IsConst') *, void modopt(['OpenSystem.C']'OpenSystem.C'.'IsConst') *) modopt(['OpenSystem.C']'OpenSystem.C'.'IsFunctionPointer'))
	ldc.i4.0
	ret
	.maxstack 4
} // method main
.method public static void '.start'(class [.library]System.String[] args) cil managed
{
	.entrypoint
	.maxstack	3
	.locals (int32, int8 * *, int8 * *, class [.library]System.Object)
.try { 
	ldarg.0
	ldc.i4.8
	ldloca	0
	call	native int 'OpenSystem.C'.'Crt0'::GetArgV(class [.library]System.String[], int32, int32 &)
	stloc.1
	call	native int 'OpenSystem.C'.'Crt0'::GetEnvironment()
	stloc.2
	ldstr "libc64"
	call	void 'OpenSystem.C'.'Crt0'::Startup(class [.library]System.String)
	call	int32 '<Module>'::'main'()
	call	void 'OpenSystem.C'.'Crt0'::Shutdown(int32)
	leave	L1
} catch [.library]System.OutOfMemoryException {
	rethrow
} catch [.library]System.Object {
	stloc.3
	ldloc.3
	call	class [.library]System.Object 'OpenSystem.C'.'Crt0'::ShutdownWithException(class [.library]System.Object)
	throw
}
L1:
	ret
} // method .start
