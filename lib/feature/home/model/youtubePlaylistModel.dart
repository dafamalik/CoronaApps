class YoutubePlaylistModel {
  String kind;
  String etag;
  String nextPageToken;
  List<PlaylistItems> items;
  PageInfo pageInfo;

  YoutubePlaylistModel({this.kind, this.etag, this.nextPageToken, this.items, this.pageInfo});

  YoutubePlaylistModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    etag = json['etag'];
    nextPageToken = json['nextPageToken'];
    if (json['items'] != null) {
      items = new List<PlaylistItems>();
      json['items'].forEach((v) { items.add(new PlaylistItems.fromJson(v)); });
    }
    pageInfo = json['pageInfo'] != null ? new PageInfo.fromJson(json['pageInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['etag'] = this.etag;
    data['nextPageToken'] = this.nextPageToken;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    if (this.pageInfo != null) {
      data['pageInfo'] = this.pageInfo.toJson();
    }
    return data;
  }
}

class PlaylistItems {
  String kind;
  String etag;
  String id;
  Snippet snippet;
  ContentDetails contentDetails;

  PlaylistItems({this.kind, this.etag, this.id, this.snippet, this.contentDetails});

  PlaylistItems.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    etag = json['etag'];
    id = json['id'];
    snippet = json['snippet'] != null ? new Snippet.fromJson(json['snippet']) : null;
    contentDetails = json['contentDetails'] != null ? new ContentDetails.fromJson(json['contentDetails']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['etag'] = this.etag;
    data['id'] = this.id;
    if (this.snippet != null) {
      data['snippet'] = this.snippet.toJson();
    }
    if (this.contentDetails != null) {
      data['contentDetails'] = this.contentDetails.toJson();
    }
    return data;
  }
}

class Snippet {
  String publishedAt;
  String channelId;
  String title;
  String description;
  Thumbnails thumbnails;
  String channelTitle;
  String playlistId;
  int position;
  ResourceId resourceId;
  String videoOwnerChannelTitle;
  String videoOwnerChannelId;

  Snippet({this.publishedAt, this.channelId, this.title, this.description, this.thumbnails, this.channelTitle, this.playlistId, this.position, this.resourceId, this.videoOwnerChannelTitle, this.videoOwnerChannelId});

  Snippet.fromJson(Map<String, dynamic> json) {
    publishedAt = json['publishedAt'];
    channelId = json['channelId'];
    title = json['title'];
    description = json['description'];
    thumbnails = json['thumbnails'] != null ? new Thumbnails.fromJson(json['thumbnails']) : null;
    channelTitle = json['channelTitle'];
    playlistId = json['playlistId'];
    position = json['position'];
    resourceId = json['resourceId'] != null ? new ResourceId.fromJson(json['resourceId']) : null;
    videoOwnerChannelTitle = json['videoOwnerChannelTitle'];
    videoOwnerChannelId = json['videoOwnerChannelId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['publishedAt'] = this.publishedAt;
    data['channelId'] = this.channelId;
    data['title'] = this.title;
    data['description'] = this.description;
    if (this.thumbnails != null) {
      data['thumbnails'] = this.thumbnails.toJson();
    }
    data['channelTitle'] = this.channelTitle;
    data['playlistId'] = this.playlistId;
    data['position'] = this.position;
    if (this.resourceId != null) {
      data['resourceId'] = this.resourceId.toJson();
    }
    data['videoOwnerChannelTitle'] = this.videoOwnerChannelTitle;
    data['videoOwnerChannelId'] = this.videoOwnerChannelId;
    return data;
  }
}

class Thumbnails {
  Default defaultt;
  Default medium;
  Default high;
  Default standard;
  Default maxres;

  Thumbnails({this.defaultt, this.medium, this.high, this.standard, this.maxres});

  Thumbnails.fromJson(Map<String, dynamic> json) {
    defaultt = json['default'] != null ? new Default.fromJson(json['default']) : null;
    medium = json['medium'] != null ? new Default.fromJson(json['medium']) : null;
    high = json['high'] != null ? new Default.fromJson(json['high']) : null;
    standard = json['standard'] != null ? new Default.fromJson(json['standard']) : null;
    maxres = json['maxres'] != null ? new Default.fromJson(json['maxres']) : null;
    }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.defaultt != null) {
      data['default'] = this.defaultt.toJson();
    }
    if (this.medium != null) {
    data['medium'] = this.medium.toJson();
    }
    if (this.high != null) {
    data['high'] = this.high.toJson();
    }
    if (this.standard != null) {
    data['standard'] = this.standard.toJson();
    }
    if (this.maxres != null) {
    data['maxres'] = this.maxres.toJson();
    }
    return data;
  }
}

class Default {
  String url;
  int width;
  int height;

  Default({this.url, this.width, this.height});

  Default.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}

class ResourceId {
  String kind;
  String videoId;

  ResourceId({this.kind, this.videoId});

  ResourceId.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    videoId = json['videoId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['videoId'] = this.videoId;
    return data;
  }
}

class ContentDetails {
  String videoId;
  String videoPublishedAt;

  ContentDetails({this.videoId, this.videoPublishedAt});

  ContentDetails.fromJson(Map<String, dynamic> json) {
    videoId = json['videoId'];
    videoPublishedAt = json['videoPublishedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['videoId'] = this.videoId;
    data['videoPublishedAt'] = this.videoPublishedAt;
    return data;
  }
}

class PageInfo {
  int totalResults;
  int resultsPerPage;

  PageInfo({this.totalResults, this.resultsPerPage});

  PageInfo.fromJson(Map<String, dynamic> json) {
    totalResults = json['totalResults'];
    resultsPerPage = json['resultsPerPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalResults'] = this.totalResults;
    data['resultsPerPage'] = this.resultsPerPage;
    return data;
  }
}