using System;
using System.Collections;
using System.Diagnostics;
using System.IO;
using System.Interop;
using System.Text;

using static lodepng.lodepng;

namespace example;

static class Program
{
	[CLink] public static extern void free(void* ptr);

	static int Main(params String[] args)
	{
		let filename = "test.png";

		c_uint error;
		c_uchar* image = ?;
		c_uint width = ?, height = ?;

		error = lodepng_decode32_file(&image, &width, &height, filename);

		Debug.WriteLine($"{width} {height}");

		lodepng_encode32_file("copy.png", image, width, height);

		return 0;
	}
}