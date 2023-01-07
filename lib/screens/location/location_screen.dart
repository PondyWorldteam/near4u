import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nammaooru_nearu/presentation/bloc/location_bloc.dart';
import 'package:nammaooru_nearu/utils/constants.dart';
// ignore: library_prefixes
import 'package:lottie/lottie.dart' as lottieMarker;

import 'widgets/location_footer.dart';
import 'widgets/location_header.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.kTextWhiteColor.withOpacity(0.97),
      appBar: AppBar(
        backgroundColor: Constants.kPrimaryColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
              color: Constants.kSecondaryColor,
            )),
        centerTitle: false,
        title: Text(
          Constants.locationActionBarTitle,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Constants.kSecondaryColor),
        ),
      ),
      body: BlocBuilder<LocationBloc, LocationValidateState>(
        builder: (context, state) {
          if (state.locationStatus == LocationStatus.loaded) {
            // print(state.lat);

            return Stack(
              children: [
                GoogleMap(
                  markers: {
                    _myLocationMarker(state.lat!, state.long!, context)
                  },
                  //scrollGesturesEnabled: false,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(state.lat ?? 0.0, state.long ?? 0.0),
                    zoom: 19.151926040649414,
                  ),
                  mapType: MapType.normal,
                ),
                const LocationHeaderView(),
                const Align(
                    alignment: Alignment.bottomCenter,
                    child: LocationFooterView()),
              ],
            );
          } else if (state.locationStatus == LocationStatus.loading) {
            return Center(
              child: lottieMarker.Lottie.network(
                  'https://assets6.lottiefiles.com/packages/lf20_VPgVZ0.json'),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Marker _myLocationMarker(double lat, double long, BuildContext context) {
    return Marker(
      draggable: true,
      flat: true,
      markerId: const MarkerId("_myLocation"),
      infoWindow: const InfoWindow(title: "My Location"),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(lat, long),
      onDragEnd: (value) {
        BlocProvider.of<LocationBloc>(context)
            .add(UpdateMarketLocationEvent(value.latitude, value.longitude));
      },
    );
  }
}
