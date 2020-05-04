using System;

public static class Globals
{
    public static readonly int SOCIALMEDIASERVICES = 37;
    public static readonly int URLSIZE = 1024;
    public static readonly int ARGLENGTH = 1024;
}

public class SocialMedia
{
	public string title;
	public string url;
	public string image;
	public string desc;
	public string appid;
	public string redirecturl;
	public string via;
	public string hash_tags;
	public string provider;
	public string language;
	public string user_id;
	public string category;
	public string phone_number;
	public string email_address;
	public string cc_email_address;
	public string bcc_email_address;

	public string[] urls = new string[Globals.SOCIALMEDIASERVICES];
	public string[] servicesSortedByPopularity = {
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
	};
	
	public SocialMedia() { }

	public SocialMedia(string argTitle, string argUrl)
	{
		title = argTitle;
		url = argUrl;

		buildUrls();
	}

	public SocialMedia(
		string argTitle,
		string argUrl,
		string argImage,
		string argDesc,
		string argAppid,
		string argRedirecturl,
		string argVia,
		string argHash_tags,
		string argProvider,
		string argLanguage,
		string argUser_id,
		string argCategory,
		string argPhone_number,
		string argEmail_address,
		string argCc_email_address,
		string argBcc_email_address
	)
	{
		title = argTitle;
		url = argUrl;
		image = argImage;
		desc = argDesc;
		appid = argAppid;
		redirecturl = argRedirecturl;
		via = argVia;
		hash_tags = argHash_tags;
		provider = argProvider;
		language = argLanguage;
		user_id = argUser_id;
		category = argCategory;
		phone_number = argPhone_number;
		email_address = argEmail_address;
		cc_email_address = argCc_email_address;
		bcc_email_address = argBcc_email_address;

		buildUrls();
	}

	public void buildUrls()
	{
		//Console.WriteLine("BULIDERISH!!");
		//urls[0] = "huhhhhhh?????";
		
		string text = title;
		
		if(desc != "")
		{
			text += "%20%3A%20";
			text += desc;
		}

		string addthis = "http://www.addthis.com/bookmark.php?url=" + url;
		string blogger = "https://www.blogger.com/blog-this.g?u=" + url + "&n=" + title + "&t=" + desc;
		string buffer = "https://buffer.com/add?text=" + text + "&url=" + url;
		string diaspora = "https://share.diasporafoundation.org/?title=" + title + "&url=" + url;
		string digg = "http://digg.com/submit?url=" + url + "&title=" + text;
		string douban = "http://www.douban.com/recommend/?url=" + url + "&title=" + title;
		string email = "mailto:" + email_address + "?subject=" + title + "&body=" + desc;
		string evernote = "https://www.evernote.com/clip.action?url=" + url + "&title=" + text;
		string getpocket = "https://getpocket.com/edit?url=" + url;
		string facebook = "http://www.facebook.com/sharer.php?u=" + url;
		string flattr = "https://flattr.com/submit/auto?user_id=" + user_id + "&url=" + url + "&title=" + title + "&description=" + text + "&language=" + language + "&tags=" + hash_tags + "&hidden=HIDDEN&category=" + category;
		string flipboard = "https://share.flipboard.com/bookmarklet/popout?v=2&title=" + text + "&url=" + url;
		string gmail = "https://mail.google.com/mail/?view=cm&to=" + email_address + "&su=" + title + "&body=" + url + "&bcc=" + bcc_email_address + "&cc=" + cc_email_address;
		string googlebookmarks = "https://www.google.com/bookmarks/mark?op=edit&bkmk=" + url + "&title=" + title + "&annotation=" + text + "&labels=" + hash_tags;
		string instapaper = "http://www.instapaper.com/edit?url=" + url + "&title=" + title + "&description=" + desc;
		string lineme = "https://lineit.line.me/share/ui?url=" + url + "&text=" + text;
		string linkedin = "https://www.linkedin.com/sharing/share-offsite/?url=" + url;
		string livejournal = "http://www.livejournal.com/update.bml?subject=" + text + "&event=" + url;
		string hackernews = "https://news.ycombinator.com/submitlink?u=" + url + "&t=" + title;
		string okru = "https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=" + url;
		string pinterest = "http://pinterest.com/pin/create/button/?url=" + url;
		string qzone = "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=" + url;
		string reddit = "https://reddit.com/submit?url=" + url + "&title=" + title;
		string renren = "http://widget.renren.com/dialog/share?resourceUrl=" + url + "&srcUrl=" + url + "&title=" + text + "&description=" + desc;
		string skype = "https://web.skype.com/share?url=" + url + "&text=" + text;
		string sms = "sms:" + phone_number + "?body=" + text;
		string surfingbird = "http://surfingbird.ru/share?url=" + url + "&description=" + desc + "&screenshot=" + image + "&title=" + title;
		string telegramme = "https://t.me/share/url?url=" + url + "&text=" + text + "&to=" + phone_number;
		string threema = "threema://compose?text=" + text + "&id=" + user_id;
		string tumblr = "https://www.tumblr.com/widgets/share/tool?canonicalUrl=" + url + "&title=" + title + "&caption=" + desc + "&tags=" + hash_tags;
		string twitter = "https://twitter.com/intent/tweet?url=" + url + "&text=" + text + "&via=" + via + "&hashtags=" + hash_tags;
		string vk = "http://vk.com/share.php?url=" + url + "&title=" + title + "&comment=" + desc;
		string weibo = "http://service.weibo.com/share/share.php?url=" + url + "&appkey=&title=" + title + "&pic=&ralateUid=";
		string xing = "https://www.xing.com/spi/shares/new?url=" + url;
		string yahoo = "http://compose.mail.yahoo.com/?to=" + email_address + "&subject=" + title + "&body=" + text;
		
		int i = 0;
		
		urls[i++] = googlebookmarks;
		urls[i++] = facebook;
		urls[i++] = reddit;
		urls[i++] = twitter;
		urls[i++] = linkedin;
		urls[i++] = tumblr;
		urls[i++] = pinterest;
		urls[i++] = blogger;
		urls[i++] = livejournal;
		urls[i++] = evernote;
		urls[i++] = addthis;
		urls[i++] = getpocket;
		urls[i++] = hackernews;
		urls[i++] = digg;
		urls[i++] = buffer;
		urls[i++] = flipboard;
		urls[i++] = instapaper;
		urls[i++] = surfingbird;
		urls[i++] = flattr;
		urls[i++] = diaspora;
		urls[i++] = qzone;
		urls[i++] = vk;
		urls[i++] = weibo;
		urls[i++] = okru;
		urls[i++] = douban;
		urls[i++] = xing;
		urls[i++] = renren;
		urls[i++] = threema;
		urls[i++] = sms;
		urls[i++] = lineme;
		urls[i++] = skype;
		urls[i++] = telegramme;
		urls[i++] = email;
		urls[i++] = gmail;
		urls[i++] = yahoo;
	}
}

public class Application
{
	public static void Main()
	{
		SocialMedia sm = new SocialMedia(
			"EarthFluent",
			"http%3A%2F%2Fwww.earthfluent.com%2F"
		);

		for (int i = 0; i < Globals.SOCIALMEDIASERVICES; i++)
		{
			Console.WriteLine(sm.servicesSortedByPopularity[i] + " : " + sm.urls[i]);
		}
	}
}
