class SocialMedia {
	var url: String = ""
	var title: String = ""
	var image: String = ""
	var desc: String = ""
	var appid: String = ""
	var redirecturl: String = ""
	var via: String = ""
	var hash_tags: String = ""
	var provider: String = ""
	var language: String = ""
	var user_id: String = ""
	var category: String = ""
	var phone_number: String = ""
	var email_address: String = ""
	var cc_email_address: String = ""
	var bcc_email_address: String = ""

	init(
			url:String,
			title:String,
			image:String,
			desc:String,
			appid:String,
			redirecturl:String,
			via:String,
			hash_tags:String,
			provider:String,
			language:String,
			user_id:String,
			category:String,
			phone_number:String,
			email_address:String,
			cc_email_address:String,
			bcc_email_address:String
	) {
		self.url = url
		self.title = title
		self.image = image
		self.desc = desc
		self.appid = appid
		self.redirecturl = redirecturl
		self.via = via
		self.hash_tags = hash_tags
		self.provider = provider
		self.language = language
		self.user_id = user_id
		self.category = category
		self.phone_number = phone_number
		self.email_address = email_address
		self.cc_email_address = cc_email_address
		self.bcc_email_address = bcc_email_address

		var text = title

		if(desc.characters.count > 0) {
			text += "%20%3A%20"
			text += desc
		}

		var addthis = "http://www.addthis.com/bookmark.php?url=" + url
		var blogger = "https://www.blogger.com/blog-this.g?u=" + url + "&n=" + title + "&t=" + desc
		var buffer = "https://buffer.com/add?text=" + text + "&url=" + url
		var diaspora = "https://share.diasporafoundation.org/?title=" + title + "&url=" + url
		var digg = "http://digg.com/submit?url=" + url + "&title=" + text
		var douban = "http://www.douban.com/recommend/?url=" + url + "&title=" + title
		var email = "mailto:" + email_address + "?subject=" + title + "&body=" + desc
		var evernote = "http://www.evernote.com/clip.action?url=" + url + "&title=" + text
		var getpocket = "https://getpocket.com/edit?url=" + url
		var facebook = "http://www.facebook.com/sharer.php?u=" + url
		var flattr = "https://flattr.com/submit/auto?user_id=" + user_id + "&url=" + url + "&title=" + title + "&description=" + text + "&language=" + language + "&tags=" + hash_tags + "&hidden=HIDDEN&category=" + category
		var flipboard = "https://share.flipboard.com/bookmarklet/popout?v=2&title=" + text + "&url=" + url
		var gmail = "https://mail.google.com/mail/?view=cm&to=" + email_address + "&su=" + title + "&body=" + url + "&bcc=" + bcc_email_address + "&cc=" + cc_email_address
		var googlebookmarks = "https://www.google.com/bookmarks/mark?op=edit&bkmk=" + url + "&title=" + title + "&annotation=" + text + "&labels=" + hash_tags
		var instapaper = "http://www.instapaper.com/edit?url=" + url + "&title=" + title + "&description=" + desc
		var lineme = "https://lineit.line.me/share/ui?url=" + url + "&text=" + text
		var linkedin = "https://www.linkedin.com/shareArticle?mini=true&url=" + url + "&title=" + title + "&summary=" + text + "&source=" + provider
		var livejournal = "http://www.livejournal.com/update.bml?subject=" + text + "&event=" + url
		var hackernews = "https://news.ycombinator.com/submitlink?u=" + url + "&t=" + title
		var okru = "https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=" + url
		var pinterest = "http://pinterest.com/pin/create/button/?url=" + url
		var googleplus = "https://plus.google.com/share?url=" + url + "&text=" + text + "&hl=" + language
		var qzone = "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=" + url
		var reddit = "https://reddit.com/submit?url=" + url + "&title=" + title
		var renren = "http://widget.renren.com/dialog/share?resourceUrl=" + url + "&srcUrl=" + url + "&title=" + text + "&description=" + desc
		var skype = "https://web.skype.com/share?url=" + url + "&text=" + text
		var sms = "sms:" + phone_number + "?body=" + text
		var stumbleupon = "http://www.stumbleupon.com/submit?url=" + url + "&title=" + text
		var surfingbird = "http://surfingbird.ru/share?url=" + url + "&description=" + desc + "&screenshot=" + image + "&title=" + title
		var telegramme = "https://t.me/share/url?url=" + url + "&text=" + text + "&to=" + phone_number
		var threema = "threema://compose?text=" + text + "&id=" + user_id
		var tumblr = "https://www.tumblr.com/widgets/share/tool?canonicalUrl=" + url + "&title=" + title + "&caption=" + desc + "&tags=" + hash_tags
		var twitter = "https://twitter.com/intent/tweet?url=" + url + "&text=" + text + "&via=" + via + "&hashtags=" + hash_tags
		var vk = "http://vk.com/share.php?url=" + url + "&title=" + title + "&comment=" + desc
		var weibo = "http://service.weibo.com/share/share.php?url=" + url + "&appkey=&title=" + title + "&pic=&ralateUid="
		var xing = "https://www.xing.com/app/user?op=share&url=" + url
		var yahoo = "http://compose.mail.yahoo.com/?to=" + email_address + "&subject=" + title + "&body=" + text

		self.urls.append(googleplus)
		self.urls.append(googlebookmarks)
		self.urls.append(facebook)
		self.urls.append(reddit)
		self.urls.append(twitter)
		self.urls.append(linkedin)
		self.urls.append(tumblr)
		self.urls.append(pinterest)
		self.urls.append(blogger)
		self.urls.append(livejournal)
		self.urls.append(evernote)
		self.urls.append(addthis)
		self.urls.append(getpocket)
		self.urls.append(hackernews)
		self.urls.append(stumbleupon)
		self.urls.append(digg)
		self.urls.append(buffer)
		self.urls.append(flipboard)
		self.urls.append(instapaper)
		self.urls.append(surfingbird)
		self.urls.append(flattr)
		self.urls.append(diaspora)
		self.urls.append(qzone)
		self.urls.append(vk)
		self.urls.append(weibo)
		self.urls.append(okru)
		self.urls.append(douban)
		self.urls.append(xing)
		self.urls.append(renren)
		self.urls.append(threema)
		self.urls.append(sms)
		self.urls.append(lineme)
		self.urls.append(skype)
		self.urls.append(telegramme)
		self.urls.append(email)
		self.urls.append(gmail)
		self.urls.append(yahoo)
	}

