// final instance = GetIt.instance;

// Future<void> initAppModule() async {
//   final sharedPrefs = await SharedPreferences.getInstance();

//   // shared prefs
//   instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

//   // App prfs
//   instance
//       .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));

//   // network info
//   instance.registerLazySingleton<NetworkInfo>(
//       () => NetworkInfoImplementer(DataConnectionChecker()));

//   // Dio Factory
//   instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));

//   // App Service client
//   final dio = await instance<DioFactory>().getDio();
//   instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

//   // remote Datasource

//   instance.registerLazySingleton<RemoteDataSource>(
//       () => RemoteDataSourceImplementer(instance()));

//   // repository
//   instance.registerLazySingleton<Repository>(
//       () => RepositoryImpl(instance(), instance()));
// }

// initLoginModule() {
//   if (!GetIt.I.isRegistered<LoginUseCase>()) {
//     instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
//     instance.registerFactory<LoginViewModel>(() => LoginViewModel(instance()));
//   }
// }
