'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "bdc125bafa9ede353b3d7b85d258a73d",
"canvaskit/canvaskit.wasm": "d4972dbefe733345d4eabb87d17fcb5f",
"canvaskit/canvaskit.js": "687636ce014616f8b829c44074231939",
"canvaskit/profiling/canvaskit.wasm": "05ad694fda6cfca3f9bbac4b18358f93",
"canvaskit/profiling/canvaskit.js": "ba8aac0ba37d0bfa3c9a5f77c761b88b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "195f32f4217e034162a6697208586f44",
"index.html": "c9d05806be1d3a0d6407234df2db06fd",
"/": "c9d05806be1d3a0d6407234df2db06fd",
"manifest.json": "c5ccd4dc9b49e6d700a74ea16612b45e",
"main.dart.js": "9614c2e280c8efdfa19dae6e50e5b2a3",
"assets/AssetManifest.json": "d668abf75fd84af6d8c3b883ac55256e",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/NOTICES": "af8f0ad3dfa967d13bb9d4d2a37cb6a2",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/images/2022/plant_fiber.png": "5e11165a84c1782cf3728d862ed69dc7",
"assets/assets/images/2022/pick_axe_3.png": "fc4ad019a79fa63a01ef09395c146122",
"assets/assets/images/2022/steel_plates.png": "7d476803cbba384d93a157e669b53b58",
"assets/assets/images/2022/twine.png": "dc966385a16c53e0f84899bfb3a1dcf8",
"assets/assets/images/2022/pick_axe_2.png": "3b7a0ae7a805e1b5dcc30853d398e957",
"assets/assets/images/2022/plant_fiber2.png": "e0929e5810a227b3afdd096deef6fca9",
"assets/assets/images/2022/barrel.png": "4af0e7840dc15e3496a04d4128aea2aa",
"assets/assets/images/2022/rope.png": "9ce8d982c56a00c87c0e5b4780a3231e",
"assets/assets/images/2022/credits2.png": "291e72d34eb837a5e3e38e90487bbb70",
"assets/assets/images/2022/wood_axe.png": "7fc3747a2a9cd94dd4f095f9ce509b7d",
"assets/assets/images/2022/iron_axe.png": "ac65ace517660796d5028239a6f14c72",
"assets/assets/images/2022/credits.png": "fd6fb3b53c4adcb1231cf98373cac85a",
"assets/assets/images/2022/pick_axe_1.png": "1cef7e0899781ea9b3c463a57f7aae9d",
"assets/assets/images/2022/glass_planes.png": "349d0ca6bb53361012173d551d7e7876",
"assets/assets/images/2022/nails.png": "774f9889d54b94b7d68893afdcf79b3f",
"assets/assets/images/2022/hammer.png": "6243c31344da21c4c21b1700bf1a45fb",
"assets/assets/images/2022/crafting_table.png": "97cccb9d53af42b846fd25e9cb46813c",
"assets/assets/images/2022/steel_axe.png": "a4b55cab1e00253d356dbc85bc7e8507",
"assets/assets/images/1Icons/Icon_11.png": "4362440fb25f4e00560d26f256e0bddc",
"assets/assets/images/1Icons/Icon_06.png": "d2e3004d05dd2cdd54e56431f13b5189",
"assets/assets/images/1Icons/Icon_19.png": "f5f72f2bd37e233b3f78e14ee3872d73",
"assets/assets/images/1Icons/Icon_33.png": "38d3320a46e04a4cb77d8c2d1756fd78",
"assets/assets/images/1Icons/wood.png": "61e8ff1923c22f4c48c1abcdd0322862",
"assets/assets/images/1Icons/Icon_37.png": "59c3d6ffd12b77aa83b1cb95d82809c6",
"assets/assets/images/1Icons/Icon_01.png": "a6e2b9de3f33537cf8952ddbf8d1f1e4",
"assets/assets/images/1Icons/Icon_09.png": "7b69f56f7ae3d1eb0994af4f8de3286e",
"assets/assets/images/1Icons/Icon_25.png": "cea2bc547c7333b3e7e7061510268000",
"assets/assets/images/1Icons/Icon_40.png": "09b7dd86b3df3b548b29860e8b5cadfc",
"assets/assets/images/1Icons/Icon_18.png": "2428e69168d42e28b3a4fae487ea5d18",
"assets/assets/images/1Icons/Icon_38.png": "79d209c6059d2823a122131f093544dc",
"assets/assets/images/1Icons/Icon_20.png": "9190938e2a9357641740f66f8cb3d886",
"assets/assets/images/1Icons/Icon_17.png": "ffbfa19319b14290f845028a1bf13771",
"assets/assets/images/1Icons/Icon_12.png": "5a7248d445313463671f616defe2a45c",
"assets/assets/images/1Icons/Icon_24.png": "c554ffc07ab66d9d9bc76f07e1eaed82",
"assets/assets/images/1Icons/Icon_13.png": "e0929e5810a227b3afdd096deef6fca9",
"assets/assets/images/1Icons/Icon_30.png": "5e2820ee74de98edb1328a21c57f6139",
"assets/assets/images/1Icons/Icon_07.png": "595624205b80b7d4bfcaf3d7603dc945",
"assets/assets/images/1Icons/Icon_03.png": "348a401869c599018be13454ee68c13f",
"assets/assets/images/1Icons/Icon_36.png": "942c72a52715b84c09453c77c79a7c3a",
"assets/assets/images/1Icons/Icon_23.png": "aff855b051da5ac53f4285d8bffeb190",
"assets/assets/images/1Icons/Icon_02.png": "f13c34b9b4f0363268966554eaa4cc2e",
"assets/assets/images/1Icons/Icon_28.png": "74e8ae04c2739cb006026d121fb40535",
"assets/assets/images/1Icons/Icon_39.png": "66322dca4ea2db87da52243141900204",
"assets/assets/images/1Icons/Icon_31.png": "3c3b06c989775000d5529cdbe5295d08",
"assets/assets/images/1Icons/Icon_22.png": "ef6e3bbf3e4d182715346a2d31c72a71",
"assets/assets/images/1Icons/Icon_05.png": "c110a21d61c5f9430f6e5b88fe0d68f3",
"assets/assets/images/1Icons/Icon_32.png": "f01fdc5bb26ff5d0f373cc4aefe30755",
"assets/assets/images/1Icons/Icon_29.png": "be1e051bf731fffdb1c910d383aebfdc",
"assets/assets/images/1Icons/Icon_26.png": "238bdf5040e930527d0bf7a8350c04d4",
"assets/assets/images/1Icons/plank.png": "cc3c0dd7fa310b2037a137877c0668ac",
"assets/assets/images/1Icons/Icon_08.png": "d0d6f2b44cdf57d74e11a8a8f3efa791",
"assets/assets/images/1Icons/Icon_10.png": "bca29a3462694df4aa299136f9b321d8",
"assets/assets/images/1Icons/Icon_27.png": "fd184b8beea107445530499be5f6ba25",
"assets/assets/images/1Icons/Icon_34.png": "aef5df9adfb5326fef3c10f2a8480da2",
"assets/assets/images/1Icons/Icon_35.png": "c46af788509ebede406cc8f3df147abb",
"assets/assets/images/1Icons/Icon_21.png": "a133bd6573d906a06bcbe6d34175240c",
"assets/assets/images/1Icons/Icon_16.png": "3bae36f64e7c56f7e38daaf18db02b7b",
"assets/assets/images/1Icons/Icon_04.png": "8162d91615ec14f73f938614e951b1c7",
"assets/assets/images/1Portraits/Icon21.png": "0b32308ce674b9247cbbc431fae406d4",
"assets/assets/images/1Portraits/Icon18.png": "053fb8d10bd4c86696376da485bb3d51",
"assets/assets/images/1Portraits/Icon5.png": "656ffc341ec83370e2453213e9b4957f",
"assets/assets/images/1Portraits/Icon7.png": "5a6af13787d0c6f4d7d42b0e6e18c903",
"assets/assets/images/1Portraits/Icon19.png": "155ab591fd65c50739dbd85908b82e7f",
"assets/assets/images/1Portraits/Icon33.png": "cd2f46673f6cfc1f4d517fc6681cb027",
"assets/assets/images/1Portraits/Icon25.png": "7ca9c70dc26205315d102e658ffee85d",
"assets/assets/images/1Portraits/Icon39.png": "a22c052d67d0b7128424735372669d4d",
"assets/assets/images/1Portraits/Icon41.png": "f715158d7ba504c888c0294e9f5b5a44",
"assets/assets/images/1Portraits/Icon17.png": "a0b9bc9ee0d6c279084269234aab59c0",
"assets/assets/images/1Portraits/Icon30.png": "64980242c74cf1b8320c936efd61f162",
"assets/assets/images/1Portraits/Icon45.png": "1df89d410cca41f2403c925bb4381931",
"assets/assets/images/1Portraits/Icon8.png": "69f6e1977cc58b40e49c8ba4e5005ac7",
"assets/assets/images/1Portraits/Icon4.png": "8b381dd489883090ff19e4d227b2cd11",
"assets/assets/images/1Portraits/Icon48.png": "acfea76afab04a4c72c2510e415fdb30",
"assets/assets/images/1Portraits/Icon9.png": "b661f15f05e8dec2f46f85e51da3d12c",
"assets/assets/images/1Portraits/Icon47.png": "6d106a36c70932c0dc030c51f2ed80f8",
"assets/assets/images/1Portraits/Icon20.png": "295e88927678c5e8e36b5d797ffed310",
"assets/assets/images/1Portraits/Icon22.png": "e922c42941e192ad9778c18e306127c4",
"assets/assets/images/1Portraits/Icon24.png": "314a3d0468ca8785d8fe676074e04341",
"assets/assets/images/1Portraits/Icon44.png": "bad04b16c2f4880980660c415a9fa480",
"assets/assets/images/1Portraits/Icon31.png": "b6db4ff60051409ceaa392abd25a627e",
"assets/assets/images/1Portraits/Icon28.png": "e6ff584bb043cbe23eade535fbf56b2a",
"assets/assets/images/1Portraits/Icon2.png": "1a8e73ec3a68be623655243da3f52749",
"assets/assets/images/1Portraits/Icon23.png": "74154e933bf9ca7d8b1e8eff52214626",
"assets/assets/images/1Portraits/Icon12.png": "bea83980a1dbde7ba65ba7923a44b3ad",
"assets/assets/images/1Portraits/Icon29.png": "6d60ca472810f26fcefa8aa3e24d8ac0",
"assets/assets/images/1Portraits/Icon1.png": "ff8a6051667d6a6f7e3ae91932fcdd85",
"assets/assets/images/1Portraits/Icon11.png": "cf360dbf906fe4a8a625f9c68d46f532",
"assets/assets/images/1Portraits/Icon10.png": "37273f948b9289b33fcedb62fe3a1764",
"assets/assets/images/1Portraits/Icon3.png": "80bd4eb64d87489c8b3cc649a0e5ec2b",
"assets/assets/images/1Portraits/Icon15.png": "75ad2281ba2fbed2f8be4ea2643729be",
"assets/assets/images/1Portraits/Icon36.png": "e19b07cd0eea419f20c911c831267302",
"assets/assets/images/1Portraits/Icon32.png": "d0048234a5253415a08a0afeb0bbca3b",
"assets/assets/images/1Portraits/Icon40.png": "05286c36095859654ebdc423b56e2ec7",
"assets/assets/images/1Portraits/Icon38.png": "0b5cb33a0e127c079a2cd3af62712277",
"assets/assets/images/1Portraits/Icon16.png": "2f10edb6396e8a3dc48d06b675aa2387",
"assets/assets/images/1Portraits/Icon43.png": "3f950d4b891523f555392fc0fa4b18c1",
"assets/assets/images/1Portraits/Icon13.png": "1560df8285c56398c735f02624104ae9",
"assets/assets/images/1Portraits/Icon26.png": "60a64ee8137650755294c969c7b3d66c",
"assets/assets/images/1Portraits/Icon34.png": "d31e4cb14cbe19ad5ae6c5f6b5cb1265",
"assets/assets/images/1Portraits/Icon37.png": "27373d47203fee3d68bdd4f9b1f4fa6a",
"assets/assets/images/1Portraits/Icon46.png": "8984b3ff38c7a0a10a53e528491b010d",
"assets/assets/images/1Portraits/Icon27.png": "6b8afaa084bb058a2ff551799917d3ef",
"assets/assets/images/1Portraits/Icon14.png": "5fc4639508b3d5712d54658a47b25a4a",
"assets/assets/images/1Portraits/Icon35.png": "eac9190981d0e60da9763c47c5c75c2f",
"assets/assets/images/1Portraits/Icon6.png": "2525d302e6f48745745b810858d6508c",
"assets/assets/images/1Portraits/Icon42.png": "b990846219983860cc2316e969e67e1a",
"assets/assets/images/doodad/lumberHut.png": "b64bb5909e9ea00415693debdc5f6742",
"assets/assets/images/doodad/sawmill.png": "0a396d6313775fd08a6886bd7c430928",
"assets/assets/images/tiles/forest10.png": "acbe8e149d78f730f59ba5b09869bb30",
"assets/assets/images/tiles/03Trees/forest_heavy.png": "83c5feb839b7099086cb7eee07b2edf6",
"assets/assets/images/tiles/03Trees/forest_hill.png": "3f23f0c2c5442f4bff239bb8a6d1c485",
"assets/assets/images/tiles/03Trees/jungle_heavy.png": "a6cdf27a445be3dbda36f89b194b8850",
"assets/assets/images/tiles/03Trees/forest_light.png": "61096b9da46217b6a859551d3171e09e",
"assets/assets/images/tiles/03Trees/trees_hill.png": "ee963afadeb96c0f948b0df7ba43fd92",
"assets/assets/images/tiles/03Trees/jungle_light.png": "39947d7bcc0b64da1616bdb6c9827941",
"assets/assets/images/tiles/03Trees/trees_light.png": "a4d08be3e6b0315dfedb2fc3b45724f9",
"assets/assets/images/tiles/03Trees/trees_heavy.png": "4490ca1152554bbed831224a62e16b8d",
"assets/assets/images/tiles/03Trees/jungle_hill.png": "fb11471391763e7804525db18c2ed323",
"assets/assets/images/tiles/11-mountains/mountain_range_snow.png": "e0f43f32215f7518956a296d026f1a11",
"assets/assets/images/tiles/11-mountains/mountain_snow.png": "cf45d6e0939f556ae079254bc1067b0c",
"assets/assets/images/tiles/11-mountains/volcano_dormant.png": "7b527128388e3efed8eac73da7e980f2",
"assets/assets/images/tiles/11-mountains/volcano.png": "e4d98973800460f45e7ee50110742005",
"assets/assets/images/tiles/11-mountains/mountain.png": "f10a6622a588940046315327d9566d58",
"assets/assets/images/tiles/11-mountains/hills.png": "62aa744c617366ad7782fa0cf5327793",
"assets/assets/images/tiles/11-mountains/mountain_range.png": "1c9c5d83ad112d605fc83b9dd37cf8fd",
"assets/assets/images/tiles/11-mountains/hills_grassy.png": "2af89766fe14c780a7959f2d0946254e",
"assets/assets/images/tiles/00_blank.png": "aebc7a5afc92a4610ff78c8bd8122262",
"assets/assets/images/tiles/forest0.png": "7b23eec14647e50222291fefe739c669",
"assets/assets/images/tiles/05Mountains/mountains.png": "b908aa85df692c74099ab30d26d49742",
"assets/assets/images/tiles/05Mountains/foothills.png": "93fd7ea598acf27a639e3695a9882105",
"assets/assets/images/tiles/05Mountains/badlands.png": "1d3dd4ad0628317ab8012b97a030e221",
"assets/assets/images/tiles/05Mountains/volcano.png": "f0515690e8371bafcf9e500be75528f2",
"assets/assets/images/tiles/05Mountains/mountain.png": "b6e4a019ae89b3f24e6f3be35130a96b",
"assets/assets/images/tiles/05Mountains/hills.png": "3e5ced7579302e26559e7d8a7c0bde59",
"assets/assets/images/tiles/PH2_ThickForest_03.png": "cd5a7509d172ad0fb3e659b99b957f30",
"assets/assets/images/tiles/08-hot_weather/desert_sandy.png": "cc75e5bb43c0ea3996ac8395c3bad908",
"assets/assets/images/tiles/08-hot_weather/desert_rocky.png": "f73f33205d7d0b712266beed143fe04f",
"assets/assets/images/tiles/08-hot_weather/beach.png": "87b0d07921944a196aab7320ce1d2f8b",
"assets/assets/images/tiles/08-hot_weather/rough_rock_hot.png": "d2279b340b14e296088629b0c6cfffee",
"assets/assets/images/tiles/08-hot_weather/desert_coastal.png": "8595e695fa5d236fc63b8483c019812e",
"assets/assets/images/tiles/08-hot_weather/badlands.png": "8f706521e682e7852672fb15ac1357e0",
"assets/assets/images/tiles/08-hot_weather/sand_dunes.png": "f5456063b45606d5587fb14a9573446d",
"assets/assets/images/tiles/08-hot_weather/lava.png": "bbf9a40d3781b71827224c343fd167c0",
"assets/assets/images/tiles/08-hot_weather/cactus.png": "c07897290a052989e5978b4494ee362c",
"assets/assets/images/tiles/08-hot_weather/cactus_heavy.png": "a42bbaa45a8c35878c95a8644f10ad40",
"assets/assets/images/tiles/08-hot_weather/broken_lands.png": "7dae419156623072fbcb923f5742852d",
"assets/assets/images/tiles/07Other/wastelands.png": "39fd3c63f0f7a8f902b48e2174bf27d6",
"assets/assets/images/tiles/07Other/mudflats.png": "2f4cca84ed559fd315498fe26519d9d1",
"assets/assets/images/tiles/07Other/rocky.png": "007b9f8ca3a9ad8d9039976e52c2fe9b",
"assets/assets/images/tiles/07Other/arctic.png": "ed006ee6f1c1b3f75178c02dc16cfa97",
"assets/assets/images/tiles/07Other/arctic_wastes.png": "9a1078861394b9559dc3acca2cf9802c",
"assets/assets/images/tiles/forest100.png": "ac1a04832c81c8625cae2ceb3059268c",
"assets/assets/images/tiles/05-dead_forest/dead_forest.png": "60d995448c2c32b4edb9b9c249bf622f",
"assets/assets/images/tiles/05-dead_forest/dead_forest_wetlands.png": "ffc0c1d82916b781569561fcdc12857a",
"assets/assets/images/tiles/05-dead_forest/dead_forest_heavy.png": "a9b109d52491a5146f29f4241bada9fb",
"assets/assets/images/tiles/05-dead_forest/dead_forest_hills.png": "aa90a19bd583802881fdeee2e5a4b02d",
"assets/assets/images/tiles/05-dead_forest/dead_forest_mountain.png": "17dcb3bf84ce7e0d31192e2b0103b681",
"assets/assets/images/tiles/05-dead_forest/dead_forest_mountain_range.png": "1e0a141a5be5ff4c2f896b8cb6e04869",
"assets/assets/images/tiles/PH2_SmoothMtnGrn_16.png": "08042def716428e4cc83de9b97c64a14",
"assets/assets/images/tiles/forest25.png": "9c1e5cab57fc444003f7b753ec855216",
"assets/assets/images/tiles/02-forest/forest_heavy.png": "22e6540b3e22a71a89934390358b123c",
"assets/assets/images/tiles/02-forest/forest_mixed_heavy.png": "608e8b51185b57feea405c88b818d173",
"assets/assets/images/tiles/02-forest/forest_light.png": "23793353fd8c4bbd25c77b06c6d67f03",
"assets/assets/images/tiles/02-forest/forested_mixed_mountain_range.png": "d815d4bdd83988887b57f0a88300d77b",
"assets/assets/images/tiles/02-forest/forested_mixed_hills.png": "2ad4d9a934d108e0fb78f1aafcbf13b6",
"assets/assets/images/tiles/02-forest/forest_mixed.png": "3b78600c16f92f2a73ed2e88d07a12ed",
"assets/assets/images/tiles/02-forest/forested_mixed_mountain.png": "2543066ebd4790bdedac843a221fbf87",
"assets/assets/images/tiles/02-forest/forest_wetlands.png": "3b360b1f7d88dbf0f5172abb1dcd1372",
"assets/assets/images/tiles/02-forest/forested_mountain.png": "4f3aa9026bd41c5d0b3090752ccf44fe",
"assets/assets/images/tiles/02-forest/forested_hills.png": "3b1da6aae41024b27414e6e2acd29da5",
"assets/assets/images/tiles/02-forest/forested_mountain_range.png": "c56d8265421ac50c8821ee4e7e346455",
"assets/assets/images/tiles/PH2_SmoothMtnGrn_26.png": "3b950c13629d98cac22a009e4101f84c",
"assets/assets/images/tiles/forest50.png": "49d8728567638e1ed335c110cbc4dd6c",
"assets/assets/images/tiles/forest65.png": "e3da66f4c7214ee7745207ec8e484212",
"assets/assets/images/tiles/PH2_ThickForest_04.png": "1eea2c2083cf32298288d30bb3c97def",
"assets/assets/images/tiles/forest90.png": "34d49f41f51c9d0e2c7e43c65330c087",
"assets/assets/images/tiles/forest60.png": "0e94dea505fbc0d0c9baa800b1c6054a",
"assets/assets/images/tiles/10-barren_terrain/open_underdark.png": "3194ed551afeaeb738418568534e6519",
"assets/assets/images/tiles/10-barren_terrain/rough_rock_badlands.png": "9452ee9e69c5288f4589d8bd1ca69d8d",
"assets/assets/images/tiles/10-barren_terrain/solid_rock.png": "4acb0d34c4c49bfd1ac52e1d3d969958",
"assets/assets/images/tiles/10-barren_terrain/rough_rock.png": "3a78ba7a467a2306947139a23d3416e0",
"assets/assets/images/tiles/10-barren_terrain/broken_lands_underdark.png": "e05c4220105c1cab7d6b59d04a172d56",
"assets/assets/images/tiles/12-swamp/moor.png": "3364ef889b2337f8c5eb059c11f24314",
"assets/assets/images/tiles/12-swamp/moss.png": "85ce0a6c53940bf36cafb9b0cfb89234",
"assets/assets/images/tiles/12-swamp/marsh.png": "412e09545e7126996335e0e0f81ea7d9",
"assets/assets/images/tiles/12-swamp/fungal_forest.png": "b5d55f4be4c17f8c12e906234c31d840",
"assets/assets/images/tiles/12-swamp/fungal_forest_heavy.png": "05ffdaa0c50ac31334c469526242016c",
"assets/assets/images/tiles/12-swamp/mud.png": "5edee1d458120e013f9675704010d8ac",
"assets/assets/images/tiles/12-swamp/swamp.png": "c621db965e6011231eaa050e71239b65",
"assets/assets/images/tiles/forest75.png": "0e40e95dc2f0b965fbb1626117f477f6",
"assets/assets/images/tiles/01-farmlands/farlmand_cultivated.png": "304b5e34fdd066b2edf128c3f6e2f418",
"assets/assets/images/tiles/01-farmlands/farmland_fruit.png": "0a40967c3b8491405bfd91a3dc3d0139",
"assets/assets/images/tiles/01-farmlands/farmland_wheat.png": "718f3e425b8a66d4e2bc246b926b1288",
"assets/assets/images/tiles/01-farmlands/farmland.png": "bf67240524a125261482ff11cad45a19",
"assets/assets/images/tiles/03-evergreen_forest/evergreen_heavy.png": "f21bcb72c688a69a9e2e795cbcb586a2",
"assets/assets/images/tiles/03-evergreen_forest/evergreen_wetlands.png": "74801a2f81e7f7cf82abcb03e1c88c37",
"assets/assets/images/tiles/03-evergreen_forest/evergreen_light.png": "634eff202a656057471b6f98c70d8fb5",
"assets/assets/images/tiles/03-evergreen_forest/evergreen_mountain.png": "7f5942f806b18b5b17d939eef94a1acd",
"assets/assets/images/tiles/03-evergreen_forest/evergreen_hills.png": "0059785809bc62c2e88569a8fe25fe85",
"assets/assets/images/tiles/03-evergreen_forest/evergreen_mountainrange.png": "e26f651afab1a54e84639f075f2f4fdf",
"assets/assets/images/tiles/09-water/sea.png": "703f9005d82986631dc3593c8617d952",
"assets/assets/images/tiles/09-water/ocean_deep.png": "4d843a9a739b7017e7203dca1cd7baf0",
"assets/assets/images/tiles/09-water/ocean.png": "c0dfb3028084607c0dc527429f682559",
"assets/assets/images/tiles/09-water/reefs.png": "9a829b651e6903a1d6be224b7b7152a5",
"assets/assets/images/tiles/09-water/kelp_forest.png": "cbd79aa1ff61a8fa55f541506cce3eae",
"assets/assets/images/tiles/09-water/shoals.png": "a708664a1a6e0ce474e87d53e50c595e",
"assets/assets/images/tiles/09-water/kelp_forest_heavy.png": "dcf89850e95004c90e56b861e51b94e6",
"assets/assets/images/tiles/09-water/sea_deep.png": "bc46cd54a444040db39f58e613c727e0",
"assets/assets/images/tiles/04Desert/desert_oasis.png": "62477bdf52baf78ce1a458bd834b1148",
"assets/assets/images/tiles/04Desert/desert_rocky.png": "be8881aa42c5a605a84cebc70e4fef36",
"assets/assets/images/tiles/04Desert/desert_dunes.png": "dfb675a60cbc475ffcc67d05cef1e59b",
"assets/assets/images/tiles/04Desert/desert.png": "5a9141aa94fc5c71296dd865f1b026a2",
"assets/assets/images/tiles/06Swamps/marsh.png": "c1f3553dd24fb76e5ab3955063ad555e",
"assets/assets/images/tiles/06Swamps/swamp.png": "2e4350756556a84991e4b89fef035319",
"assets/assets/images/tiles/06Swamps/fens.png": "4eca1a1bbf3518edc9098a1f08dbbb50",
"assets/assets/images/tiles/07-cold_weather/steppe.png": "0404c2f8951cb2837cfcbeb5ca944c21",
"assets/assets/images/tiles/07-cold_weather/icy_water.png": "2a3547ad5a0f199bbacdb0129423414a",
"assets/assets/images/tiles/07-cold_weather/rough_rock_icy.png": "58786bab44b30077a34904eaf9a6210f",
"assets/assets/images/tiles/07-cold_weather/glacier.png": "985316e3c8f0826db5687487376224be",
"assets/assets/images/tiles/07-cold_weather/icy.png": "10313b973f3aa7df705ae06f83d6ebf8",
"assets/assets/images/tiles/07-cold_weather/snow_fields.png": "83bd32d8854fddc6b9859aa25852a702",
"assets/assets/images/tiles/07-cold_weather/desert_cold.png": "9625650a3a63fcf379bf8223b34e4463",
"assets/assets/images/tiles/07-cold_weather/icy_wetlands.png": "6614548fab9d403bb6e2a26353f70d14",
"assets/assets/images/tiles/08Icons/b_town.png": "b1dc5e9e4e9e5c51770a7839bd84a68b",
"assets/assets/images/tiles/08Icons/b_fort.png": "29105ec9dd0583fb946b6e7c65897e5f",
"assets/assets/images/tiles/08Icons/b_city.png": "08d55c93e3bec6360ee573e12de80f2d",
"assets/assets/images/tiles/08Icons/b_village.png": "e5d60c42ecd8fa0e47435eaf8d2d23f6",
"assets/assets/images/tiles/08Icons/b_castle.png": "cc2bad50c1d563232b26bb41b67e547d",
"assets/assets/images/tiles/08Icons/b_cavern.png": "3e71c0f0058565463b451131bf79151c",
"assets/assets/images/tiles/08Icons/b_tower.png": "d2beaf583c18380153c384236d7e3cff",
"assets/assets/images/tiles/06-grassland/grassland.png": "2349f75595dfcb9358e637676bf8e830",
"assets/assets/images/tiles/06-grassland/shrubland.png": "b39f225cf7a3ddaa4ee3d7b3ad8bdecd",
"assets/assets/images/tiles/06-grassland/savannah.png": "45c0f977b8a176b3796d4e3490ce0d29",
"assets/assets/images/tiles/06-grassland/shrubland_hills.png": "5005d1a349f35d93ed9accb1d4a5bb29",
"assets/assets/images/tiles/06-grassland/grazing_land.png": "60a0c8808632177948f9365c07f7ac97",
"assets/assets/images/tiles/06-grassland/grassland_hills.png": "70246beeaf98c8210e6e73849ae64118",
"assets/assets/images/tiles/06-grassland/grassland_poor.png": "06a359b3bb4fa1c30e75df26ead12659",
"assets/assets/images/tiles/PH2_ThickForest_01.png": "40fef089a96c60bb428f4963f059b67c",
"assets/assets/images/tiles/01Water/water_abyss.png": "e55ce1c8b9ab0acf6f57d4ce2ba81683",
"assets/assets/images/tiles/01Water/water_waves.png": "1fa9540e35ed8bc69604049c3b9760e0",
"assets/assets/images/tiles/01Water/water_deep.png": "ab0581988efd2768e39cb70aec6ced39",
"assets/assets/images/tiles/01Water/water_rocks.png": "5b6be918aa56069d3dbf089c70c53033",
"assets/assets/images/tiles/01Water/water_coast.png": "f4faec2f90277b1b9ca54e9c71caab2c",
"assets/assets/images/tiles/01Water/water_ocean.png": "5d52241565f3dce28874ad690bca9bf9",
"assets/assets/images/tiles/01Water/water_ice.png": "b5cb0d39290c57a694d9b6c5ba08adc2",
"assets/assets/images/tiles/13-Icons/palace_4.png": "083edaee09eb259fcc7584fe35624057",
"assets/assets/images/tiles/13-Icons/mine.png": "a0228ac92a2205ca107004a744ce3481",
"assets/assets/images/tiles/13-Icons/food_2.png": "04f0a800bd0eacf2d30a7f053910457f",
"assets/assets/images/tiles/13-Icons/pyramid_4.png": "9a5d1ee444ed2e69514f2ac59987e141",
"assets/assets/images/tiles/13-Icons/cemetery_2.png": "43edcf8c0886bfc5fe8b6b559d595890",
"assets/assets/images/tiles/13-Icons/monsters_2.png": "aa7fad4c8b599b76e29b89d933695108",
"assets/assets/images/tiles/13-Icons/treasure.png": "772dfd3e4e876da2d35ce847d73500cb",
"assets/assets/images/tiles/13-Icons/ruins_2.png": "c22af38c156d1447cde867675eb1a2e9",
"assets/assets/images/tiles/13-Icons/cathedral.png": "be77145bf356fcffdc9ada4330146990",
"assets/assets/images/tiles/13-Icons/hut_4.png": "36148ce3525ce12151dfffacc8e249e0",
"assets/assets/images/tiles/13-Icons/fishing_town.png": "cdb1b0867da69abc578f3ffb156eb469",
"assets/assets/images/tiles/13-Icons/stable.png": "14f3377cdd48334cef006e8acbeea26b",
"assets/assets/images/tiles/13-Icons/point_of_interest.png": "1bfc2dac8d09bd0508f52c381ae6c615",
"assets/assets/images/tiles/13-Icons/archery.png": "4efaa967182c64cb2b10b9441d3e465f",
"assets/assets/images/tiles/13-Icons/thorns.png": "5ae98cc5674d2cbca37215942d731698",
"assets/assets/images/tiles/13-Icons/labyrinth.png": "7927dbef92f4eb7c74e0ed11ee5bec14",
"assets/assets/images/tiles/13-Icons/temple_2.png": "8fd55e544ce79b607fa42663c647da6e",
"assets/assets/images/tiles/13-Icons/obelisk.png": "31e3d80ecb3c04f832615606b2cec76e",
"assets/assets/images/tiles/13-Icons/storm.png": "8b37c271b2822e54dc44a4fccc410697",
"assets/assets/images/tiles/13-Icons/stronghold_2.png": "0f90a480ca453ef2c287d1d1ed981a69",
"assets/assets/images/tiles/13-Icons/altar.png": "b107223e16df2e4ebe2179da527b009d",
"assets/assets/images/tiles/13-Icons/point_of_interest_3.png": "a52f3a687e0336eec4bc92d9dde997ed",
"assets/assets/images/tiles/13-Icons/ruins_3.png": "ffecb152ce3663e7112c13d234650b59",
"assets/assets/images/tiles/13-Icons/shrine_3.png": "b2a19e4588b08ea7629bdaac2f3acbf8",
"assets/assets/images/tiles/13-Icons/sphynx.png": "a29576bd3ad38f93867fb6ac7fbe22ae",
"assets/assets/images/tiles/13-Icons/large_camp.png": "80346b16a4c5b20dfdbcdd9e30d4cc5d",
"assets/assets/images/tiles/13-Icons/evil_tower.png": "e371a1f310bc92fe51cdf8c8203579ad",
"assets/assets/images/tiles/13-Icons/dungeon_2.png": "74101fcbf9fba7e64bb097530d62cb29",
"assets/assets/images/tiles/13-Icons/dock_2.png": "b6c5018f605bfe8457ded71b96725859",
"assets/assets/images/tiles/13-Icons/pyramid_3.png": "6d07d331b5737026fa9b3e312bf3710a",
"assets/assets/images/tiles/13-Icons/enemy.png": "b26811e03526c48bc5f187fbe639b558",
"assets/assets/images/tiles/13-Icons/church.png": "bbfbe900335d84f4f78c0bf5b9f0c753",
"assets/assets/images/tiles/13-Icons/smithy.png": "193f0a1ee0e1f49b1a4a90c83d8d849e",
"assets/assets/images/tiles/13-Icons/bridge_3.png": "d119b7de1a97b211bfa11b2a76fa16d0",
"assets/assets/images/tiles/13-Icons/ruins_4.png": "f8c31355f81f8810c0262ce7d272eab0",
"assets/assets/images/tiles/13-Icons/tower_2.png": "994cf2eccb90b5bfa7fd2b14b8558a3e",
"assets/assets/images/tiles/13-Icons/cave.png": "d8bfc3e97f57ade8d56f77e841399d7d",
"assets/assets/images/tiles/13-Icons/building.png": "25466a282f4edf53baf9ef42afeaceb6",
"assets/assets/images/tiles/13-Icons/capital_3.png": "38c1671d34d0ae7b35505cfbc5ae4d3b",
"assets/assets/images/tiles/13-Icons/stronghold.png": "2076dd932ff3dbeeebc852df5aa0be6d",
"assets/assets/images/tiles/13-Icons/tower_4.png": "3453e0c2dc88a1ad277beec75cd69d05",
"assets/assets/images/tiles/13-Icons/enemy_3.png": "ef79b8e61b488161011211b0c75df31c",
"assets/assets/images/tiles/13-Icons/dock.png": "d3e83a9b937d4f4ac00029f0858a2032",
"assets/assets/images/tiles/13-Icons/statue.png": "de7ea5365d946b90a6de881c46d4d5e2",
"assets/assets/images/tiles/13-Icons/landmark_2.png": "e004ba06e487d609957ed10210b93cdb",
"assets/assets/images/tiles/13-Icons/settings.yml": "b9da9e6a7b7ce91621b5edf94fcd649c",
"assets/assets/images/tiles/13-Icons/ship.png": "2c1fa49197dbe64b97921f4465b57ae7",
"assets/assets/images/tiles/13-Icons/enemy_2.png": "b7d04ae2d9d4db2f7578ef7387408deb",
"assets/assets/images/tiles/13-Icons/altar_2.png": "8893453292c6eeb392f48d210a6905a8",
"assets/assets/images/tiles/13-Icons/food.png": "ae3e2859e3aa85e426b432489560da47",
"assets/assets/images/tiles/13-Icons/camp.png": "fe181356bc29be3a75839dd70904a361",
"assets/assets/images/tiles/13-Icons/tower_3.png": "5cbecaea5a2facfaedc79252e33a0bf8",
"assets/assets/images/tiles/13-Icons/ziggurat.png": "83a5c49ed0ed9e40933f8c00c4d9e545",
"assets/assets/images/tiles/13-Icons/bridge_2.png": "cb54e68806eeb24ae767794eebfb39b1",
"assets/assets/images/tiles/13-Icons/temple_8.png": "3876482470a0e56fd964924833c311d0",
"assets/assets/images/tiles/13-Icons/flag.png": "3159b16d2881b20e55498f84c9e659b6",
"assets/assets/images/tiles/13-Icons/hut_2.png": "7e7bf04f574da8dc71082891947bb2d6",
"assets/assets/images/tiles/13-Icons/bridge.png": "40136c84afaf27469c17373e4f80d69e",
"assets/assets/images/tiles/13-Icons/waterfall_2.png": "12a070226a1b064576bb1ba89371bd0a",
"assets/assets/images/tiles/13-Icons/house.png": "643d5864f7013de16c19a35d2591ce53",
"assets/assets/images/tiles/13-Icons/capital_2.png": "c949a03c943c835ef5164636fffd4369",
"assets/assets/images/tiles/13-Icons/horses.png": "d37efd85f35eb31785d531244ca65c54",
"assets/assets/images/tiles/13-Icons/fort.png": "09494004d2dd56e00eb0a9a8f8a9de38",
"assets/assets/images/tiles/13-Icons/evil_2.png": "06f668eb9d5b58ddf9451f9a8ed8d44c",
"assets/assets/images/tiles/13-Icons/cemetery.png": "c4d15ca785037f37211d92e98d880719",
"assets/assets/images/tiles/13-Icons/statue_2.png": "e3d61cf7e9cc16ede36b2972f3a4c2b4",
"assets/assets/images/tiles/13-Icons/weapons.png": "1565883ec4a50963487a15994bf5f39b",
"assets/assets/images/tiles/13-Icons/trap.png": "57f53b6858fa3e7b132398f24859ec4d",
"assets/assets/images/tiles/13-Icons/stronghold_3.png": "d5811d7916356a3831379919ea7f3a21",
"assets/assets/images/tiles/13-Icons/watchtower.png": "f3b2d108ad9dab3f3a9ccf971c817212",
"assets/assets/images/tiles/13-Icons/temple_7.png": "c7466107f1460c1275033f471771d707",
"assets/assets/images/tiles/13-Icons/city.png": "2ae704e194923e6d71374163b99c16c7",
"assets/assets/images/tiles/13-Icons/crater.png": "c0c51fa0cfe7f1643a377fc2d813b9fd",
"assets/assets/images/tiles/13-Icons/monsters_3.png": "3bb85a3c09587ff103c27b9a6154a60b",
"assets/assets/images/tiles/13-Icons/cemetery_3.png": "ceb14e8840d082c85042d7545a854e56",
"assets/assets/images/tiles/13-Icons/tavern.png": "5df0210305508a784a3d298e4a509912",
"assets/assets/images/tiles/13-Icons/ship_fleet.png": "72230d949a7cc29c1c420624e295f185",
"assets/assets/images/tiles/13-Icons/portal.png": "b627654bcf0852caa927a53e6c6cc616",
"assets/assets/images/tiles/13-Icons/camp_2.png": "478fe334e00a86b6987d7bbd995f7971",
"assets/assets/images/tiles/13-Icons/fort_3.png": "215dd835015f50ffb7de410106b6f23b",
"assets/assets/images/tiles/13-Icons/mill.png": "985af5aca393efbed2cbb6484aed40d5",
"assets/assets/images/tiles/13-Icons/market.png": "dde5718907e8a3d546e1787c0b381057",
"assets/assets/images/tiles/13-Icons/landmark_3.png": "f5d685bd429e794489424e7ccd6c8976",
"assets/assets/images/tiles/13-Icons/danger_3.png": "2a04b59892ff8c41e23048559ce79301",
"assets/assets/images/tiles/13-Icons/house_2.png": "e78588e94261056da5a8ead90b196a7b",
"assets/assets/images/tiles/13-Icons/shrine_2.png": "9f5b832880e6476eb71cee8dd648b058",
"assets/assets/images/tiles/13-Icons/hut_3.png": "68dfd4c8acb6b61c914d36a6e7f9880f",
"assets/assets/images/tiles/13-Icons/shield.png": "5515fd431100e9d5f74710fc5886ad2d",
"assets/assets/images/tiles/13-Icons/monolith.png": "706969cef50c9ade87615280fd493a00",
"assets/assets/images/tiles/13-Icons/fort_2.png": "e8c2acd2372c0701ee3527ced0302077",
"assets/assets/images/tiles/13-Icons/labyrinth_2.png": "7b1af7f98e1f2bf1a607d5d5e9430c45",
"assets/assets/images/tiles/13-Icons/palace.png": "f76a001dd527ff0e865c3f2581b6214a",
"assets/assets/images/tiles/13-Icons/shipwreck.png": "aa5c91f76eef8dceed52fedf2ff328af",
"assets/assets/images/tiles/13-Icons/ruins.png": "c0fe161d9674573ea87d22928f362a1c",
"assets/assets/images/tiles/13-Icons/cavern_2.png": "ffe3f0dc77ba72ef7d8eb3c990e4c734",
"assets/assets/images/tiles/13-Icons/palace_3.png": "4afd84e737527d2ea9620b0e02849980",
"assets/assets/images/tiles/13-Icons/horses_2.png": "b8709c3713a9984ad8b2c25f40b35099",
"assets/assets/images/tiles/13-Icons/monolith_2.png": "491f44c877f869568c46edda15e58742",
"assets/assets/images/tiles/13-Icons/evil.png": "3302c52f23f95af395ef5bb64288300c",
"assets/assets/images/tiles/13-Icons/point_of_interest_4.png": "e148f796fcf8cfdc3a452d98deba78ec",
"assets/assets/images/tiles/13-Icons/market_2.png": "a647dd991391486cb4f7fea11c6479b4",
"assets/assets/images/tiles/13-Icons/temple_9.png": "d0e3c3d79da1f438c14680005d0ad0d3",
"assets/assets/images/tiles/13-Icons/temple_5.png": "c65c23ab8add3adf82e56eec26a02e71",
"assets/assets/images/tiles/13-Icons/obelisk_2.png": "f3edb488ce40a60d6f8d3dbb41928909",
"assets/assets/images/tiles/13-Icons/fort_4.png": "9b4c0b4cf570a0cc664b57de48cb8d0d",
"assets/assets/images/tiles/13-Icons/dungeon.png": "fb04bd0a1dfaeff1877edf7e44fe0cbb",
"assets/assets/images/tiles/13-Icons/castle_2.png": "2080cfa12ec48b692d72050c3fdc343e",
"assets/assets/images/tiles/13-Icons/beast.png": "7c8630b8c96f52b2e9e65ba508aaa879",
"assets/assets/images/tiles/13-Icons/large_fort.png": "39168b21aa9e0e7a3faf08ce3cac9c2a",
"assets/assets/images/tiles/13-Icons/shrine.png": "8234a8e63728d5845af7bb88a0c4dd99",
"assets/assets/images/tiles/13-Icons/point_of_interest_2.png": "3683646c3cba80e15ddbbe88834574c1",
"assets/assets/images/tiles/13-Icons/cattle.png": "cb1ec474af55ffa413876742e3ff47e8",
"assets/assets/images/tiles/13-Icons/danger.png": "1d4095d26b09e7de1a13deacccee1ba8",
"assets/assets/images/tiles/13-Icons/tavern_2.png": "1f6240815ea9ad37cff75bf5c47777e0",
"assets/assets/images/tiles/13-Icons/temple_3.png": "0d5b9c5c4c122e3c964ee6888f953f21",
"assets/assets/images/tiles/13-Icons/capital.png": "d52c4a9fb32dcedd574e54c878a0d8c0",
"assets/assets/images/tiles/13-Icons/horses_3.png": "74a8859495f1fdfbbc9c225536fdbfa3",
"assets/assets/images/tiles/13-Icons/cattle_2.png": "bbb4d4f99bcb1fe8353018c6d738cbdc",
"assets/assets/images/tiles/13-Icons/windmill.png": "a67b0b87a412b6beb480a4d62e07d940",
"assets/assets/images/tiles/13-Icons/oasis.png": "e5e775d2f29f02a7941f65f02648cec1",
"assets/assets/images/tiles/13-Icons/windmill_2.png": "7fe55998dae1ff4f68b721c483f3512e",
"assets/assets/images/tiles/13-Icons/crypt.png": "bf468f6551fdd0ce5eb024fc0e87eaec",
"assets/assets/images/tiles/13-Icons/pyramid_5.png": "c3a1a1060317ac1588e15b8c8f17c288",
"assets/assets/images/tiles/13-Icons/temple_6.png": "64a64d0d03f339a233badf1dbbdc8fe3",
"assets/assets/images/tiles/13-Icons/castle.png": "ac0958fddab59769efe09fdcb3196ab1",
"assets/assets/images/tiles/13-Icons/monsters.png": "e50260aec7b2f89a6ea7a3a8551dae08",
"assets/assets/images/tiles/13-Icons/totem.png": "efa928ff18a8b6cd66f37af6e38d0da9",
"assets/assets/images/tiles/13-Icons/temple.png": "f1b4401dce6559763b6c8c26308d877b",
"assets/assets/images/tiles/13-Icons/market_3.png": "48c1072ecf36b5f615636da15aa9bc0d",
"assets/assets/images/tiles/13-Icons/evil_tower_2.png": "bf9cbdee209580c7c6028edeaf798bc4",
"assets/assets/images/tiles/13-Icons/town_3.png": "11bee9aaa3ad13fc982fbd5ef68b212c",
"assets/assets/images/tiles/13-Icons/palace_2.png": "58e58259d4ac587efd9eb3326fb63dc7",
"assets/assets/images/tiles/13-Icons/archery_2.png": "1124cfbe500646f641d89cbd65d9a8d2",
"assets/assets/images/tiles/13-Icons/campsite.png": "55cf628f32ab4f84e9d442b5c0d76d27",
"assets/assets/images/tiles/13-Icons/town.png": "c9530484e8bc6db506267b5091ee2e73",
"assets/assets/images/tiles/13-Icons/temple_4.png": "1c13a51b26dec7b111d58891819fda58",
"assets/assets/images/tiles/13-Icons/pyramid_2.png": "14354a8b18363892113484624ed7d665",
"assets/assets/images/tiles/13-Icons/arrow.png": "2b72c93f3f6c92ac17f52ed092e29cbc",
"assets/assets/images/tiles/13-Icons/totem_2.png": "00b875d975db899da3e188e7aa9b71bf",
"assets/assets/images/tiles/13-Icons/town_4.png": "06e9f6e04e0a03e4cede3170e10eb9c1",
"assets/assets/images/tiles/13-Icons/lighthouse.png": "ea56871e0959eb5a8b758f4cdc07eb62",
"assets/assets/images/tiles/13-Icons/cross.png": "87e0d413b235b3c500444e594530cf22",
"assets/assets/images/tiles/13-Icons/weapons_2.png": "cf338004dcb141fc5f711845ba0538d2",
"assets/assets/images/tiles/13-Icons/hut.png": "81a06ee4e7533ec61fc54555172da52f",
"assets/assets/images/tiles/13-Icons/castle_3.png": "63349bd551d8c774471441d6b683693b",
"assets/assets/images/tiles/13-Icons/town_2.png": "69deda91543255ea736139c86f8aa99c",
"assets/assets/images/tiles/13-Icons/shrine_4.png": "f6ecde3ccba8e2b8c73cb5581e2f613c",
"assets/assets/images/tiles/13-Icons/tower.png": "cc45dada0d11d47d77e2347186d71d55",
"assets/assets/images/tiles/13-Icons/fish.png": "ca9e4e3fd137c55ab1febd4c38230b55",
"assets/assets/images/tiles/13-Icons/danger_2.png": "bd6a5bfdb4baf1b3aa80dc445b790cf5",
"assets/assets/images/tiles/13-Icons/landmark.png": "9d4dd571de591f64b94840c540a3bbff",
"assets/assets/images/tiles/13-Icons/pyramid.png": "87556a878bce868a1b117191a7df6357",
"assets/assets/images/tiles/13-Icons/weapons_3.png": "bf5a4cdb70e0d1e77bafe5127a5b2156",
"assets/assets/images/tiles/13-Icons/waterfall.png": "a6ef7218082561e127237f583a7d786a",
"assets/assets/images/tiles/02Grass/plains.png": "3fc0c305c6c52834bed9e435aa42de64",
"assets/assets/images/tiles/02Grass/shrubland.png": "b1903d15eeade4cb2c3bfef2abeeaf34",
"assets/assets/images/tiles/02Grass/prairie.png": "5ecc1531f8f5228cff234c9c139db551",
"assets/assets/images/tiles/02Grass/farmland.png": "6da21e1241cebad11290312198e57b9b",
"assets/assets/images/tiles/04-jungle/jungle_heavy.png": "4a43bc73d328a92f64bd53e31fc9b5c8",
"assets/assets/images/tiles/04-jungle/jungle_mountain.png": "146f787eabffb432d4822c6032f7244b",
"assets/assets/images/tiles/04-jungle/jungle_light.png": "82fc0826913252acf052ad3e11c8e1a4",
"assets/assets/images/tiles/04-jungle/jungle_mountain_range.png": "f113f2f7ad7cc52cad89207ae68065f2",
"assets/assets/images/tiles/04-jungle/jungle_wetlands.png": "862c136e123515862184fb0cd7cf91d1",
"assets/assets/images/tiles/04-jungle/jungle_hills.png": "a7ad417be5f85d74f9213f20bd3b39c6",
"assets/assets/images/tree.png": "5a56b39524463019e7fc3baac692a512",
"assets/assets/images/ore.png": "7d52ed46eaa75918d9be696c5b003471",
"assets/assets/images/money.png": "f25780d9354df6892c94968b9e80bc6b",
"assets/assets/images/drills/7.png": "53b701358639dc702116064368ac5d17",
"assets/assets/images/drills/4.jpg": "3382e157eff880f737c2c6849d927b4a",
"assets/assets/images/drills/6.jpg": "7a62d87fb7a0b8c5ec8eaafb958f5687",
"assets/assets/images/drills/3.png": "5f5120fa7f296fa0c83ab7cf848c14a8",
"assets/assets/images/drills/1.jpg": "0f87760b6a85e7cc700d6468dbd33217",
"assets/assets/images/drills/5.png": "736c085e2b5b569446e04ec7bcd43248",
"assets/assets/images/drills/2.jpg": "c5b8ab651050598fa9432b3a4f5d54a5",
"assets/assets/images/placeholder.png": "e1b1e2c2eea8f697548541185407f4f6",
"assets/assets/images/forestTest/forest10.png": "acbe8e149d78f730f59ba5b09869bb30",
"assets/assets/images/forestTest/forest0.png": "78e0c661c3bb31ae2cb2801c500acea4",
"assets/assets/images/forestTest/forest100.png": "ac1a04832c81c8625cae2ceb3059268c",
"assets/assets/images/forestTest/forest25.png": "9c1e5cab57fc444003f7b753ec855216",
"assets/assets/images/forestTest/forest50.png": "49d8728567638e1ed335c110cbc4dd6c",
"assets/assets/images/forestTest/forest65.png": "e3da66f4c7214ee7745207ec8e484212",
"assets/assets/images/forestTest/forest90.png": "34d49f41f51c9d0e2c7e43c65330c087",
"assets/assets/images/forestTest/forest60.png": "0e94dea505fbc0d0c9baa800b1c6054a",
"assets/assets/images/forestTest/forest75.png": "0e40e95dc2f0b965fbb1626117f477f6",
"assets/assets/images/empty_inventory_slot.png": "d76b32eb6eff7d01258fc62e36580f24",
"assets/assets/images/minerals/tile115.png": "e4af8e168c7052e0afc64ba7de005a94",
"assets/assets/images/minerals/tile147.png": "fddd3734438236ba284f35e3646e3b14",
"assets/assets/images/minerals/tile085.png": "461f431e8615c4d5fd1e3af8abaa40fd",
"assets/assets/images/minerals/tile018.png": "9406ebf03ef665db02c30dc1c6550e64",
"assets/assets/images/minerals/tile053.png": "2ccc8125cb620a9a255f08fb68584b5f",
"assets/assets/images/minerals/tile162.png": "21aebdf485b02eb2ecf5be74ee8e6e9e",
"assets/assets/images/minerals/tile149.png": "3c6f6057245e938504cde67d16cdeb83",
"assets/assets/images/minerals/tile114.png": "19686a29aa92396e35fe7a974a68d8a3",
"assets/assets/images/minerals/tile160.png": "799238a587c4c1617362ca4c4cf12712",
"assets/assets/images/minerals/copper_ore.png": "53619b340c770faa28f25d213a44c8bd",
"assets/assets/images/minerals/tile165.png": "39732358e4e44f8dc8bafe3fb1b028d6",
"assets/assets/images/minerals/coal.png": "96167be922273714e4bc2cb85c2c9418",
"assets/assets/images/minerals/tile176.png": "ebc3392fbc251b9cac69756b1a143906",
"assets/assets/images/minerals/tile116.png": "a7c40d8b348338b750e9e4e5bf9cd60d",
"assets/assets/images/minerals/tile180.png": "21d2c6e4f36e03cf0822f19a795723b7",
"assets/assets/images/minerals/tile052.png": "a8875f535ffb7958d58a4049fffcb888",
"assets/assets/images/minerals/tile005.png": "dac4a72899db29f94cb5df16aa7c544a",
"assets/assets/images/minerals/tile038.png": "4c4a242aefcc89c39873088c9f1ed120",
"assets/assets/images/minerals/tile068.png": "c5370d12e02326b6ed5c3ff55629dd71",
"assets/assets/images/minerals/tile183.png": "0231f3895518df00b1f630f36383b469",
"assets/assets/images/minerals/tile133.png": "345944b21ce60a8b055740d2ac705652",
"assets/assets/images/minerals/tile177.png": "2db479df4104f60366ed8c0f259bd6cc",
"assets/assets/images/minerals/tile033.png": "cf5142763af2bea8d9faac66dcb7ab90",
"assets/assets/images/minerals/bronze_bar.png": "6b07c9345bf2b37d41f7b23e1be6e373",
"assets/assets/images/minerals/tile049.png": "9b8d4587592850e89b91a029707c39df",
"assets/assets/images/minerals/unknown_gemstone.png": "7ce812a4fc98ac4f1ee47019764d2d3b",
"assets/assets/images/minerals/tile086.png": "32f44923c234378a49f1b7f49e42131f",
"assets/assets/images/minerals/tile163.png": "a64d899e03aaa62d276efbbaa0dab1a5",
"assets/assets/images/minerals/tile117.png": "f01e45a1cc9d23341adba851d7fe53b1",
"assets/assets/images/minerals/tile021.png": "1fb747ceb0557d9f81f02283bfd9dd53",
"assets/assets/images/minerals/tile084.png": "6ed4aa31ca93441448ed00bb884dcedb",
"assets/assets/images/minerals/tile050.png": "925a43d4283aff32f24b2ac3b429c949",
"assets/assets/images/minerals/iron_bar.png": "b5881bf6863e907a33979131b074ec06",
"assets/assets/images/minerals/tile048.png": "254a18d70af1b9481086de43296b7943",
"assets/assets/images/minerals/tile070.png": "cd86bc8ec03aedec467b33b624f1df26",
"assets/assets/images/minerals/tile066.png": "52fa150056b21e76e1e5cee9aacfab5f",
"assets/assets/images/minerals/tile148.png": "e9c20901cb09668579a7b0f123aa2abe",
"assets/assets/images/minerals/tile131.png": "2ac7450b00a114054b132aee5b0556a3",
"assets/assets/images/minerals/copper_bar.png": "524a90a2d4e93f0d8bb08fcbc30760ed",
"assets/assets/images/minerals/tile181.png": "9fca2d521065d4066c4e8ec1f4e2553e",
"assets/assets/images/minerals/tile101.png": "12fa427f4918bf596024cb10963c4d1c",
"assets/assets/images/minerals/tile145.png": "eac0bffc06d60c33e46c00f5338ebde6",
"assets/assets/images/minerals/tile000.png": "f8337779c97e044730929769b4f9e867",
"assets/assets/images/minerals/tile118.png": "5700c7c22afe93db95859dfd7080823a",
"assets/assets/images/minerals/tile064.png": "416e7afa0d0a90ff35f13227c6d0d565",
"assets/assets/images/minerals/tile097.png": "c7e472b748c8bbce6600515384c82c79",
"assets/assets/images/minerals/tile132.png": "e4be9ce4768aefc0c9e9350d40a0905c",
"assets/assets/images/minerals/tile051.png": "94ce027fa5555bac77005e39784f1ec8",
"assets/assets/images/minerals/tile098.png": "10febde5368d1793a898f2dc0b0d4324",
"assets/assets/images/minerals/tile037.png": "e9d434790177446e84c2e2dc6d2ffe0c",
"assets/assets/images/minerals/tile113.png": "a85501082db0ba4f9b3fe9e32074cb2f",
"assets/assets/images/minerals/tile003.png": "f28a5a667afdc16e1133cd60fb4ad417",
"assets/assets/images/minerals/tile112.png": "0ddf161fcad61055e2fb0b46eb1d73a6",
"assets/assets/images/minerals/tile146.png": "f7537d090a3170e30c95217883886e87",
"assets/assets/images/minerals/tile100.png": "ae3e5c39a6235036dd56074855aa4de7",
"assets/assets/images/minerals/tile096.png": "96cc2828bdfe81f1ab5d92ced1a28c70",
"assets/assets/images/minerals/tile161.png": "2e34a3bce3919c9c5166158fd8d0b920",
"assets/assets/images/minerals/iron_ore.png": "bf679247071c64d306a65e0bd0ca78e2",
"assets/assets/images/minerals/rock_sharp.png": "91c2a6cd3354e3cf449de2e4db938ace",
"assets/assets/images/minerals/tile069.png": "a6bbfa56659c41c21a7cb5cfbff7f720",
"assets/assets/images/minerals/tile001.png": "4730be6227bdc1cdf2225c459f9a3666",
"assets/assets/images/minerals/tile035.png": "0e5aada348b3115d3f3def2a0ff89cdb",
"assets/assets/images/minerals/tile067.png": "da45e750b3d2edaf6f5cad4cc9819a40",
"assets/assets/images/minerals/tile164.png": "4b00898312423e8b15cf549233e06f0b",
"assets/assets/images/minerals/tile036.png": "6cb754363d3adcf6781ffc16f2e9243c",
"assets/assets/images/minerals/rock.png": "e5d889f06ba45c062e2dd5e076926a41",
"assets/assets/images/minerals/tile034.png": "bdd0ea875a6925291d25bc626e80c422",
"assets/assets/images/minerals/tile083.png": "df92263d37fef7c132ec6a824ff643bb",
"assets/assets/images/minerals/tile054.png": "51e80dd3b32a43af0e6e4946c38ca319",
"assets/assets/images/minerals/tile002.png": "7183607e3f954495ac1a40c2f2aa4ac2",
"assets/assets/images/minerals/tile065.png": "4eab8aabe5440fd892a12361c7fae6e1",
"assets/assets/images/minerals/tile082.png": "797c62df1ba2ff0e76c4c31fb9332f17",
"assets/assets/images/minerals/tile004.png": "f24545bacb4af0decca21bc87b2d019a",
"assets/assets/images/minerals/tile099.png": "c983df2608032e9e98158db2a4a9f6fc",
"assets/assets/images/all/water1.png": "92ea082dc42de2d71d404a2aa5cf0df6",
"assets/assets/images/all/resources.png": "e6faa14555997a77ae166d04f40046d0",
"assets/assets/images/all/ironOre.png": "2043af7460bae06bbe292fbdbfcd4167",
"assets/assets/images/all/fishingHut.png": "5913b81cd5b355b24e4f7f4333c28a77",
"assets/assets/images/all/grass2.png": "e7e4fe1ddc00198ea054de61490dd65a",
"assets/assets/images/all/grass3.png": "e4142aa8956719c377a518e224347b58",
"assets/assets/images/all/coastal1.png": "f07e1d618cf9c3d5f349a1a43e649176",
"assets/assets/images/all/resources_sprite_page.png": "30315ad95ce0fab7df27e81c0cd04ae2",
"assets/assets/images/all/grass1.png": "36b26204aba9255ebada179730b46ed7",
"assets/assets/images/all/PH2_AnimalOverlays_03.png": "eb9ee14fb9a713ddd27f6798486e6653",
"assets/assets/images/all/resources_outlined.png": "9a221b0d19283e8808a6ae1d1732ce97",
"assets/assets/images/all/fishing.png": "af027498e5fa5662a19aca1c85197d08",
"assets/assets/images/all/coastal3.png": "07fceb4174e24a6b7d35b38a8ff43436",
"assets/assets/images/all/water3.png": "5e46b2f8a438d127e2bf701b1b2fdeb2",
"assets/assets/images/all/water4.png": "5a3c59ccf45190021ee8f6b3f83d0ee0",
"assets/assets/images/all/grass4.png": "14fe6922290e65e4abb2f31592e6e399",
"assets/assets/images/all/water2.png": "a02ae1511a21d60c8428bd605c002570",
"assets/assets/images/all/coastal2.png": "adaaabc912c34802fe28b9bbb72f59d0",
"assets/assets/images/all/PH2_FjordSummer_75.png": "1c903a5002538a4a50610e37c5e07332",
"assets/assets/images/all/PH2_AnimalOverlays_00.png": "c3be1d59ebffdff342d79be7a608221b",
"assets/assets/images/all/water5.png": "b5e2d06c68a1349f812c2046a89df624",
"assets/assets/images/all/PH2_AnimalOverlays_16.png": "8f7bbad23ccb277dd34ad6c87aa36740",
"assets/assets/images/all/PH2_FjordSummer_76.png": "153ca2f48352b9bb929e95b93fbbc0a4",
"assets/assets/images/all/house1.png": "a6f5ed574fd9f1ffe2a62f6aa91a25ea",
"assets/assets/images/all/PH2_DeadPlains_13.png": "d37550a4ea0ce3833b792a15e52325b9",
"assets/assets/images/all/foodTest1.png": "d16e184c0fe7d638940c4d07f1802274",
"assets/assets/json/quests.json": "48e4466590488e12008f1be513b21e15",
"assets/assets/json/items.json": "3892ecb00e1527042f1b44eb93141d12",
"assets/assets/json/miners.json": "052b930b9c30a271d92b41bd8c392067",
"assets/assets/json/store_listings.json": "25c50c7dbe955ecb74451d8a7249dd94",
"assets/packages/window_manager/images/ic_chrome_maximize.png": "af7499d7657c8b69d23b85156b60298c",
"assets/packages/window_manager/images/ic_chrome_unmaximize.png": "4a90c1909cb74e8f0d35794e2f61d8bf",
"assets/packages/window_manager/images/ic_chrome_minimize.png": "4282cd84cb36edf2efb950ad9269ca62",
"assets/packages/window_manager/images/ic_chrome_close.png": "75f4b8ab3608a05461a31fc18d6b47c2",
"assets/shaders/ink_sparkle.frag": "a04e492a05f9fd1a8cc6f12163b184dd",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
