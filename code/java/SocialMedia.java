import java.util.*;
import java.lang.*;
import java.io.*;

class SocialMedia {
	/* All Social Media Sites
	 * -------------------------------------------------
	 */

	/* All Social Media Sites ~ Nice Names
	 * -------------------------------------------------
	 */

	public Map<String, String> GetSocialMediaSites_NiceNames() {
		Map<String, String> socialmediasites = new HashMap<String, String>(){{
			put("add.this", "AddThis");
			put("blogger", "Blogger");
			put("buffer", "Buffer");
			put("diaspora", "Diaspora");
			put("digg", "Digg");
			put("douban", "Douban");
			put("email", "EMail");
			put("evernote", "EverNote");
			put("getpocket", "Pocket");
			put("facebook", "FaceBook");
			put("flattr", "Flattr");
			put("flipboard", "FlipBoard");
			put("google.bookmarks", "GoogleBookmarks");
			put("instapaper", "InstaPaper");
			put("line.me", "Line.me");
			put("linkedin", "LinkedIn");
			put("livejournal", "LiveJournal");
			put("gmail", "GMail");
			put("hacker.news", "HackerNews");
			put("ok.ru", "OK.ru");
			put("pinterest", "Pinterest");
			put("qzone", "QZone");
			put("reddit", "Reddit");
			put("renren", "RenRen");
			put("skype", "Skype");
			put("sms", "SMS");
			put("surfingbird.ru", "SurfingBird.ru");
			put("telegram.me", "Telegram.me");
			put("threema", "Threema");
			put("tumblr", "Tumblr");
			put("twitter", "Twitter");
			put("vk", "VK");
			put("weibo", "Weibo");
			put("xing", "Xing");
			put("yahoo", "Yahoo");
		}};
		
		return socialmediasites;
	}
		
				/* Social Media Sites With Share Links
				* -------------------------------------------------
				*/

