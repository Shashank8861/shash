import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main_content/main_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListofplacesWidget extends StatefulWidget {
  const ListofplacesWidget({Key key}) : super(key: key);

  @override
  _ListofplacesWidgetState createState() => _ListofplacesWidgetState();
}

class _ListofplacesWidgetState extends State<ListofplacesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: StreamBuilder<List<PlacesRecord>>(
                  stream: queryPlacesRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<PlacesRecord> listViewPlacesRecordList = snapshot.data;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewPlacesRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewPlacesRecord =
                            listViewPlacesRecordList[listViewIndex];
                        return FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainContentWidget(
                                  placename: valueOrDefault<String>(
                                    listViewPlacesRecord.placename,
                                    'Not found sir',
                                  ),
                                  famousfood: valueOrDefault<String>(
                                    listViewPlacesRecord.famousFood,
                                    'Not found sir',
                                  ),
                                  toHome: valueOrDefault<String>(
                                    listViewPlacesRecord.famousThingToTakehome,
                                    'Not found sir',
                                  ),
                                  famousTry: valueOrDefault<String>(
                                    listViewPlacesRecord.famousTry,
                                    'Not found sir',
                                  ),
                                  placeType: valueOrDefault<String>(
                                    listViewPlacesRecord.placeType,
                                    'Not found sir',
                                  ),
                                  location: valueOrDefault<String>(
                                    listViewPlacesRecord.location,
                                    'Not found sir',
                                  ),
                                  foodHotels: listViewPlacesRecord,
                                  places: listViewPlacesRecord,
                                  guidesphone: listViewPlacesRecord,
                                  vehicle: listViewPlacesRecord,
                                  photos: listViewPlacesRecord,
                                ),
                              ),
                            );
                          },
                          text: listViewPlacesRecord.placename,
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
