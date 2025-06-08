import 'package:elaro_version_nodir/features/main/presentation/widgets/re_product_list.dart';
import 'package:elaro_version_nodir/features/main/presentation/widgets/title_widget.dart';
import 'package:elaro_version_nodir/features/products/presentation/blocs/products_bloc/products_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/dependency_injection_instance.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleWidget(
              title: "Tavsiya etilgan mahsulotlar",
              onTap: () {},
              btnText: "Hammasi",
            ),
            SizedBox(height: 15),
            BlocProvider(
              create: (context) =>
                  sl<ProductsBlocBloc>()..add(ProductsFetchEvent()),
              child: BlocBuilder<ProductsBlocBloc, ProductsBlocState>(
                builder: (context, state) {
                  if (state is ProductsBlocFailureState) {
                    return SizedBox();
                  }
                  if (state is ProductsBlocSuccessState) {
                    return ReProductList(products: state.data.data);
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
            ),
            SizedBox(height: 40),
            TitleWidget(
              title: "Chegirmadagi mahsulotlar",
              onTap: () {},
              btnText: "Hammasi",
            ),
            SizedBox(height: 15),
            // BlocProvider(
            //   create: (context) =>
            //       sl<ProductsBlocBloc>()..add(ProductsFetchDiscountEvent()),
            //   child: BlocBuilder<ProductsBlocBloc, ProductsBlocState>(
            //     builder: (context, state) {
            //       if (state is ProductsDiscountFailure) {
            //         return Container(width: 40, height: 40, color: Colors.red);
            //       }
            //       if (state is ProductsDiscountSuccess) {
            //         return ReProductList(products: state.datas);
            //       }
            //       return Center(child: CircularProgressIndicator());
            //     },
            //   ),
            // ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
