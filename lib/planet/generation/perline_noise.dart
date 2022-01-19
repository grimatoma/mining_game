import 'package:fast_noise/fast_noise.dart';

List<List<double>> executeNoise(int w, int h, int seed) => noise2(w, h,
    seed: seed,
    noiseType: NoiseType.Cubic,
    frequency: 0.4,
    cellularReturnType: CellularReturnType.Distance2Add);
