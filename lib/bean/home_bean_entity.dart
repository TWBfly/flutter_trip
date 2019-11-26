class HomeBeanEntity {
	List<HomeBeanBannerlist> bannerList;
	List<HomeBeanSubnavlist> subNavList;
	List<HomeBeanLocalnavlist> localNavList;
	HomeBeanSalesbox salesBox;
	HomeBeanConfig config;
	HomeBeanGridnav gridNav;

	HomeBeanEntity({this.bannerList, this.subNavList, this.localNavList, this.salesBox, this.config, this.gridNav});

	HomeBeanEntity.fromJson(Map<String, dynamic> json) {
		if (json['bannerList'] != null) {
			bannerList = new List<HomeBeanBannerlist>();(json['bannerList'] as List).forEach((v) { bannerList.add(new HomeBeanBannerlist.fromJson(v)); });
		}
		if (json['subNavList'] != null) {
			subNavList = new List<HomeBeanSubnavlist>();(json['subNavList'] as List).forEach((v) { subNavList.add(new HomeBeanSubnavlist.fromJson(v)); });
		}
		if (json['localNavList'] != null) {
			localNavList = new List<HomeBeanLocalnavlist>();(json['localNavList'] as List).forEach((v) { localNavList.add(new HomeBeanLocalnavlist.fromJson(v)); });
		}
		salesBox = json['salesBox'] != null ? new HomeBeanSalesbox.fromJson(json['salesBox']) : null;
		config = json['config'] != null ? new HomeBeanConfig.fromJson(json['config']) : null;
		gridNav = json['gridNav'] != null ? new HomeBeanGridnav.fromJson(json['gridNav']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.bannerList != null) {
      data['bannerList'] =  this.bannerList.map((v) => v.toJson()).toList();
    }
		if (this.subNavList != null) {
      data['subNavList'] =  this.subNavList.map((v) => v.toJson()).toList();
    }
		if (this.localNavList != null) {
      data['localNavList'] =  this.localNavList.map((v) => v.toJson()).toList();
    }
		if (this.salesBox != null) {
      data['salesBox'] = this.salesBox.toJson();
    }
		if (this.config != null) {
      data['config'] = this.config.toJson();
    }
		if (this.gridNav != null) {
      data['gridNav'] = this.gridNav.toJson();
    }
		return data;
	}
}

class HomeBeanBannerlist {
	String icon;
	String url;

	HomeBeanBannerlist({this.icon, this.url});

