import '../all_chats_page/all_chats_page_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/create_modal_widget.dart';
import '../create_hotel_list/create_hotel_list_widget.dart';
import '../createrecord/createrecord_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../listofplaces/listofplaces_widget.dart';
import '../post_details/post_details_widget.dart';
import '../story_details/story_details_widget.dart';
import '../view_profile_page_other/view_profile_page_other_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'iconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      initialState: AnimationState(
        scale: 1.2,
        opacity: 0,
      ),
      finalState: AnimationState(
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        iconTheme: IconThemeData(color: Color(0xFF1D0E89)),
        automaticallyImplyLeading: true,
        title: Text(
          'ONE CLICK',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Lexend Deca',
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 46,
              icon: Icon(
                Icons.mark_chat_unread,
                color: FlutterFlowTheme.of(context).grayIcon,
                size: 24,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllChatsPageWidget(),
                  ),
                );
              },
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF1F5F8),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: 240,
                  child: CreateModalWidget(),
                ),
              );
            },
          );
        },
        backgroundColor: Color(0xFF4B39EF),
        elevation: 8,
        child: Icon(
          Icons.create_rounded,
          color: Colors.white,
          size: 24,
        ),
      ),
      // drawer: Drawer(
      //   elevation: 16,
      //   child: Column(
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //       Container(
      //         width: 100,
      //         height: 100,
      //         decoration: BoxDecoration(
      //           color: Color(0xFFEEEEEE),
      //         ),
      //       ),
      //       FFButtonWidget(
      //         onPressed: () async {
      //           await Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => ListofplacesWidget(),
      //             ),
      //           );
      //         },
      //         text: 'Show Places',
      //         options: FFButtonOptions(
      //           width: 130,
      //           height: 40,
      //           color: FlutterFlowTheme.of(context).primaryColor,
      //           textStyle: FlutterFlowTheme.of(context).subtitle2.override(
      //                 fontFamily: 'Lexend Deca',
      //                 color: Colors.white,
      //               ),
      //           borderSide: BorderSide(
      //             color: Colors.transparent,
      //             width: 1,
      //           ),
      //           borderRadius: 12,
      //         ),
      //       ),
      //       FFButtonWidget(
      //         onPressed: () async {
      //           await Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => CreaterecordWidget(),
      //             ),
      //           );
      //         },
      //         text: 'Crate a Place',
      //         options: FFButtonOptions(
      //           width: 130,
      //           height: 40,
      //           color: FlutterFlowTheme.of(context).primaryColor,
      //           textStyle: FlutterFlowTheme.of(context).subtitle2.override(
      //                 fontFamily: 'Lexend Deca',
      //                 color: Colors.white,
      //               ),
      //           borderSide: BorderSide(
      //             color: Colors.transparent,
      //             width: 1,
      //           ),
      //           borderRadius: 12,
      //         ),
      //       ),
      //       FFButtonWidget(
      //         onPressed: () async {
      //           await Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => CreateHotelListWidget(),
      //             ),
      //           );
      //         },
      //         text: 'Add Hotel',
      //         options: FFButtonOptions(
      //           width: 130,
      //           height: 40,
      //           color: FlutterFlowTheme.of(context).primaryColor,
      //           textStyle: FlutterFlowTheme.of(context).subtitle2.override(
      //                 fontFamily: 'Lexend Deca',
      //                 color: Colors.white,
      //               ),
      //           borderSide: BorderSide(
      //             color: Colors.transparent,
      //             width: 1,
      //           ),
      //           borderRadius: 12,
      //         ),
      //       ),
      //       FFButtonWidget(
      //         onPressed: () {
      //           print('Button pressed ...');
      //         },
      //         text: 'Add Stay',
      //         options: FFButtonOptions(
      //           width: 130,
      //           height: 40,
      //           color: FlutterFlowTheme.of(context).primaryColor,
      //           textStyle: FlutterFlowTheme.of(context).subtitle2.override(
      //                 fontFamily: 'Lexend Deca',
      //                 color: Colors.white,
      //               ),
      //           borderSide: BorderSide(
      //             color: Colors.transparent,
      //             width: 1,
      //           ),
      //           borderRadius: 12,
      //         ),
      //       ),
      //       FFButtonWidget(
      //         onPressed: () {
      //           print('Button pressed ...');
      //         },
      //         text: 'Add Guide',
      //         options: FFButtonOptions(
      //           width: 130,
      //           height: 40,
      //           color: FlutterFlowTheme.of(context).primaryColor,
      //           textStyle: FlutterFlowTheme.of(context).subtitle2.override(
      //                 fontFamily: 'Lexend Deca',
      //                 color: Colors.white,
      //               ),
      //           borderSide: BorderSide(
      //             color: Colors.transparent,
      //             width: 1,
      //           ),
      //           borderRadius: 12,
      //         ),
      //       ),
      //       FFButtonWidget(
      //         onPressed: () {
      //           print('Button pressed ...');
      //         },
      //         text: 'add vehicle',
      //         options: FFButtonOptions(
      //           width: 130,
      //           height: 40,
      //           color: FlutterFlowTheme.of(context).primaryColor,
      //           textStyle: FlutterFlowTheme.of(context).subtitle2.override(
      //                 fontFamily: 'Lexend Deca',
      //                 color: Colors.white,
      //               ),
      //           borderSide: BorderSide(
      //             color: Colors.transparent,
      //             width: 1,
      //           ),
      //           borderRadius: 12,
      //         ),
      //       ),
      //       FFButtonWidget(
      //         onPressed: () {
      //           print('Button pressed ...');
      //         },
      //         text: 'add subplace',
      //         options: FFButtonOptions(
      //           width: 130,
      //           height: 40,
      //           color: FlutterFlowTheme.of(context).primaryColor,
      //           textStyle: FlutterFlowTheme.of(context).subtitle2.override(
      //                 fontFamily: 'Lexend Deca',
      //                 color: Colors.white,
      //               ),
      //           borderSide: BorderSide(
      //             color: Colors.transparent,
      //             width: 1,
      //           ),
      //           borderRadius: 12,
      //         ),
      //       ),
      //       FFButtonWidget(
      //         onPressed: () {
      //           print('Button pressed ...');
      //         },
      //         text: 'add quick map',
      //         options: FFButtonOptions(
      //           width: 130,
      //           height: 40,
      //           color: FlutterFlowTheme.of(context).primaryColor,
      //           textStyle: FlutterFlowTheme.of(context).subtitle2.override(
      //                 fontFamily: 'Lexend Deca',
      //                 color: Colors.white,
      //               ),
      //           borderSide: BorderSide(
      //             color: Colors.transparent,
      //             width: 1,
      //           ),
      //           borderRadius: 12,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color(0x3A000000),
                    offset: Offset(0, 1),
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 8,
                    thickness: 2,
                    color: FlutterFlowTheme.of(context).gray200,
                  ),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                  //   child: Text(
                  //     '4',
                  //     style: FlutterFlowTheme.of(context).bodyText2.override(
                  //           fontFamily: 'Lexend Deca',
                  //           color: Color(0xFF8B97A2),
                  //           fontSize: 14,
                  //           fontWeight: FontWeight.normal,
                  //         ),
                  //   ),
                  // ),
                  Container(
                    height: 72,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 8),
                      child: StreamBuilder<List<UserStoriesRecord>>(
                        stream: queryUserStoriesRecord(
                          queryBuilder: (userStoriesRecord) => userStoriesRecord
                              .orderBy('storyPostedAt', descending: true),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<UserStoriesRecord>
                              listViewUserStoriesRecordList = snapshot.data;
                          if (listViewUserStoriesRecordList.isEmpty) {
                            return Center(
                              child: Image.asset(
                                'assets/images/df3hg_',
                                width: 60,
                              ),
                            );
                          }
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: listViewUserStoriesRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewUserStoriesRecord =
                                  listViewUserStoriesRecordList[listViewIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                child: StreamBuilder<UsersRecord>(
                                  stream: UsersRecord.getDocument(
                                      listViewUserStoriesRecord.user),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: CircularProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                        ),
                                      );
                                    }
                                    final columnUsersRecord = snapshot.data;
                                    return InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type:
                                                PageTransitionType.bottomToTop,
                                            duration:
                                                Duration(milliseconds: 200),
                                            reverseDuration:
                                                Duration(milliseconds: 200),
                                            child: StoryDetailsWidget(
                                              initialStoryIndex: listViewIndex,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: CachedNetworkImage(
                                              imageUrl: valueOrDefault<String>(
                                                columnUsersRecord.photoUrl,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-social-app-tx2kqp/assets/ecyxfirnulof/karsten-winegeart-BJaqPaH6AGQ-unsplash.jpg',
                                              ),
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: AutoSizeText(
                                              valueOrDefault<String>(
                                                columnUsersRecord.displayName,
                                                'Ellie May',
                                              ).maybeHandleOverflow(
                                                maxChars: 8,
                                                replacement: '…',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        fontSize: 12,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
              child: StreamBuilder<List<UserPostsRecord>>(
                stream: queryUserPostsRecord(
                  queryBuilder: (userPostsRecord) =>
                      userPostsRecord.orderBy('timePosted', descending: true),
                ),
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
                  List<UserPostsRecord> socialFeedUserPostsRecordList =
                      snapshot.data;
                  if (socialFeedUserPostsRecordList.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/emptyPosts@2x.png',
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 400,
                      ),
                    );
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children:
                        List.generate(socialFeedUserPostsRecordList.length,
                            (socialFeedIndex) {
                      final socialFeedUserPostsRecord =
                          socialFeedUserPostsRecordList[socialFeedIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 8),
                        child: StreamBuilder<UsersRecord>(
                          stream: UsersRecord.getDocument(
                              socialFeedUserPostsRecord.postUser),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            final userPostUsersRecord = snapshot.data;
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x32000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PostDetailsWidget(
                                        userRecord: userPostUsersRecord,
                                        postReference:
                                            socialFeedUserPostsRecord.reference,
                                      ),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 2, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ViewProfilePageOtherWidget(
                                                    userDetails:
                                                        userPostUsersRecord,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: Color(0xFF4B39EF),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  1, 1, 1, 1),
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              valueOrDefault<
                                                                  String>(
                                                            userPostUsersRecord
                                                                .photoUrl,
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/sample-app-social-app-tx2kqp/assets/wn636nykq7im/lucrezia-carnelos-0liYTl4dJxk-unsplash.jpg',
                                                          ),
                                                          fit: BoxFit.fitWidth,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      userPostUsersRecord
                                                          .userName,
                                                      'myUsername',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF090F13),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: Icon(
                                              Icons.keyboard_control,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              size: 20,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    FlutterFlowMediaDisplay(
                                      path: socialFeedUserPostsRecord.postPhoto,
                                      imageBuilder: (path) =>
                                          CachedNetworkImage(
                                        imageUrl: path,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 300,
                                        fit: BoxFit.cover,
                                      ),
                                      videoPlayerBuilder: (path) =>
                                          FlutterFlowVideoPlayer(
                                        path: path,
                                        width: 300,
                                        autoPlay: false,
                                        looping: true,
                                        showControls: true,
                                        allowFullScreen: true,
                                        allowPlaybackSpeedMenu: false,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 4, 8, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 16, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 41,
                                                      height: 41,
                                                      child: Stack(
                                                        children: [
                                                          if (!(socialFeedUserPostsRecord
                                                                  .likes
                                                                  .toList()
                                                                  .contains(
                                                                      currentUserReference)) ??
                                                              true)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0.25),
                                                              child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  final userPostsUpdateData =
                                                                      {
                                                                    'likes':
                                                                        FieldValue
                                                                            .arrayUnion([
                                                                      currentUserReference
                                                                    ]),
                                                                  };
                                                                  await socialFeedUserPostsRecord
                                                                      .reference
                                                                      .update(
                                                                          userPostsUpdateData);
                                                                  await (animationsMap['iconOnActionTriggerAnimation']
                                                                              .curvedAnimation
                                                                              .parent
                                                                          as AnimationController)
                                                                      .forward(
                                                                          from:
                                                                              0.0);
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .favorite_border_sharp,
                                                                  color: Color(
                                                                      0xFF95A1AC),
                                                                  size: 25,
                                                                ),
                                                              ),
                                                            ),
                                                          if (socialFeedUserPostsRecord
                                                                  .likes
                                                                  .toList()
                                                                  .contains(
                                                                      currentUserReference) ??
                                                              true)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0, 0.25),
                                                              child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  final userPostsUpdateData =
                                                                      {
                                                                    'likes':
                                                                        FieldValue
                                                                            .arrayRemove([
                                                                      currentUserReference
                                                                    ]),
                                                                  };
                                                                  await socialFeedUserPostsRecord
                                                                      .reference
                                                                      .update(
                                                                          userPostsUpdateData);
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .favorite_sharp,
                                                                  color: Color(
                                                                      0xFF4B39EF),
                                                                  size: 25,
                                                                ),
                                                              ).animated([
                                                                animationsMap[
                                                                    'iconOnActionTriggerAnimation']
                                                              ]),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 0, 0, 0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          functions
                                                              .likes(
                                                                  socialFeedUserPostsRecord)
                                                              .toString(),
                                                          '0',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.mode_comment_outlined,
                                                    color: Color(0xFF95A1AC),
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 2, 8, 0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'relative',
                                                      socialFeedUserPostsRecord
                                                          .timePosted),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              Icon(
                                                Icons.ios_share,
                                                color: Color(0xFF95A1AC),
                                                size: 24,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 4, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 12, 12),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  socialFeedUserPostsRecord
                                                      .postDescription,
                                                  'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF090F13),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
