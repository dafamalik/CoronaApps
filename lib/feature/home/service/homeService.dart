import 'dart:convert';

import 'package:corona_apps/config/network/apiCall.dart';
import 'package:corona_apps/feature/home/model/locationModel.dart';
import 'package:corona_apps/feature/home/model/staticticModel.dart';
import 'package:corona_apps/feature/home/model/youtubePlaylistModel.dart';
import 'package:http/http.dart' as http;
import 'package:webfeed/domain/rss_feed.dart';
import 'package:webfeed/domain/rss_item.dart';

class HomeService {

  Future<StatisticModel> getDataTotalCovid() async{

    var response = await http.get(ApiCall.baseUrlHome + "indonesia");

    if(response.body.isNotEmpty) {

      return StatisticModel.fromJson(jsonDecode(response.body)[0]);
    } else {

      throw Exception("Error get data corona");
    }
  }

  Future<RssFeed> getLatestNews() async{

    var response = await http.get("https://covid19.go.id/feed/berita");

    if(response.body != null) {

      return RssFeed.parse(response.body);

    }else {

      throw Exception("error parse rss");
    }
  }

  Future<List<RssItem>> getEducationNews() async{

    var response = await http.get("https://covid19.go.id/feed/kipi");

    if(response.body != null) {

      var listItem = RssFeed.parse(response.body).items.where((element) => element.enclosure != null).toList();

      return listItem;

    }else {

      throw Exception("error parse rss");
    }
  }

  Future<List<LocationModel>> getLocations() async{

    var response = await http.get(ApiCall.baseUrlHome + "indonesia/provinsi");

    if(response.body != null) {

      var listItem = (jsonDecode(response.body) as List).map((e) => LocationModel.fromJson(e)).toList();

      return listItem;

    }else {

      throw Exception("error parse rss");
    }
  }

  Future<YoutubePlaylistModel> getYoutubePlaylistItem() async{

    var url = "https://youtube.googleapis.com/youtube/v3/playlistItems?key=" + ApiCall.youtubeApikEY +"&playlistId=" + ApiCall.playlistid + "&channelId=" + ApiCall.channelId + "&part=snippet,contentDetails";

    var response = await http.get(url);

    if(response.body != null) {

      return YoutubePlaylistModel.fromJson(jsonDecode(response.body));

    }else {

      throw Exception("error parse rss");
    }
  }


}