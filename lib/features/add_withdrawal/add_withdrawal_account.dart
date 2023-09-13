import 'package:dispatchapp/features/add_withdrawal/provider/add_withdrawal_provider.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:dispatchapp/shared/widgets/shared_widget_exports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../shared/constants/images.dart';

class AddWithdrawalAccount extends StatefulWidget {
  const AddWithdrawalAccount({super.key});

  @override
  State<AddWithdrawalAccount> createState() => _AddWithdrawalAccountState();
}

class _AddWithdrawalAccountState extends State<AddWithdrawalAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24, top: 20),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: AppImageView(
                  svgPath: AppImages.backIcon, height: 16, width: 16)),
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      backgroundColor: AppColors.white,
      body: Consumer<AddWithdrawalProvider>(
          builder: (ctx, addWithdrawalProvider, child) {
        return SingleChildScrollView(
          child: Form(
            key: addWithdrawalProvider.addWithdrawalFormKey,
            child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Add Withdrawal Account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.48,
                      ),
                    ),
                    const Spacing.tinyHeight(),
                    const Text(
                      "This is to help us create your wallet",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacing.mediumHeight(),
                    AppTextField(
                      hintText: "Account Number",
                      keyboardType: TextInputType.number,
                      onChange: (text) {
                        addWithdrawalProvider.setAccountNumber(text);
                      },
                      validateFunction: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your account number';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const Spacing.mediumHeight(),
                    AppTextField(
                      controller: TextEditingController(
                          text: addWithdrawalProvider.selectedBank),
                      hintText: "Bank",
                      readOnly: true,
                      validateFunction: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Choose Bank Name';
                        } else {
                          return null;
                        }
                      },
                      onTap: () {
                        showBankListSheet(context: context);
                      },
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(16),
                        child: SizedBox(
                          child: AppImageView(
                              svgPath: AppImages.expandMore),
                        ),
                      ),
                    ),
                    const Spacing.mediumHeight(),
                    AppTextField(
                      hintText: "NIN",
                      keyboardType: TextInputType.number,
                      onChange: (text) {
                        addWithdrawalProvider.setNinNumber(text);
                      },
                      validateFunction: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter a valid NIN';
                        } else {
                          return null;
                        }
                      },
                      suffixIcon: GestureDetector(
                        onTap: () {
                          addWithdrawalProvider.toggleMessage();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(16),
                          child: SizedBox(
                            child: Icon(
                              Icons.info_outline,
                              color: AppColors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacing.mediumHeight(),
                    Stack(
                      children: [
                        Positioned(
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                bool isValid = addWithdrawalProvider
                                    .addWithdrawalFormKey.currentState!
                                    .validate();

                                if (isValid) {
                                  addWithdrawalProvider.setSavingState();
                                }
                              },
                              child: Container(
                                  height: 59.h,
                                  width: 240.w,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1000),
                                    ),
                                    color: addWithdrawalProvider.isFormFilled()
                                        ? AppColors.darkRed
                                        : AppColors.lightRed,
                                  ),
                                  child: Center(
                                    child: addWithdrawalProvider.state ==
                                            ButtonState.saving
                                        ? Container(
                                            height: 59.h,
                                            width: 240.w,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(1000),
                                              color: AppColors.lightRed,
                                            ),
                                         child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  'Save',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontFamily: 'DMSans',
                                                    fontWeight: FontWeight.w500,
                                                    letterSpacing: 0.48,
                                                  ),
                                                ),
                                                const Spacing.smallWidth(),
                                                Transform.scale(
                                                  scale: 0.5,
                                                  child:
                                                      const CircularProgressIndicator(
                                                    color: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        : const Text(
                                            "Save",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'DMSans',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.48,
                                            ),
                                          ),
                                  )),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 105.0),
                            child: Visibility(
                                visible: addWithdrawalProvider.showMessage,
                                child: Container(
                                  height: 33.h,
                                  width: 247.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(0.0),
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.5), // Shadow color
                                        spreadRadius: 4, // Spread radius
                                        blurRadius: 20, // Blur radius
                                        offset: const Offset(
                                            0, 4), // Offset for shadow
                                      ),
                                    ],
                                    color: Colors
                                        .white, // Container background color
                                  ),
                                  child: const Text(
                                    'This is to help you create your wallet',
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 11,
                                      fontFamily: 'DMSans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    //style: TextStyle(color: Colors.blue),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        );
      }),
    );
  }

  showBankListSheet({
    required BuildContext context,
  }) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0))),
        builder: (context) {
          final addWithdrawalProvider =
              Provider.of<AddWithdrawalProvider>(context, listen: false);
          final bankNames = [
            "First bank",
            "GTBank",
            "Wema Bank",
            "Polaris Bank",
            "UBA",
            "Access Bank"
          ];
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(children: [
                const Spacing.mediumHeight(),
                Center(
                  child: Container(
                    width: 36.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromRGBO(60, 60, 67, 0.3),
                    ),
                  ),
                ),
                const Spacing.mediumHeight(),
                Row(
                  children: [
                    const Spacer(),
                    const Text(
                      'Select Bank',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 18,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: AppImageView(
                        height: 24.h,
                        width: 24.w,
                        svgPath: AppImages.close,
                      ),
                    )
                  ],
                ),
                const Spacing.mediumHeight(),
                Expanded(
                  child: ListView.separated(
                    itemCount: bankNames.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 10.sp);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      final bankName = bankNames[index];
                      return ListTile(
                        tileColor: AppColors.lighterRed,
                        leading: Text(bankName,
                            style: const TextStyle(
                              color: AppColors.grey,
                              fontSize: 16,
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.w400,
                            )),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1000.r)),
                        onTap: () {
                          addWithdrawalProvider.setSelectedBank(bankName);
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                ),
              ]),
            ),
          );
        });
  }
}
