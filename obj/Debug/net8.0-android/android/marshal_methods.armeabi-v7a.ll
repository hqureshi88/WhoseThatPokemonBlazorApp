; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [336 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [666 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 256
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 290
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 53857724, ; 8: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 299
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 210
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 98325684, ; 13: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 189
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 274
	i32 113429830, ; 15: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 329
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 274
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 294
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 230
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 276
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 328
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 329
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 228
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 32: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 188
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 250
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 37: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 38: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 175
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 233
	i32 276479776, ; 40: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 277295747, ; 41: Refit.HttpClientFactory => 0x10873283 => 213
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 252
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 249
	i32 280992041, ; 44: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 300
	i32 291076382, ; 45: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 291275502, ; 46: Microsoft.Extensions.Http.dll => 0x115c82ee => 195
	i32 298918909, ; 47: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 219
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 50: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 313
	i32 342366114, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 251
	i32 356389973, ; 52: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 312
	i32 357576608, ; 53: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 300
	i32 360082299, ; 54: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 55: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 56: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 57: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 58: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 59: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 60: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 61: _Microsoft.Android.Resource.Designer => 0x17969339 => 332
	i32 403441872, ; 62: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 63: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 324
	i32 441335492, ; 64: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 234
	i32 442565967, ; 65: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 66: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 247
	i32 451504562, ; 67: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 68: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 69: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 70: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 71: System.dll => 0x1bff388e => 164
	i32 476646585, ; 72: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 249
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 262
	i32 498788369, ; 74: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 75: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 311
	i32 503918385, ; 76: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 305
	i32 513247710, ; 77: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 203
	i32 526420162, ; 78: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 79: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 308
	i32 527452488, ; 80: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 294
	i32 530272170, ; 81: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 82: Microsoft.Extensions.Logging => 0x20216150 => 198
	i32 540030774, ; 83: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 84: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 85: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 86: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 87: Jsr305Binding => 0x213954e7 => 287
	i32 569601784, ; 88: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 285
	i32 571435654, ; 89: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 192
	i32 577335427, ; 90: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 91: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 319
	i32 601371474, ; 92: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 93: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 94: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 95: Xamarin.AndroidX.CustomView => 0x2568904f => 239
	i32 639843206, ; 96: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 245
	i32 643868501, ; 97: System.Net => 0x2660a755 => 81
	i32 662205335, ; 98: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 99: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 281
	i32 666292255, ; 100: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 226
	i32 672442732, ; 101: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 102: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 103: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 299
	i32 690569205, ; 104: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 105: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 296
	i32 693804605, ; 106: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 107: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 108: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 291
	i32 700358131, ; 109: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 110: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 314
	i32 709557578, ; 111: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 302
	i32 720511267, ; 112: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 295
	i32 722857257, ; 113: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 731701662, ; 114: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 202
	i32 735137430, ; 115: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 116: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 117: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 216
	i32 759454413, ; 118: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 119: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 120: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 121: Microsoft.Extensions.Options => 0x2f0980eb => 201
	i32 790371945, ; 122: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 240
	i32 804008546, ; 123: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 179
	i32 804715423, ; 124: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 125: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 254
	i32 823281589, ; 126: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 127: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 128: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 129: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 130: Xamarin.AndroidX.Print => 0x3246f6cd => 267
	i32 870878177, ; 131: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 298
	i32 873119928, ; 132: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 133: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 134: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 135: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 908337989, ; 136: Refit => 0x36242345 => 212
	i32 911108515, ; 137: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 138: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 326
	i32 928116545, ; 139: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 290
	i32 952186615, ; 140: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 141: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 295
	i32 966729478, ; 142: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 288
	i32 967690846, ; 143: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 251
	i32 975236339, ; 144: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 145: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 146: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 147: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 148: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 149: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 330
	i32 994442037, ; 150: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 151: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 304
	i32 999186168, ; 152: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 194
	i32 1001831731, ; 153: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 154: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 271
	i32 1019214401, ; 155: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 156: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 187
	i32 1029334545, ; 157: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 301
	i32 1031528504, ; 158: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 289
	i32 1035644815, ; 159: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 224
	i32 1036536393, ; 160: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 161: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048992957, ; 162: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 189
	i32 1052210849, ; 163: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 258
	i32 1067306892, ; 164: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 165: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 166: Xamarin.Kotlin.StdLib => 0x409e66d8 => 292
	i32 1098259244, ; 167: System => 0x41761b2c => 164
	i32 1106973742, ; 168: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 184
	i32 1121599056, ; 169: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 257
	i32 1122549021, ; 170: Refit.HttpClientFactory.dll => 0x42e8bd1d => 213
	i32 1127624469, ; 171: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 200
	i32 1149092582, ; 172: Xamarin.AndroidX.Window => 0x447dc2e6 => 284
	i32 1170634674, ; 173: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 174: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 190
	i32 1175144683, ; 175: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 280
	i32 1178241025, ; 176: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 265
	i32 1178797549, ; 177: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 305
	i32 1203215381, ; 178: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 318
	i32 1204270330, ; 179: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 226
	i32 1208641965, ; 180: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 181: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 182: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 316
	i32 1243150071, ; 183: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 285
	i32 1253011324, ; 184: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 185: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 275
	i32 1267360935, ; 186: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 279
	i32 1273260888, ; 187: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 231
	i32 1275534314, ; 188: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 296
	i32 1278448581, ; 189: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 223
	i32 1293217323, ; 190: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 242
	i32 1309188875, ; 191: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 192: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 284
	i32 1324164729, ; 193: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 194: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 195: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 196: Xamarin.AndroidX.SavedState => 0x52114ed3 => 271
	i32 1379779777, ; 197: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 198: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 199: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 235
	i32 1408764838, ; 200: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 201: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 202: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 203: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 204: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 288
	i32 1439761251, ; 205: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 206: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 207: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 208: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 191
	i32 1457743152, ; 209: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 210: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 211: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 212: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 213: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 214: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 225
	i32 1470490898, ; 215: Microsoft.Extensions.Primitives => 0x57a5e912 => 203
	i32 1479771757, ; 216: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 217: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 218: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 219: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 272
	i32 1493001747, ; 220: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 308
	i32 1505131794, ; 221: Microsoft.Extensions.Http => 0x59b67d12 => 195
	i32 1514721132, ; 222: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 303
	i32 1521091094, ; 223: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 194
	i32 1536373174, ; 224: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 225: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 226: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 227: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 179
	i32 1550322496, ; 228: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 229: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 323
	i32 1554762148, ; 230: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 306
	i32 1565862583, ; 231: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 232: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 233: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 234: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 235: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 324
	i32 1582372066, ; 236: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 241
	i32 1591080825, ; 237: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 331
	i32 1592978981, ; 238: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 239: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 289
	i32 1601112923, ; 240: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 241: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 242: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 243: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 261
	i32 1622358360, ; 244: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 245: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 283
	i32 1632842087, ; 246: Microsoft.Extensions.Configuration.Json => 0x61533167 => 185
	i32 1635184631, ; 247: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 245
	i32 1636350590, ; 248: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 238
	i32 1639515021, ; 249: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 250: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 251: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 252: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 178
	i32 1657153582, ; 253: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 254: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 277
	i32 1658251792, ; 255: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 286
	i32 1670060433, ; 256: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 233
	i32 1675553242, ; 257: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 258: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 259: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 260: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 261: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 262: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 263: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 293
	i32 1701541528, ; 264: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 265: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 254
	i32 1726116996, ; 266: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 267: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 268: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 229
	i32 1736233607, ; 269: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 321
	i32 1744735666, ; 270: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 271: System.IO.Pipelines.dll => 0x68139a0d => 214
	i32 1746316138, ; 272: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 273: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 274: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 275: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 177
	i32 1763938596, ; 276: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 277: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 278: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 276
	i32 1770582343, ; 279: Microsoft.Extensions.Logging.dll => 0x6988f147 => 198
	i32 1776026572, ; 280: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 281: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 282: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 283: Xamarin.AndroidX.Fragment => 0x6a96652d => 247
	i32 1808609942, ; 284: Xamarin.AndroidX.Loader => 0x6bcd3296 => 261
	i32 1809966115, ; 285: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 316
	i32 1813058853, ; 286: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 292
	i32 1813201214, ; 287: Xamarin.Google.Android.Material => 0x6c13413e => 286
	i32 1818569960, ; 288: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 266
	i32 1818787751, ; 289: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 290: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 310
	i32 1824175904, ; 291: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 292: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 293: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 199
	i32 1842015223, ; 294: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 327
	i32 1847515442, ; 295: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 216
	i32 1858542181, ; 296: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 297: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 298: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 299: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 227
	i32 1888955245, ; 300: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 301: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 302: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 303: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 304: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1931602680, ; 305: BlazorPokemonApp.dll => 0x7321eaf8 => 0
	i32 1939592360, ; 306: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 307: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 308: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 313
	i32 1961813231, ; 309: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 273
	i32 1968388702, ; 310: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 181
	i32 1983156543, ; 311: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 293
	i32 1985761444, ; 312: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 218
	i32 2011961780, ; 313: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 314: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 309
	i32 2019465201, ; 315: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 258
	i32 2025202353, ; 316: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 298
	i32 2031763787, ; 317: Xamarin.Android.Glide => 0x791a414b => 215
	i32 2043674646, ; 318: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 312
	i32 2045470958, ; 319: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 320: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 183
	i32 2055257422, ; 321: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 253
	i32 2060060697, ; 322: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 323: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 324: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 193
	i32 2079903147, ; 325: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 326: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 327: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 328: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 329: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 330: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 331: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 314
	i32 2159891885, ; 332: Microsoft.Maui => 0x80bd55ad => 208
	i32 2165051842, ; 333: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 321
	i32 2181898931, ; 334: Microsoft.Extensions.Options.dll => 0x820d22b3 => 201
	i32 2192057212, ; 335: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 199
	i32 2193016926, ; 336: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 337: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 297
	i32 2201231467, ; 338: System.Net.Http => 0x8334206b => 64
	i32 2217644978, ; 339: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 280
	i32 2222056684, ; 340: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 341: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 262
	i32 2252106437, ; 342: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 343: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 344: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 345: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 182
	i32 2267999099, ; 346: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 217
	i32 2270573516, ; 347: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 306
	i32 2279755925, ; 348: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 269
	i32 2289298199, ; 349: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 325
	i32 2293034957, ; 350: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 351: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 352: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 353: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 354: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 221
	i32 2320631194, ; 355: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 356: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 357: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 358: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 359: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 360: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 326
	i32 2371007202, ; 361: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 181
	i32 2378619854, ; 362: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 363: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 364: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 365: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 244
	i32 2411328690, ; 366: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 175
	i32 2421380589, ; 367: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 368: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 317
	i32 2423080555, ; 369: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 231
	i32 2435356389, ; 370: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 371: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 372: Microsoft.JSInterop.dll => 0x919672ca => 204
	i32 2454642406, ; 373: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 374: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 375: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 376: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 234
	i32 2471841756, ; 377: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 378: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 379: Microsoft.Maui.Controls => 0x93dba8a1 => 206
	i32 2483903535, ; 380: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 381: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 382: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 383: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 384: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 256
	i32 2520433370, ; 385: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 323
	i32 2522472828, ; 386: Xamarin.Android.Glide.dll => 0x9659e17c => 215
	i32 2537015816, ; 387: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 174
	i32 2538310050, ; 388: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 389: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 390: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 391: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 257
	i32 2581819634, ; 392: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 279
	i32 2585220780, ; 393: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 394: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 395: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 176
	i32 2589602615, ; 396: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 397: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 190
	i32 2605712449, ; 398: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 297
	i32 2615233544, ; 399: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 248
	i32 2616218305, ; 400: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 200
	i32 2617129537, ; 401: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 402: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 403: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 238
	i32 2624644809, ; 404: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 243
	i32 2627185994, ; 405: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 406: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 407: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 252
	i32 2663391936, ; 408: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 217
	i32 2663698177, ; 409: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 410: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 411: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 412: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 413: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 414: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 178
	i32 2693849962, ; 415: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 416: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 277
	i32 2715334215, ; 417: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 418: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 419: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 420: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 421: Xamarin.AndroidX.Activity => 0xa2e0939b => 219
	i32 2735172069, ; 422: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 423: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 174
	i32 2737747696, ; 424: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 225
	i32 2740948882, ; 425: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 426: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 427: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 207
	i32 2764765095, ; 428: Microsoft.Maui.dll => 0xa4caf7a7 => 208
	i32 2765824710, ; 429: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 430: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 291
	i32 2778768386, ; 431: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 282
	i32 2779977773, ; 432: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 270
	i32 2788224221, ; 433: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 248
	i32 2801831435, ; 434: Microsoft.Maui.Graphics => 0xa7008e0b => 210
	i32 2802068195, ; 435: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 327
	i32 2803228030, ; 436: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 437: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 304
	i32 2810250172, ; 438: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 235
	i32 2819470561, ; 439: System.Xml.dll => 0xa80db4e1 => 163
	i32 2820942282, ; 440: MudBlazor.dll => 0xa82429ca => 211
	i32 2821205001, ; 441: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 442: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 270
	i32 2824502124, ; 443: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 444: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 317
	i32 2833784645, ; 445: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 180
	i32 2838993487, ; 446: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 259
	i32 2849599387, ; 447: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 448: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 282
	i32 2855708567, ; 449: Xamarin.AndroidX.Transition => 0xaa36a797 => 278
	i32 2857259519, ; 450: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 303
	i32 2861098320, ; 451: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 452: Microsoft.Maui.Essentials => 0xaa8a4878 => 209
	i32 2870099610, ; 453: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 220
	i32 2875164099, ; 454: Jsr305Binding.dll => 0xab5f85c3 => 287
	i32 2875220617, ; 455: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 456: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 322
	i32 2884993177, ; 457: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 246
	i32 2887636118, ; 458: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 459: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 177
	i32 2899753641, ; 460: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 461: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 462: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 463: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 464: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 465: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 193
	i32 2916838712, ; 466: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 283
	i32 2919462931, ; 467: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 468: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 222
	i32 2936416060, ; 469: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 470: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 471: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2955922957, ; 472: BlazorPokemonApp => 0xb02fce0d => 0
	i32 2959614098, ; 473: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 474: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2971004615, ; 475: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 202
	i32 2972252294, ; 476: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 477: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 242
	i32 2987532451, ; 478: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 273
	i32 2996846495, ; 479: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 255
	i32 3016983068, ; 480: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 275
	i32 3020703001, ; 481: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 188
	i32 3023353419, ; 482: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 483: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 250
	i32 3038032645, ; 484: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 332
	i32 3056245963, ; 485: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 272
	i32 3057625584, ; 486: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 263
	i32 3059408633, ; 487: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 488: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3060069052, ; 489: MudBlazor => 0xb664f2bc => 211
	i32 3075834255, ; 490: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 491: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 310
	i32 3090735792, ; 492: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 493: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 494: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 495: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 496: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 497: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 498: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 499: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 500: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 501: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 502: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 503: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 264
	i32 3192346100, ; 504: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 505: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 506: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 507: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 508: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 241
	i32 3220365878, ; 509: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 510: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 511: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 512: Xamarin.AndroidX.CardView => 0xc235e84d => 229
	i32 3265493905, ; 513: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 514: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 515: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 516: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 517: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 518: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 519: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 520: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 521: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 522: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 239
	i32 3317144872, ; 523: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 524: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 227
	i32 3345895724, ; 525: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 268
	i32 3346324047, ; 526: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 265
	i32 3358260929, ; 527: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 528: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 220
	i32 3362522851, ; 529: Xamarin.AndroidX.Core => 0xc86c06e3 => 236
	i32 3366347497, ; 530: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 531: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 269
	i32 3395150330, ; 532: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 533: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 534: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 240
	i32 3406629867, ; 535: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 191
	i32 3421170118, ; 536: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 183
	i32 3428513518, ; 537: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 186
	i32 3429136800, ; 538: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 539: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 540: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 243
	i32 3445260447, ; 541: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 542: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 205
	i32 3463511458, ; 543: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 309
	i32 3464190856, ; 544: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 176
	i32 3471940407, ; 545: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 546: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 547: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 322
	i32 3485117614, ; 548: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 549: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 550: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 232
	i32 3500000672, ; 551: Microsoft.JSInterop => 0xd09dc5a0 => 204
	i32 3509114376, ; 552: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 553: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 554: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 555: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 556: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 328
	i32 3560100363, ; 557: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 558: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3592435036, ; 559: Microsoft.Extensions.Localization.Abstractions => 0xd620355c => 197
	i32 3596930546, ; 560: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 302
	i32 3597029428, ; 561: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 218
	i32 3598340787, ; 562: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 563: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 564: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 301
	i32 3624195450, ; 565: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 566: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 267
	i32 3633644679, ; 567: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 222
	i32 3638274909, ; 568: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 569: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 253
	i32 3643854240, ; 570: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 264
	i32 3645089577, ; 571: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 572: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 319
	i32 3657292374, ; 573: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 182
	i32 3660523487, ; 574: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 575: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 307
	i32 3672681054, ; 576: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 577: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 228
	i32 3684561358, ; 578: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 232
	i32 3686075795, ; 579: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 315
	i32 3697841164, ; 580: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 331
	i32 3700866549, ; 581: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 582: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 237
	i32 3716563718, ; 583: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 584: Xamarin.AndroidX.Annotation => 0xdda814c6 => 221
	i32 3722202641, ; 585: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 185
	i32 3724971120, ; 586: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 263
	i32 3732100267, ; 587: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 588: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 180
	i32 3737834244, ; 589: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 590: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 591: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3758424670, ; 592: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 184
	i32 3776403777, ; 593: Microsoft.Extensions.Localization.Abstractions.dll => 0xe1175941 => 197
	i32 3786282454, ; 594: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 230
	i32 3792276235, ; 595: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 596: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 205
	i32 3802395368, ; 597: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 598: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 599: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 600: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 601: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 187
	i32 3844307129, ; 602: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 603: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 604: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 605: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 606: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 607: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 608: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 278
	i32 3888767677, ; 609: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 268
	i32 3889960447, ; 610: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 330
	i32 3896106733, ; 611: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 612: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 236
	i32 3898971068, ; 613: Microsoft.Extensions.Localization.dll => 0xe86593bc => 196
	i32 3901907137, ; 614: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 615: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 616: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 281
	i32 3928044579, ; 617: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 618: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 619: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 266
	i32 3945713374, ; 620: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 621: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3954195687, ; 622: Microsoft.Extensions.Localization => 0xebb03ce7 => 196
	i32 3955647286, ; 623: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 224
	i32 3959773229, ; 624: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 255
	i32 3980434154, ; 625: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 325
	i32 3987592930, ; 626: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 307
	i32 4003436829, ; 627: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 628: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 223
	i32 4023392905, ; 629: System.IO.Pipelines => 0xefd01a89 => 214
	i32 4025784931, ; 630: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 631: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 207
	i32 4054681211, ; 632: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 633: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 634: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 311
	i32 4073602200, ; 635: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 636: Microsoft.Maui.Essentials.dll => 0xf40add04 => 209
	i32 4099507663, ; 637: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 638: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 639: Xamarin.AndroidX.Emoji2 => 0xf479582c => 244
	i32 4102112229, ; 640: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 320
	i32 4119206479, ; 641: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 318
	i32 4125707920, ; 642: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 315
	i32 4126470640, ; 643: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 186
	i32 4127667938, ; 644: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 645: System.AppContext => 0xf6318da0 => 6
	i32 4144683026, ; 646: Refit.dll => 0xf70ad812 => 212
	i32 4147896353, ; 647: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 648: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 649: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 650: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 651: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 652: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 653: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 260
	i32 4185676441, ; 654: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 655: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 656: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 657: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 320
	i32 4256097574, ; 658: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 237
	i32 4258378803, ; 659: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 259
	i32 4260525087, ; 660: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 661: Microsoft.Maui.Controls.dll => 0xfea12dee => 206
	i32 4274976490, ; 662: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 663: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 260
	i32 4294648842, ; 664: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 192
	i32 4294763496 ; 665: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 246
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [666 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 256, ; 3
	i32 290, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 299, ; 8
	i32 30, ; 9
	i32 124, ; 10
	i32 210, ; 11
	i32 102, ; 12
	i32 189, ; 13
	i32 274, ; 14
	i32 329, ; 15
	i32 107, ; 16
	i32 274, ; 17
	i32 139, ; 18
	i32 294, ; 19
	i32 77, ; 20
	i32 124, ; 21
	i32 13, ; 22
	i32 230, ; 23
	i32 132, ; 24
	i32 276, ; 25
	i32 151, ; 26
	i32 328, ; 27
	i32 329, ; 28
	i32 18, ; 29
	i32 228, ; 30
	i32 26, ; 31
	i32 188, ; 32
	i32 250, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 91, ; 37
	i32 175, ; 38
	i32 233, ; 39
	i32 147, ; 40
	i32 213, ; 41
	i32 252, ; 42
	i32 249, ; 43
	i32 300, ; 44
	i32 54, ; 45
	i32 195, ; 46
	i32 69, ; 47
	i32 219, ; 48
	i32 83, ; 49
	i32 313, ; 50
	i32 251, ; 51
	i32 312, ; 52
	i32 300, ; 53
	i32 131, ; 54
	i32 55, ; 55
	i32 149, ; 56
	i32 74, ; 57
	i32 145, ; 58
	i32 62, ; 59
	i32 146, ; 60
	i32 332, ; 61
	i32 165, ; 62
	i32 324, ; 63
	i32 234, ; 64
	i32 12, ; 65
	i32 247, ; 66
	i32 125, ; 67
	i32 152, ; 68
	i32 113, ; 69
	i32 166, ; 70
	i32 164, ; 71
	i32 249, ; 72
	i32 262, ; 73
	i32 84, ; 74
	i32 311, ; 75
	i32 305, ; 76
	i32 203, ; 77
	i32 150, ; 78
	i32 308, ; 79
	i32 294, ; 80
	i32 60, ; 81
	i32 198, ; 82
	i32 51, ; 83
	i32 103, ; 84
	i32 114, ; 85
	i32 40, ; 86
	i32 287, ; 87
	i32 285, ; 88
	i32 192, ; 89
	i32 120, ; 90
	i32 319, ; 91
	i32 52, ; 92
	i32 44, ; 93
	i32 119, ; 94
	i32 239, ; 95
	i32 245, ; 96
	i32 81, ; 97
	i32 136, ; 98
	i32 281, ; 99
	i32 226, ; 100
	i32 8, ; 101
	i32 73, ; 102
	i32 299, ; 103
	i32 155, ; 104
	i32 296, ; 105
	i32 154, ; 106
	i32 92, ; 107
	i32 291, ; 108
	i32 45, ; 109
	i32 314, ; 110
	i32 302, ; 111
	i32 295, ; 112
	i32 109, ; 113
	i32 202, ; 114
	i32 129, ; 115
	i32 25, ; 116
	i32 216, ; 117
	i32 72, ; 118
	i32 55, ; 119
	i32 46, ; 120
	i32 201, ; 121
	i32 240, ; 122
	i32 179, ; 123
	i32 22, ; 124
	i32 254, ; 125
	i32 86, ; 126
	i32 43, ; 127
	i32 160, ; 128
	i32 71, ; 129
	i32 267, ; 130
	i32 298, ; 131
	i32 3, ; 132
	i32 42, ; 133
	i32 63, ; 134
	i32 16, ; 135
	i32 212, ; 136
	i32 53, ; 137
	i32 326, ; 138
	i32 290, ; 139
	i32 105, ; 140
	i32 295, ; 141
	i32 288, ; 142
	i32 251, ; 143
	i32 34, ; 144
	i32 158, ; 145
	i32 85, ; 146
	i32 32, ; 147
	i32 12, ; 148
	i32 330, ; 149
	i32 51, ; 150
	i32 304, ; 151
	i32 194, ; 152
	i32 56, ; 153
	i32 271, ; 154
	i32 36, ; 155
	i32 187, ; 156
	i32 301, ; 157
	i32 289, ; 158
	i32 224, ; 159
	i32 35, ; 160
	i32 58, ; 161
	i32 189, ; 162
	i32 258, ; 163
	i32 173, ; 164
	i32 17, ; 165
	i32 292, ; 166
	i32 164, ; 167
	i32 184, ; 168
	i32 257, ; 169
	i32 213, ; 170
	i32 200, ; 171
	i32 284, ; 172
	i32 153, ; 173
	i32 190, ; 174
	i32 280, ; 175
	i32 265, ; 176
	i32 305, ; 177
	i32 318, ; 178
	i32 226, ; 179
	i32 29, ; 180
	i32 52, ; 181
	i32 316, ; 182
	i32 285, ; 183
	i32 5, ; 184
	i32 275, ; 185
	i32 279, ; 186
	i32 231, ; 187
	i32 296, ; 188
	i32 223, ; 189
	i32 242, ; 190
	i32 85, ; 191
	i32 284, ; 192
	i32 61, ; 193
	i32 112, ; 194
	i32 57, ; 195
	i32 271, ; 196
	i32 99, ; 197
	i32 19, ; 198
	i32 235, ; 199
	i32 111, ; 200
	i32 101, ; 201
	i32 102, ; 202
	i32 104, ; 203
	i32 288, ; 204
	i32 71, ; 205
	i32 38, ; 206
	i32 32, ; 207
	i32 191, ; 208
	i32 103, ; 209
	i32 73, ; 210
	i32 9, ; 211
	i32 123, ; 212
	i32 46, ; 213
	i32 225, ; 214
	i32 203, ; 215
	i32 9, ; 216
	i32 43, ; 217
	i32 4, ; 218
	i32 272, ; 219
	i32 308, ; 220
	i32 195, ; 221
	i32 303, ; 222
	i32 194, ; 223
	i32 31, ; 224
	i32 138, ; 225
	i32 92, ; 226
	i32 179, ; 227
	i32 93, ; 228
	i32 323, ; 229
	i32 306, ; 230
	i32 49, ; 231
	i32 141, ; 232
	i32 112, ; 233
	i32 140, ; 234
	i32 324, ; 235
	i32 241, ; 236
	i32 331, ; 237
	i32 115, ; 238
	i32 289, ; 239
	i32 157, ; 240
	i32 76, ; 241
	i32 79, ; 242
	i32 261, ; 243
	i32 37, ; 244
	i32 283, ; 245
	i32 185, ; 246
	i32 245, ; 247
	i32 238, ; 248
	i32 64, ; 249
	i32 138, ; 250
	i32 15, ; 251
	i32 178, ; 252
	i32 116, ; 253
	i32 277, ; 254
	i32 286, ; 255
	i32 233, ; 256
	i32 48, ; 257
	i32 70, ; 258
	i32 80, ; 259
	i32 126, ; 260
	i32 94, ; 261
	i32 121, ; 262
	i32 293, ; 263
	i32 26, ; 264
	i32 254, ; 265
	i32 97, ; 266
	i32 28, ; 267
	i32 229, ; 268
	i32 321, ; 269
	i32 149, ; 270
	i32 214, ; 271
	i32 169, ; 272
	i32 4, ; 273
	i32 98, ; 274
	i32 177, ; 275
	i32 33, ; 276
	i32 93, ; 277
	i32 276, ; 278
	i32 198, ; 279
	i32 21, ; 280
	i32 41, ; 281
	i32 170, ; 282
	i32 247, ; 283
	i32 261, ; 284
	i32 316, ; 285
	i32 292, ; 286
	i32 286, ; 287
	i32 266, ; 288
	i32 2, ; 289
	i32 310, ; 290
	i32 134, ; 291
	i32 111, ; 292
	i32 199, ; 293
	i32 327, ; 294
	i32 216, ; 295
	i32 58, ; 296
	i32 95, ; 297
	i32 39, ; 298
	i32 227, ; 299
	i32 25, ; 300
	i32 94, ; 301
	i32 89, ; 302
	i32 99, ; 303
	i32 10, ; 304
	i32 0, ; 305
	i32 87, ; 306
	i32 100, ; 307
	i32 313, ; 308
	i32 273, ; 309
	i32 181, ; 310
	i32 293, ; 311
	i32 218, ; 312
	i32 7, ; 313
	i32 309, ; 314
	i32 258, ; 315
	i32 298, ; 316
	i32 215, ; 317
	i32 312, ; 318
	i32 88, ; 319
	i32 183, ; 320
	i32 253, ; 321
	i32 154, ; 322
	i32 33, ; 323
	i32 193, ; 324
	i32 116, ; 325
	i32 82, ; 326
	i32 20, ; 327
	i32 11, ; 328
	i32 162, ; 329
	i32 3, ; 330
	i32 314, ; 331
	i32 208, ; 332
	i32 321, ; 333
	i32 201, ; 334
	i32 199, ; 335
	i32 84, ; 336
	i32 297, ; 337
	i32 64, ; 338
	i32 280, ; 339
	i32 143, ; 340
	i32 262, ; 341
	i32 157, ; 342
	i32 41, ; 343
	i32 117, ; 344
	i32 182, ; 345
	i32 217, ; 346
	i32 306, ; 347
	i32 269, ; 348
	i32 325, ; 349
	i32 131, ; 350
	i32 75, ; 351
	i32 66, ; 352
	i32 172, ; 353
	i32 221, ; 354
	i32 143, ; 355
	i32 106, ; 356
	i32 151, ; 357
	i32 70, ; 358
	i32 156, ; 359
	i32 326, ; 360
	i32 181, ; 361
	i32 121, ; 362
	i32 127, ; 363
	i32 152, ; 364
	i32 244, ; 365
	i32 175, ; 366
	i32 141, ; 367
	i32 317, ; 368
	i32 231, ; 369
	i32 20, ; 370
	i32 14, ; 371
	i32 204, ; 372
	i32 135, ; 373
	i32 75, ; 374
	i32 59, ; 375
	i32 234, ; 376
	i32 167, ; 377
	i32 168, ; 378
	i32 206, ; 379
	i32 15, ; 380
	i32 74, ; 381
	i32 6, ; 382
	i32 23, ; 383
	i32 256, ; 384
	i32 323, ; 385
	i32 215, ; 386
	i32 174, ; 387
	i32 91, ; 388
	i32 1, ; 389
	i32 136, ; 390
	i32 257, ; 391
	i32 279, ; 392
	i32 134, ; 393
	i32 69, ; 394
	i32 176, ; 395
	i32 146, ; 396
	i32 190, ; 397
	i32 297, ; 398
	i32 248, ; 399
	i32 200, ; 400
	i32 88, ; 401
	i32 96, ; 402
	i32 238, ; 403
	i32 243, ; 404
	i32 31, ; 405
	i32 45, ; 406
	i32 252, ; 407
	i32 217, ; 408
	i32 109, ; 409
	i32 158, ; 410
	i32 35, ; 411
	i32 22, ; 412
	i32 114, ; 413
	i32 178, ; 414
	i32 57, ; 415
	i32 277, ; 416
	i32 144, ; 417
	i32 118, ; 418
	i32 120, ; 419
	i32 110, ; 420
	i32 219, ; 421
	i32 139, ; 422
	i32 174, ; 423
	i32 225, ; 424
	i32 54, ; 425
	i32 105, ; 426
	i32 207, ; 427
	i32 208, ; 428
	i32 133, ; 429
	i32 291, ; 430
	i32 282, ; 431
	i32 270, ; 432
	i32 248, ; 433
	i32 210, ; 434
	i32 327, ; 435
	i32 159, ; 436
	i32 304, ; 437
	i32 235, ; 438
	i32 163, ; 439
	i32 211, ; 440
	i32 132, ; 441
	i32 270, ; 442
	i32 161, ; 443
	i32 317, ; 444
	i32 180, ; 445
	i32 259, ; 446
	i32 140, ; 447
	i32 282, ; 448
	i32 278, ; 449
	i32 303, ; 450
	i32 169, ; 451
	i32 209, ; 452
	i32 220, ; 453
	i32 287, ; 454
	i32 40, ; 455
	i32 322, ; 456
	i32 246, ; 457
	i32 81, ; 458
	i32 177, ; 459
	i32 56, ; 460
	i32 37, ; 461
	i32 97, ; 462
	i32 166, ; 463
	i32 172, ; 464
	i32 193, ; 465
	i32 283, ; 466
	i32 82, ; 467
	i32 222, ; 468
	i32 98, ; 469
	i32 30, ; 470
	i32 159, ; 471
	i32 0, ; 472
	i32 18, ; 473
	i32 127, ; 474
	i32 202, ; 475
	i32 119, ; 476
	i32 242, ; 477
	i32 273, ; 478
	i32 255, ; 479
	i32 275, ; 480
	i32 188, ; 481
	i32 165, ; 482
	i32 250, ; 483
	i32 332, ; 484
	i32 272, ; 485
	i32 263, ; 486
	i32 170, ; 487
	i32 16, ; 488
	i32 211, ; 489
	i32 144, ; 490
	i32 310, ; 491
	i32 125, ; 492
	i32 118, ; 493
	i32 38, ; 494
	i32 115, ; 495
	i32 47, ; 496
	i32 142, ; 497
	i32 117, ; 498
	i32 34, ; 499
	i32 173, ; 500
	i32 95, ; 501
	i32 53, ; 502
	i32 264, ; 503
	i32 129, ; 504
	i32 153, ; 505
	i32 24, ; 506
	i32 161, ; 507
	i32 241, ; 508
	i32 148, ; 509
	i32 104, ; 510
	i32 89, ; 511
	i32 229, ; 512
	i32 60, ; 513
	i32 142, ; 514
	i32 100, ; 515
	i32 5, ; 516
	i32 13, ; 517
	i32 122, ; 518
	i32 135, ; 519
	i32 28, ; 520
	i32 72, ; 521
	i32 239, ; 522
	i32 24, ; 523
	i32 227, ; 524
	i32 268, ; 525
	i32 265, ; 526
	i32 137, ; 527
	i32 220, ; 528
	i32 236, ; 529
	i32 168, ; 530
	i32 269, ; 531
	i32 101, ; 532
	i32 123, ; 533
	i32 240, ; 534
	i32 191, ; 535
	i32 183, ; 536
	i32 186, ; 537
	i32 163, ; 538
	i32 167, ; 539
	i32 243, ; 540
	i32 39, ; 541
	i32 205, ; 542
	i32 309, ; 543
	i32 176, ; 544
	i32 17, ; 545
	i32 171, ; 546
	i32 322, ; 547
	i32 137, ; 548
	i32 150, ; 549
	i32 232, ; 550
	i32 204, ; 551
	i32 155, ; 552
	i32 130, ; 553
	i32 19, ; 554
	i32 65, ; 555
	i32 328, ; 556
	i32 147, ; 557
	i32 47, ; 558
	i32 197, ; 559
	i32 302, ; 560
	i32 218, ; 561
	i32 79, ; 562
	i32 61, ; 563
	i32 301, ; 564
	i32 106, ; 565
	i32 267, ; 566
	i32 222, ; 567
	i32 49, ; 568
	i32 253, ; 569
	i32 264, ; 570
	i32 14, ; 571
	i32 319, ; 572
	i32 182, ; 573
	i32 68, ; 574
	i32 307, ; 575
	i32 171, ; 576
	i32 228, ; 577
	i32 232, ; 578
	i32 315, ; 579
	i32 331, ; 580
	i32 78, ; 581
	i32 237, ; 582
	i32 108, ; 583
	i32 221, ; 584
	i32 185, ; 585
	i32 263, ; 586
	i32 67, ; 587
	i32 180, ; 588
	i32 63, ; 589
	i32 27, ; 590
	i32 160, ; 591
	i32 184, ; 592
	i32 197, ; 593
	i32 230, ; 594
	i32 10, ; 595
	i32 205, ; 596
	i32 11, ; 597
	i32 78, ; 598
	i32 126, ; 599
	i32 83, ; 600
	i32 187, ; 601
	i32 66, ; 602
	i32 107, ; 603
	i32 65, ; 604
	i32 128, ; 605
	i32 122, ; 606
	i32 77, ; 607
	i32 278, ; 608
	i32 268, ; 609
	i32 330, ; 610
	i32 8, ; 611
	i32 236, ; 612
	i32 196, ; 613
	i32 2, ; 614
	i32 44, ; 615
	i32 281, ; 616
	i32 156, ; 617
	i32 128, ; 618
	i32 266, ; 619
	i32 23, ; 620
	i32 133, ; 621
	i32 196, ; 622
	i32 224, ; 623
	i32 255, ; 624
	i32 325, ; 625
	i32 307, ; 626
	i32 29, ; 627
	i32 223, ; 628
	i32 214, ; 629
	i32 62, ; 630
	i32 207, ; 631
	i32 90, ; 632
	i32 87, ; 633
	i32 311, ; 634
	i32 148, ; 635
	i32 209, ; 636
	i32 36, ; 637
	i32 86, ; 638
	i32 244, ; 639
	i32 320, ; 640
	i32 318, ; 641
	i32 315, ; 642
	i32 186, ; 643
	i32 50, ; 644
	i32 6, ; 645
	i32 212, ; 646
	i32 90, ; 647
	i32 21, ; 648
	i32 162, ; 649
	i32 96, ; 650
	i32 50, ; 651
	i32 113, ; 652
	i32 260, ; 653
	i32 130, ; 654
	i32 76, ; 655
	i32 27, ; 656
	i32 320, ; 657
	i32 237, ; 658
	i32 259, ; 659
	i32 7, ; 660
	i32 206, ; 661
	i32 110, ; 662
	i32 260, ; 663
	i32 192, ; 664
	i32 246 ; 665
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 68175bbe5a39140c642dab294cf184ecf72eece0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