	HomeBeanBannerlist.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanSubnavlist {
	String icon;
	String title;
	String url;
	bool hideAppBar;

	HomeBeanSubnavlist({this.icon, this.title, this.url, this.hideAppBar});

	HomeBeanSubnavlist.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanLocalnavlist {
	String statusBarColor;
	String icon;
	String title;
	String url;
	bool hideAppBar;

	HomeBeanLocalnavlist({this.statusBarColor, this.icon, this.title, this.url, this.hideAppBar});

	HomeBeanLocalnavlist.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanSalesbox {
	HomeBeanSalesboxBigcard2 bigCard2;
	HomeBeanSalesboxSmallcard4 smallCard4;
	HomeBeanSalesboxSmallcard3 smallCard3;
	HomeBeanSalesboxBigcard1 bigCard1;
	HomeBeanSalesboxSmallcard2 smallCard2;
	HomeBeanSalesboxSmallcard1 smallCard1;
	String icon;
	String moreUrl;

	HomeBeanSalesbox({this.bigCard2, this.smallCard4, this.smallCard3, this.bigCard1, this.smallCard2, this.smallCard1, this.icon, this.moreUrl});

	HomeBeanSalesbox.fromJson(Map<String, dynamic> json) {
		bigCard2 = json['bigCard2'] != null ? new HomeBeanSalesboxBigcard2.fromJson(json['bigCard2']) : null;
		smallCard4 = json['smallCard4'] != null ? new HomeBeanSalesboxSmallcard4.fromJson(json['smallCard4']) : null;
		smallCard3 = json['smallCard3'] != null ? new HomeBeanSalesboxSmallcard3.fromJson(json['smallCard3']) : null;
		bigCard1 = json['bigCard1'] != null ? new HomeBeanSalesboxBigcard1.fromJson(json['bigCard1']) : null;
		smallCard2 = json['smallCard2'] != null ? new HomeBeanSalesboxSmallcard2.fromJson(json['smallCard2']) : null;
		smallCard1 = json['smallCard1'] != null ? new HomeBeanSalesboxSmallcard1.fromJson(json['smallCard1']) : null;
		icon = json['icon'];
		moreUrl = json['moreUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.bigCard2 != null) {
      data['bigCard2'] = this.bigCard2.toJson();
    }
		if (this.smallCard4 != null) {
      data['smallCard4'] = this.smallCard4.toJson();
    }
		if (this.smallCard3 != null) {
      data['smallCard3'] = this.smallCard3.toJson();
    }
		if (this.bigCard1 != null) {
      data['bigCard1'] = this.bigCard1.toJson();
    }
		if (this.smallCard2 != null) {
      data['smallCard2'] = this.smallCard2.toJson();
    }
		if (this.smallCard1 != null) {
      data['smallCard1'] = this.smallCard1.toJson();
    }
		data['icon'] = this.icon;
		data['moreUrl'] = this.moreUrl;
		return data;
	}
}

class HomeBeanSalesboxBigcard2 {
	String icon;
	String title;
	String url;

	HomeBeanSalesboxBigcard2({this.icon, this.title, this.url});

	HomeBeanSalesboxBigcard2.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanSalesboxSmallcard4 {
	String icon;
	String title;
	String url;

	HomeBeanSalesboxSmallcard4({this.icon, this.title, this.url});

	HomeBeanSalesboxSmallcard4.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanSalesboxSmallcard3 {
	String icon;
	String title;
	String url;

	HomeBeanSalesboxSmallcard3({this.icon, this.title, this.url});

	HomeBeanSalesboxSmallcard3.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanSalesboxBigcard1 {
	String icon;
	String title;
	String url;

	HomeBeanSalesboxBigcard1({this.icon, this.title, this.url});

	HomeBeanSalesboxBigcard1.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanSalesboxSmallcard2 {
	String icon;
	String title;
	String url;

	HomeBeanSalesboxSmallcard2({this.icon, this.title, this.url});

	HomeBeanSalesboxSmallcard2.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanSalesboxSmallcard1 {
	String icon;
	String title;
	String url;

	HomeBeanSalesboxSmallcard1({this.icon, this.title, this.url});

	HomeBeanSalesboxSmallcard1.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanConfig {
	String searchUrl;

	HomeBeanConfig({this.searchUrl});

	HomeBeanConfig.fromJson(Map<String, dynamic> json) {
		searchUrl = json['searchUrl'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['searchUrl'] = this.searchUrl;
		return data;
	}
}

class HomeBeanGridnav {
	HomeBeanGridnavFlight flight;
	HomeBeanGridnavHotel hotel;
	HomeBeanGridnavTravel travel;

	HomeBeanGridnav({this.flight, this.hotel, this.travel});

	HomeBeanGridnav.fromJson(Map<String, dynamic> json) {
		flight = json['flight'] != null ? new HomeBeanGridnavFlight.fromJson(json['flight']) : null;
		hotel = json['hotel'] != null ? new HomeBeanGridnavHotel.fromJson(json['hotel']) : null;
		travel = json['travel'] != null ? new HomeBeanGridnavTravel.fromJson(json['travel']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.flight != null) {
      data['flight'] = this.flight.toJson();
    }
		if (this.hotel != null) {
      data['hotel'] = this.hotel.toJson();
    }
		if (this.travel != null) {
      data['travel'] = this.travel.toJson();
    }
		return data;
	}
}

class HomeBeanGridnavFlight {
	HomeBeanGridnavFlightItem2 item2;
	HomeBeanGridnavFlightItem1 item1;
	String endColor;
	HomeBeanGridnavFlightMainitem mainItem;
	HomeBeanGridnavFlightItem4 item4;
	HomeBeanGridnavFlightItem3 item3;
	String startColor;

	HomeBeanGridnavFlight({this.item2, this.item1, this.endColor, this.mainItem, this.item4, this.item3, this.startColor});

	HomeBeanGridnavFlight.fromJson(Map<String, dynamic> json) {
		item2 = json['item2'] != null ? new HomeBeanGridnavFlightItem2.fromJson(json['item2']) : null;
		item1 = json['item1'] != null ? new HomeBeanGridnavFlightItem1.fromJson(json['item1']) : null;
		endColor = json['endColor'];
		mainItem = json['mainItem'] != null ? new HomeBeanGridnavFlightMainitem.fromJson(json['mainItem']) : null;
		item4 = json['item4'] != null ? new HomeBeanGridnavFlightItem4.fromJson(json['item4']) : null;
		item3 = json['item3'] != null ? new HomeBeanGridnavFlightItem3.fromJson(json['item3']) : null;
		startColor = json['startColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
		if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
		data['endColor'] = this.endColor;
		if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
		if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
		if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
		data['startColor'] = this.startColor;
		return data;
	}
}

class HomeBeanGridnavFlightItem2 {
	String title;
	String url;

	HomeBeanGridnavFlightItem2({this.title, this.url});

	HomeBeanGridnavFlightItem2.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanGridnavFlightItem1 {
	String title;
	String url;
	bool hideAppBar;

	HomeBeanGridnavFlightItem1({this.title, this.url, this.hideAppBar});

	HomeBeanGridnavFlightItem1.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanGridnavFlightMainitem {
	String icon;
	String title;
	String url;

	HomeBeanGridnavFlightMainitem({this.icon, this.title, this.url});

	HomeBeanGridnavFlightMainitem.fromJson(Map<String, dynamic> json) {
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanGridnavFlightItem4 {
	String title;
	String url;
	bool hideAppBar;

	HomeBeanGridnavFlightItem4({this.title, this.url, this.hideAppBar});

	HomeBeanGridnavFlightItem4.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanGridnavFlightItem3 {
	String title;
	String url;
	bool hideAppBar;

	HomeBeanGridnavFlightItem3({this.title, this.url, this.hideAppBar});

	HomeBeanGridnavFlightItem3.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanGridnavHotel {
	HomeBeanGridnavHotelItem2 item2;
	HomeBeanGridnavHotelItem1 item1;
	String endColor;
	HomeBeanGridnavHotelMainitem mainItem;
	HomeBeanGridnavHotelItem4 item4;
	HomeBeanGridnavHotelItem3 item3;
	String startColor;

	HomeBeanGridnavHotel({this.item2, this.item1, this.endColor, this.mainItem, this.item4, this.item3, this.startColor});

	HomeBeanGridnavHotel.fromJson(Map<String, dynamic> json) {
		item2 = json['item2'] != null ? new HomeBeanGridnavHotelItem2.fromJson(json['item2']) : null;
		item1 = json['item1'] != null ? new HomeBeanGridnavHotelItem1.fromJson(json['item1']) : null;
		endColor = json['endColor'];
		mainItem = json['mainItem'] != null ? new HomeBeanGridnavHotelMainitem.fromJson(json['mainItem']) : null;
		item4 = json['item4'] != null ? new HomeBeanGridnavHotelItem4.fromJson(json['item4']) : null;
		item3 = json['item3'] != null ? new HomeBeanGridnavHotelItem3.fromJson(json['item3']) : null;
		startColor = json['startColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
		if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
		data['endColor'] = this.endColor;
		if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
		if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
		if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
		data['startColor'] = this.startColor;
		return data;
	}
}

class HomeBeanGridnavHotelItem2 {
	String title;
	String url;

	HomeBeanGridnavHotelItem2({this.title, this.url});

	HomeBeanGridnavHotelItem2.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanGridnavHotelItem1 {
	String statusBarColor;
	String title;
	String url;

	HomeBeanGridnavHotelItem1({this.statusBarColor, this.title, this.url});

	HomeBeanGridnavHotelItem1.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanGridnavHotelMainitem {
	String statusBarColor;
	String icon;
	String title;
	String url;

	HomeBeanGridnavHotelMainitem({this.statusBarColor, this.icon, this.title, this.url});

	HomeBeanGridnavHotelMainitem.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}

class HomeBeanGridnavHotelItem4 {
	String title;
	String url;
	bool hideAppBar;

	HomeBeanGridnavHotelItem4({this.title, this.url, this.hideAppBar});

	HomeBeanGridnavHotelItem4.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanGridnavHotelItem3 {
	String title;
	String url;
	bool hideAppBar;

	HomeBeanGridnavHotelItem3({this.title, this.url, this.hideAppBar});

	HomeBeanGridnavHotelItem3.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanGridnavTravel {
	HomeBeanGridnavTravelItem2 item2;
	HomeBeanGridnavTravelItem1 item1;
	String endColor;
	HomeBeanGridnavTravelMainitem mainItem;
	HomeBeanGridnavTravelItem4 item4;
	HomeBeanGridnavTravelItem3 item3;
	String startColor;

	HomeBeanGridnavTravel({this.item2, this.item1, this.endColor, this.mainItem, this.item4, this.item3, this.startColor});

	HomeBeanGridnavTravel.fromJson(Map<String, dynamic> json) {
		item2 = json['item2'] != null ? new HomeBeanGridnavTravelItem2.fromJson(json['item2']) : null;
		item1 = json['item1'] != null ? new HomeBeanGridnavTravelItem1.fromJson(json['item1']) : null;
		endColor = json['endColor'];
		mainItem = json['mainItem'] != null ? new HomeBeanGridnavTravelMainitem.fromJson(json['mainItem']) : null;
		item4 = json['item4'] != null ? new HomeBeanGridnavTravelItem4.fromJson(json['item4']) : null;
		item3 = json['item3'] != null ? new HomeBeanGridnavTravelItem3.fromJson(json['item3']) : null;
		startColor = json['startColor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
		if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
		data['endColor'] = this.endColor;
		if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
		if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
		if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
		data['startColor'] = this.startColor;
		return data;
	}
}

class HomeBeanGridnavTravelItem2 {
	String statusBarColor;
	String title;
	String url;
	bool hideAppBar;

	HomeBeanGridnavTravelItem2({this.statusBarColor, this.title, this.url, this.hideAppBar});

	HomeBeanGridnavTravelItem2.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanGridnavTravelItem1 {
	String statusBarColor;
	String title;
	String url;
	bool hideAppBar;

	HomeBeanGridnavTravelItem1({this.statusBarColor, this.title, this.url, this.hideAppBar});

	HomeBeanGridnavTravelItem1.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanGridnavTravelMainitem {
	String statusBarColor;
	String icon;
	String title;
	String url;
	bool hideAppBar;

	HomeBeanGridnavTravelMainitem({this.statusBarColor, this.icon, this.title, this.url, this.hideAppBar});

	HomeBeanGridnavTravelMainitem.fromJson(Map<String, dynamic> json) {
		statusBarColor = json['statusBarColor'];
		icon = json['icon'];
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['statusBarColor'] = this.statusBarColor;
		data['icon'] = this.icon;
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanGridnavTravelItem4 {
	String title;
	String url;
	bool hideAppBar;

	HomeBeanGridnavTravelItem4({this.title, this.url, this.hideAppBar});

	HomeBeanGridnavTravelItem4.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}

class HomeBeanGridnavTravelItem3 {
	String title;
	String url;
	bool hideAppBar;

	HomeBeanGridnavTravelItem3({this.title, this.url, this.hideAppBar});

	HomeBeanGridnavTravelItem3.fromJson(Map<String, dynamic> json) {
		title = json['title'];
		url = json['url'];
		hideAppBar = json['hideAppBar'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['title'] = this.title;
		data['url'] = this.url;
		data['hideAppBar'] = this.hideAppBar;
		return data;
	}
}
