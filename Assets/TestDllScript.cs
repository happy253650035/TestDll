using System.Runtime.InteropServices;
using UnityEngine;

public class TestDllScript : MonoBehaviour 
{
	[DllImport("UnityCppInterop")]
	private static extern int addMethod(int a, int b);
//	[DllImport("HelloWorld")]
//	private static extern float initBox2d();

	[DllImport("UnityCppInterop", EntryPoint = "addMethod")]
	private static extern int Add(int a, int b);
	// Use this for initialization
	void Start () {
		int a = 5, b = 6;
//		Debug.LogError("initBox2d : " + initBox2d());
		Debug.LogError(string.Format("Internal_Add(): {0} + {1} = {2}", a, b, addMethod(a, b)));
		Debug.LogError(string.Format("Add(): {0} + {1} = {2}", a, b, Add(a, b)));
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
