//Bridge.cpp
#if 0
#define EXPORT_DLL __declspec(dllexport) //导出dll声明
#else
#define EXPORT_DLL 
#endif
#include "Box2d/Box2D.h"

extern "C"
{
	EXPORT_DLL int addMethod(int a, int b)
	{
		Box2D* box = new Box2D();
		return a + b + box->result;
	}
}
