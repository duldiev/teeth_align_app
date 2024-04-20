import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/account_list_tile.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';

@RoutePage()
class AccountListScreen extends StatelessWidget {
  const AccountListScreen({
    super.key,
    required this.accounts,
  });

  final List<AccountEntity> accounts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: Text('List')),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: Column(
          children: [
            for (int i = 0; i < accounts.length; i += 2) ...[
              Row(
                children: [
                  Expanded(
                    child: AccountListTile(
                      account: accounts[i],
                    ),
                  ),
                  Gap(4.w),
                  if (i + 1 < accounts.length) ...[
                    Expanded(
                      child: AccountListTile(
                        account: accounts[i + 1],
                      ),
                    ),
                  ] else ...[
                    const Expanded(child: SizedBox()),
                  ],
                ],
              ),
              Gap(2.h),
            ],
          ],
        ),
      ),
    );
  }
}