	public String[] GetSocialMediaSites_WithShareLinks_OrderedByPopularity() {
		return new String[]{
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
	}
	
	public String[] GetSocialMediaSites_WithShareLinks_OrderedByAlphabet() {
		Map<String, String> socialmediaurls = GetSocialMediaSites_NiceNames();
		String[] socialmediasites = new String[socialmediaurls.size()];
		
		int index = 0;
		
		for(Map.Entry<String, String> entry : socialmediaurls.entrySet()) {
			String key = entry.getKey();
			socialmediasites[index++] = key;
		}

		Arrays.sort(socialmediasites);
		
		return socialmediasites;
	}
	
				/* Social Media Site Links With Share Links
				* -------------------------------------------------
				*/
	
	public Map<String, String> GetSocialMediaSiteLinks_WithShareLinks(Map<String, String> args) {
		String[] validargs = {
			"url",
			"title",
			"image",
			"desc",
			"appid",
			"redirecturl",
			"via",
			"hashtags",
			"provider",
			"language",
			"userid",
			"category",
			"phonenumber",
			"emailaddress",
			"cemailaddress",
			"bccemailaddress",
		};
		
		for (String validarg : validargs) {
			if(args.get(validarg) == null) {
				args.put(validarg, "");
			}
		}

		String text = args.get("title");
		String desc = args.get("desc");

		if(desc != null) {
			text += "%20%3A%20";
			text += desc;
		}

		args.put("text", text);
		
		Map<String, String> socialmediasites = new HashMap<String, String>(){{
			put("add.this", "http://www.addthis.com/bookmark.php?url=" + args.get("url"));
			put("blogger", "https://www.blogger.com/blog-this.g?u=" + args.get("url") + "&n=" + args.get("title") + "&t=" + args.get("desc"));
			put("buffer", "https://buffer.com/add?text=" + args.get("text") + "&url=" + args.get("url"));
			put("diaspora", "https://share.diasporafoundation.org/?title=" + args.get("title") + "&url=" + args.get("url"));
			put("digg", "http://digg.com/submit?url=" + args.get("url") + "&title=" + args.get("text"));
			put("douban", "http://www.douban.com/recommend/?url=" + args.get("url") + "&title=" + args.get("text"));
			put("email", "mailto:" + args.get("email_address") + "?subject=" + args.get("title") + "&body=" + args.get("desc"));
			put("evernote", "http://www.evernote.com/clip.action?url=" + args.get("url") + "&title=" + args.get("text"));
			put("getpocket", "https://getpocket.com/edit?url=" + args.get("url"));
			put("facebook", "http://www.facebook.com/sharer.php?u=" + args.get("url"));
			put("flattr", "https://flattr.com/submit/auto?user_id=" + args.get("user_id") + "&url=" + args.get("url") + "&title=" + args.get("title") + "&description=" + args.get("text") + "&language=" + args.get("language") + "&tags=" + args.get("hash_tags") + "&hidden=HIDDEN&category=" + args.get("category"));
			put("flipboard", "https://share.flipboard.com/bookmarklet/popout?v=2&title=" + args.get("text") + "&url=" + args.get("url"));
			put("gmail", "https://mail.google.com/mail/?view=cm&to=" + args.get("email_address") + "&su=" + args.get("title") + "&body=" + args.get("url") + "&bcc=" + args.get("bcc_email_address") + "&cc=" + args.get("cc_email_address"));
			put("google.bookmarks", "https://www.google.com/bookmarks/mark?op=edit&bkmk=" + args.get("url") + "&title=" + args.get("title") + "&annotation=" + args.get("text") + "&labels=" + args.get("hash_tags"));
			put("instapaper", "http://www.instapaper.com/edit?url=" + args.get("url") + "&title=" + args.get("title") + "&description=" + args.get("desc"));
			put("line.me", "https://lineit.line.me/share/ui?url=" + args.get("url") + "&text=" + args.get("text"));
			put("linkedin", "https://www.linkedin.com/shareArticle?mini=true&url=" + args.get("url") + "&title=" + args.get("title") + "&summary=" + args.get("text") + "&source=" + args.get("provider"));
			put("livejournal", "http://www.livejournal.com/update.bml?subject=" + args.get("text") + "&event=" + args.get("url"));
			put("hacker.news", "https://news.ycombinator.com/submitlink?u=" + args.get("url") + "&t=" + args.get("title"));
			put("ok.ru", "https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=" + args.get("url"));
			put("pinterest", "http://pinterest.com/pin/create/button/?url=" + args.get("url"));
			put("qzone", "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=" + args.get("url"));
			put("reddit", "https://reddit.com/submit?url=" + args.get("url") + "&title=" + args.get("title"));
			put("renren", "http://widget.renren.com/dialog/share?resourceUrl=" + args.get("url") + "&srcUrl=" + args.get("url") + "&title=" + args.get("text") + "&description=" + args.get("desc"));
			put("skype", "https://web.skype.com/share?url=" + args.get("url") + "&text=" + args.get("text"));
			put("sms", "sms:" + args.get("phone_number") + "?body=" + args.get("text"));
			put("surfingbird.ru", "http://surfingbird.ru/share?url=" + args.get("url") + "&description=" + args.get("desc") + "&screenshot=" + args.get("image") + "&title=" + args.get("title"));
			put("telegram.me", "https://t.me/share/url?url=" + args.get("url") + "&text=" + args.get("text") + "&to=" + args.get("phone_number"));
			put("threema", "threema://compose?text=" + args.get("text") + "&id=" + args.get("user_id"));
			put("tumblr", "https://www.tumblr.com/widgets/share/tool?canonicalUrl=" + args.get("url") + "&title=" + args.get("title") + "&caption=" + args.get("desc") + "&tags=" + args.get("hash_tags"));
			put("twitter", "https://twitter.com/intent/tweet?url=" + args.get("url") + "&text=" + args.get("text") + "&via=" + args.get("via") + "&hashtags=" + args.get("hash_tags"));
			put("vk", "http://vk.com/share.php?url=" + args.get("url") + "&title=" + args.get("title") + "&comment=" + args.get("desc"));
			put("weibo", "http://service.weibo.com/share/share.php?url=" + args.get("url") + "&appkey=&title=" + args.get("title") + "&pic=&ralateUid=");
			put("xing", "https://www.xing.com/spi/shares/new?url=" + args.get("url"));
			put("yahoo", "http://compose.mail.yahoo.com/?to=" + args.get("email_address") + "&subject=" + args.get("title") + "&body=" + args.get("text"));
		}};
		
		return socialmediasites;
	}
}

class main {
	public static void main (String[] args) {
		SocialMedia sm = new SocialMedia();
		Map<String, String> socialmediaargs = new HashMap<String, String>(){{
			put("url", "http://www.earthfluent.com/");
			put("title", "EarthFluent");
		}};
		Map<String, String> socialmediasites = sm.GetSocialMediaSiteLinks_WithShareLinks(socialmediaargs);
		
		//System.out.println(sm.GetSocialMediaSites_NiceNames().toString());
		
		//for (String socialmedia : sm.GetSocialMediaSites_WithShareLinks_OrderedByAlphabet()) {
		for (String socialmedia : sm.GetSocialMediaSites_WithShareLinks_OrderedByPopularity()) {
			System.out.println(socialmedia + " : " + socialmediasites.get(socialmedia));
		}
		//System.out.println(sm.GetSocialMediaSites_WithShareLinks_OrderedByPopularity());
	}
}
