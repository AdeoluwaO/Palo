import 'package:dispatchapp/features/add_vehicle_individual/presentation/provider/add_vehicle_individual_provider.dart';
import 'package:dispatchapp/features/add_vehicle_individual/presentation/widgets/picture_frame_widget.dart';
import 'package:dispatchapp/features/add_vehicle_individual/presentation/widgets/vehicle_widget.dart';
import 'package:dispatchapp/shared/constants/app_text_style.dart';
import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:dispatchapp/shared/constants/images.dart';
import 'package:dispatchapp/shared/widgets/app_button.dart';
import 'package:dispatchapp/shared/widgets/app_image_view.dart';
import 'package:dispatchapp/shared/widgets/app_scaffold.dart';
import 'package:dispatchapp/shared/widgets/app_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../shared/widgets/app_spacing.dart';
import '../widgets/picture_frame2_widget.dart';

class AddYourVehicleScreen extends StatelessWidget {
  const AddYourVehicleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      showBackButton: true,
      titleText: 'Add Your Vehicle',
      body: Consumer<AddVehicleIndividualProvider>(
          builder: (ctx, addWithdrawIndividual, child) {
        return ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.w),
          children: [
            Text(
              'Upload your vehicle details to ensure accurate \ndeliveries',
              style: AppTextStyle.bodySmall.copyWith(fontSize: 14),
            ),
            const Spacing.mediumHeight(),
            AppTextField(
              controller:
                  TextEditingController(text: addWithdrawIndividual.vehicle),
              hintText: 'Vehicle',
              readOnly: true,
              onTap: () {
                showVehicleListSheet(context: context);
              },
              suffixIcon: Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  child: AppImageView(svgPath: AppImages.expandMore),
                ),
              ),
            ),
            const Spacing.mediumHeight(),
            Row(
              children: [
                Expanded(
                  child: AppTextField(
                    hintText: 'Model',
                    onChange: (text) {
                      addWithdrawIndividual.setSelectedModel(text);
                    },
                  ),
                ),
                const Spacing.mediumWidth(),
                Expanded(
                  child: AppTextField(
                    hintText: 'Year',
                    onChange: (text) {
                      addWithdrawIndividual.setSelectedYear(text);
                    },
                  ),
                ),
              ],
            ),
            const Spacing.mediumHeight(),
            AppTextField(
              hintText: 'Registration Number',
              onChange: (text) {
                addWithdrawIndividual.setSelectedRegNo(text);
              },
              suffixIcon: GestureDetector(
                onTap: () {
                  addWithdrawIndividual.toggleMessage();
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
                  child: PictureFrame(
                      onTap: () {
                        addWithdrawIndividual.captureImage();
                      },
                      title: addWithdrawIndividual.buttonText),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Visibility(
                        visible: addWithdrawIndividual.showMessage,
                        child: Container(
                          height: 33.h,
                          width: 170.w,
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
                                spreadRadius: 2, // Spread radius
                                blurRadius: 15, // Blur radius
                                offset: const Offset(0, 2), // Offset for shadow
                              ),
                            ],
                            color: Colors.white, // Container background color
                          ),
                          child: Text(
                            'Bicycles are exempted',
                            style: AppTextStyle.headerMedium.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w400),
                            //style: TextStyle(color: Colors.blue),
                          ),
                        )),
                  ),
                ),
              ],
            ),
            const Spacing.mediumHeight(),
            PictureFrame2(
              title: addWithdrawIndividual.buttonText2,
              onTap: () {
                addWithdrawIndividual.captureImage2();
              },
            ),
            const Spacing.bigHeight(),
            AppButton(
              title: 'Save',
              onTap: () {},
              width: 200.w,
              color: AppColors.darkRed,
              titleStyle: AppTextStyle.bodyMediumWhite,
              borderRadius: 100,
            ),
          ],
        );
      }),
    );
  }

  showVehicleListSheet({
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
              Provider.of<AddVehicleIndividualProvider>(context, listen: false);
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(children: [
                const Spacing.mediumHeight(),
                const Center(
                  child: Text(
                    'Vehicle Type',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 18,
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacing.mediumHeight(),
                VehicleWidget(
                  leadingIcon: AppImages.carIcon,
                  title: 'Car',
                  onTap: () {
                    addWithdrawalProvider.setSelectedVehicle('Car');
                    Navigator.pop(context);
                  },
                ),
                const Spacing.mediumHeight(),
                VehicleWidget(
                  leadingIcon: AppImages.bicycleIcon,
                  title: 'Bicycle',
                  onTap: () {
                    addWithdrawalProvider.setSelectedVehicle('Bicycle');
                    Navigator.pop(context);
                  },
                ),
                const Spacing.mediumHeight(),
                VehicleWidget(
                  leadingIcon: AppImages.motorBikeIcon,
                  title: 'Motorbike',
                  onTap: () {
                    addWithdrawalProvider.setSelectedVehicle('Motorbike');
                    Navigator.pop(context);
                  },
                ),
                const Spacing.mediumHeight(),
                VehicleWidget(
                  leadingIcon: AppImages.tricycleIcon,
                  title: 'Tricycle',
                  onTap: () {
                    addWithdrawalProvider.setSelectedVehicle('Tricycle');
                    Navigator.pop(context);
                  },
                ),
                const Spacing.mediumHeight(),
                VehicleWidget(
                  leadingIcon: AppImages.othersIcon,
                  title: 'Others (Van, Truck...)',
                  onTap: () {
                    addWithdrawalProvider.setSelectedVehicle('Others');
                    Navigator.pop(context);
                  },
                ),
              ]),
            ),
          );
        });
  }
}
