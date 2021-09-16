import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/modules/home/domain/usecases/get_features_usecase.dart';
import 'package:flutter_playground/modules/home/presentation/home_cubit.dart';
import 'package:flutter_playground/modules/home/presentation/home_state.dart';
import 'package:flutter_playground/modules/qrcode/presentation/qrcode_page.dart';
import 'package:stark/stark.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Stark.get<HomeCubit>(),
      child: Scaffold(
        appBar: AppBar(title: Text('Flutter playground')),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (_, state) {
            if (state is LoadedHomeState) {
              return Center(
                child: Column(
                  children: state.features
                      .map(
                        (e) => TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => QrCodePage()),
                            );
                          },
                          child: Text(
                            e.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
