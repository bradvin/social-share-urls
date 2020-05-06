package main
import "fmt"

const socialmediacount int = 35

type SocialMedia struct {
	title,
	url,
	desc,
	image,
	appd_id,
	redirect_url,
	via,
	hash_tags,
	provider,
	language,
	category,
	user_id,
	phone_number,
	email_address,
	cc_email_address,
	bcc_email_address,
	text string

	urls,
	urlsOrderedByPopularity [socialmediacount]string
}

func SocialMediaInterface() SocialMedia {
	sm := SocialMediaDefault()

	sm.urlsOrderedByPopularity = [...]string{
			"google.bookmarks",
			"facebook",
			"reddit",
			"whatsapp",
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
	}

	sm.text = sm.title

	if(len(sm.desc) > 0) {
		sm.text += "%20%3A%20"		// this is just: " : "
		sm.text += sm.desc
	}

	var addthis string = "http://www.addthis.com/bookmark.php?url=" + sm.url
	var blogger string = "https://www.blogger.com/blog-this.g?u=" + sm.url + "&n=" + sm.title + "&t=" + sm.desc
	var buffer string = "https://buffer.com/add?text=" + sm.text + "&url=" + sm.url
	var diaspora string = "https://share.diasporafoundation.org/?title=" + sm.title + "&url=" + sm.url
	var douban string = "http://www.douban.com/recommend/?url=" + sm.url + "&title=" + sm.title
	var email string = "mailto:" + sm.email_address + "?subject=" + sm.title + "&body=" + sm.desc
	var evernote string = "https://www.evernote.com/clip.action?url=" + sm.url + "&title=" + sm.text
	var getpocket string = "https://getpocket.com/edit?url=" + sm.url
	var facebook string = "http://www.facebook.com/sharer.php?u=" + sm.url
	var flattr string = "https://flattr.com/submit/auto?user_id=" + sm.user_id + "&url=" + sm.url + "&title=" + sm.title + "&description=" + sm.text + "&language=" + sm.language + "&tags=" + sm.hash_tags + "&hidden=HIDDEN&category=" + sm.category
	var flipboard string = "https://share.flipboard.com/bookmarklet/popout?v=2&title=" + sm.text + "&url=" + sm.url 
	var gmail string = "https://mail.google.com/mail/?view=cm&to=" + sm.email_address + "&su=" + sm.title + "&body=" + sm.url + "&bcc=" + sm.bcc_email_address + "&cc=" + sm.cc_email_address
	var googlebookmarks string = "https://www.google.com/bookmarks/mark?op=edit&bkmk=" + sm.url + "&title=" + sm.title + "&annotation=" + sm.text + "&labels=" + sm.hash_tags
	var instapaper string = "http://www.instapaper.com/edit?url=" + sm.url + "&title=" + sm.title + "&description=" + sm.desc
	var lineme string = "https://lineit.line.me/share/ui?url=" + sm.url + "&text=" + sm.text
	var linkedin string = "https://www.linkedin.com/sharing/share-offsite/?url=" + sm.url
	var livejournal string = "http://www.livejournal.com/update.bml?subject=" + sm.text + "&event=" + sm.url
	var hackernews string = "https://news.ycombinator.com/submitlink?u=" + sm.url + "&t=" + sm.title
	var okru string = "https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=" + sm.url
	var pinterest string = "http://pinterest.com/pin/create/button/?url=" + sm.url
	var qzone string = "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=" + sm.url
	var reddit string = "https://reddit.com/submit?url=" + sm.url + "&title=" + sm.title
	var renren string = "http://widget.renren.com/dialog/share?resourceUrl=" + sm.url + "&srcUrl=" + sm.url + "&title=" + sm.text + "&description=" + sm.desc
	var skype string = "https://web.skype.com/share?url=" + sm.url + "&text=" + sm.text
	var sms string = "sms:" + sm.phone_number + "?body=" + sm.text
	var surfingbird string = "http://surfingbird.ru/share?url=" + sm.url + "&description=" + sm.desc + "&screenshot=" + sm.image + "&title=" + sm.title
	var telegramme string = "https://t.me/share/url?url=" + sm.url + "&text=" + sm.text + "&to=" + sm.phone_number
	var threema string = "threema://compose?text=" + sm.text + "&id=" + sm.user_id
	var tumblr string = "https://www.tumblr.com/widgets/share/tool?canonicalUrl=" + sm.url + "&title=" + sm.title + "&caption=" + sm.desc + "&tags=" + sm.hash_tags
	var twitter string = "https://twitter.com/intent/tweet?url=" + sm.url + "&text=" + sm.text + "&via=" + sm.via + "&hashtags=" + sm.hash_tags
	var vk string = "http://vk.com/share.php?url=" + sm.url + "&title=" + sm.title + "&comment=" + sm.desc
	var weibo string = "http://service.weibo.com/share/share.php?url=" + sm.url + "&appkey=&title=" + sm.title + "&pic=&ralateUid="
	var whatsapp string = "https://api.whatsapp.com/send?text=" + sm.text + "%20" + sm.url
	var xing string = "https://www.xing.com/spi/shares/new?url=" + sm.url
	var yahoo string = "http://compose.mail.yahoo.com/?to=" + sm.email_address + "&subject=" + sm.title + "&body=" + sm.text

		// NOTE : This ordering must identically match urlsOrderedByPopularity.

        sm.urls = [...]string{
		googlebookmarks,
		facebook,
		reddit,
		whatsapp,
		twitter,
		linkedin,
		tumblr,
		pinterest,
		blogger,
		livejournal,
		evernote,
		addthis,
		getpocket,
		hackernews,
		buffer,
		flipboard,
		instapaper,
		surfingbird,
		flattr,
		diaspora,
		qzone,
		vk,
		weibo,
		okru,
		douban,
		xing,
		renren,
		threema,
		sms,
		lineme,
		skype,
		telegramme,
		email,
		gmail,
		yahoo,
        }

	return sm
}

func SocialMediaDefault() SocialMedia {
	sm := SocialMedia{
		title:"EarthFluent",
		url:"http%3A%2F%2Fwww.earthfluent.com%2F",
		desc:"Want%20to%20learn%20another%20language%3F%20%20Learn%20Spanish%2C%20French%2C%20Italian%2C%20German%2C%20Japanese%2C%20Chinese%2C%20Hindi%2C%20Indonesian%2C%20Dutch%2C%20Polish%2C%20Portuguese%2C%20or%20Russian%21",
	}  
	return sm
}

func main(){
	sm := SocialMediaInterface()

	for i := 0; i < socialmediacount; i++ {
		fmt.Println(sm.urlsOrderedByPopularity[i] + " : " + sm.urls[i]);
	}
}