	var urls = [String]()

	var servicesSortedByName = [
		"add.this",
		"blogger",
		"buffer",
		"diaspora",
		"digg",
		"douban",
		"email",
		"evernote",
		"facebook",
		"flattr",
		"flipboard",
		"getpocket",
		"gmail",
		"google.bookmarks",
		"google.plus",
		"hacker.news",
		"instapaper",
		"line.me",
		"linkedin",
		"livejournal",
		"ok.ru",
		"pinterest",
		"qzone",
		"reddit",
		"renren",
		"skype",
		"sms",
		"stumbleupon",
		"surfingbird.ru",
		"telegram.me",
		"threema",
		"tumblr",
		"twitter",
		"vk",
		"weibo",
		"xing",
		"yahoo",
	]

	var servicesSortedByPopularity = [
		"google.plus",
		"google.bookmarks",
		"facebook",
		"reddit",
		"twitter",
		"linkedin",
		"tumblr",
		"pinterest",
		"blogger",
		"livejournal",
		"evernote",
		"add.this",
		"getpocket",
		"hacker.news",
		"stumbleupon",
		"digg",
		"buffer",
		"flipboard",
		"instapaper",
		"surfingbird.ru",
		"flattr",
		"diaspora",
		"qzone",
		"vk",
		"weibo",
		"ok.ru",
		"douban",
		"xing",
		"renren",
		"threema",
		"sms",
		"line.me",
		"skype",
		"telegram.me",
		"email",
		"gmail",
		"yahoo",
	]
}

var sm:SocialMedia = SocialMedia(
	url: "http%3A%2F%2Fwww.earthfluent.com%2F",
	title: "EarthFluent",
	image: "",
	desc: "",
	appid: "",
	redirecturl: "",
	via: "",
	hash_tags: "",
	provider: "",
	language: "",
	user_id: "",
	category: "",
	phone_number: "",
	email_address: "",
	cc_email_address: "",
	bcc_email_address: ""
)

for index in 0..<sm.servicesSortedByPopularity.count{
	var service = sm.servicesSortedByPopularity[index];
	var url = sm.urls[index];
	print(service + " : " + url);
}
