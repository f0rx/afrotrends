import 'package:afrotrends/features/data/remote/models/post/exports.dart';
import 'package:afrotrends/features/data/remote/models/taxonomy/exports_taxonomy.dart';
import 'package:afrotrends/presentation/pages/detail/category_detail_screen.dart';
import 'package:afrotrends/presentation/pages/detail/post_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final today = DateTime.now();
const IMAGES_FOLDER = "assets/images";
const DEV_IMAGES_FOLDER = "$IMAGES_FOLDER/dev";
const PROD_IMAGES_FOLDER = "$IMAGES_FOLDER/prod";
const DEFAULTS_IMAGES_FOLDER = "$PROD_IMAGES_FOLDER/defaults";
const CATEGORIES_IMAGES_FOLDER = "$PROD_IMAGES_FOLDER/categories";

EdgeInsetsGeometry defaultEdgeSpacing(BuildContext context, {double left, double top, double right, double bottom}) =>
    EdgeInsets.fromLTRB(left ?? deviceLeftMargin(context), top ?? 0.0, right ?? deviceLeftMargin(context), bottom ?? 0.0);

void navigateToPostDetail(String heroTag, Post post) => navigator.push(MaterialPageRoute(
    builder: (context) => PostDetailScreen(
          heroTag: heroTag,
          post: post,
        )));

void navigateToCategoryDetail(Taxonomy category) => navigator.push(MaterialPageRoute(
    builder: (context) => CategoryDetailScreen(
          category: category,
        )));

double deviceMargin(BuildContext context) => Get.width * 0.04;

double deviceLeftMargin(BuildContext context) => deviceMargin(context);

double deviceRightMargin(BuildContext context) => deviceMargin(context);

// GoogleFonts.workSansTextTheme();
// GoogleFonts.philosopherTextTheme();
//TextTheme defaultTextTheme({TextTheme textTheme}) => GoogleFonts.saralaTextTheme(textTheme);

ScrollPhysics defaultScrollPhysics({ScrollPhysics parent}) => BouncingScrollPhysics(parent: parent);

ScrollPhysics defaultHorizontalScrollPhysics({ScrollPhysics parent}) => BouncingScrollPhysics(parent: parent);

double defaultCardRadius() => 16.0;

mixin MkHelpers {
  static final latestPostsPerPage = 3;
  static final categoriesPerPage = 3;
  static final lastMonthPostsPerPage = 3;
  static final blackExPerPage = 8;
  static final entertainmentsPerPage = 5;
  static final trendsPerPage = 5;

  static DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day, d.hour, d.minute, d.second);
}
