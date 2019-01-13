package main
import "fmt"

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
	urlsOrderedByPopularity [37]string
}

func SocialMediaInterface() SocialMedia {
	sm := SocialMediaDefault()

	sm.urlsOrderedByPopularity = [...]string{
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
	var digg string = "http://digg.com/submit?url=" + sm.url + "&title=" + sm.text
	var douban string = "http://www.douban.com/recommend/?url=" + sm.url + "&title=" + sm.title
	var email string = "mailto:" + sm.email_address + "?subject=" + sm.title + "&body=" + sm.desc
	var evernote string = "http://www.evernote.com/clip.action?url=" + sm.url + "&title=" + sm.text
	var getpocket string = "https://getpocket.com/edit?url=" + sm.url
	var facebook string = "http://www.facebook.com/sharer.php?u=" + sm.url
	var flattr string = "https://flattr.com/submit/auto?user_id=" + sm.user_id + "&url=" + sm.url + "&title=" + sm.title + "&description=" + sm.text + "&language=" + sm.language + "&tags=" + sm.hash_tags + "&hidden=HIDDEN&category=" + sm.category
	var flipboard string = "https://share.flipboard.com/bookmarklet/popout?v=2&title=" + sm.text + "&url=" + sm.url 
	var gmail string = "https://mail.google.com/mail/?view=cm&to=" + sm.email_address + "&su=" + sm.title + "&body=" + sm.url + "&bcc=" + sm.bcc_email_address + "&cc=" + sm.cc_email_address
	var googlebookmarks string = "https://www.google.com/bookmarks/mark?op=edit&bkmk=" + sm.url + "&title=" + sm.title + "&annotation=" + sm.text + "&labels=" + sm.hash_tags
	var instapaper string = "http://www.instapaper.com/edit?url=" + sm.url + "&title=" + sm.title + "&description=" + sm.desc
	var lineme string = "https://lineit.line.me/share/ui?url=" + sm.url + "&text=" + sm.text
	var linkedin string = "https://www.linkedin.com/shareArticle?mini=true&url=" + sm.url + "&title=" + sm.title + "&summary=" + sm.text + "&source=" + sm.provider
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
	var xing string = "https://www.xing.com/spi/shares/new?url=" + sm.url
	var yahoo string = "http://compose.mail.yahoo.com/?to=" + sm.email_address + "&subject=" + sm.title + "&body=" + sm.text

		// NOTE : This ordering must identically match urlsOrderedByPopularity.

	var index int = 0
	index++
	
	sm.urls[index] = googlebookmarks
	index++
	
	sm.urls[index] = facebook
	index++
	
	sm.urls[index] = reddit
	index++
	
	sm.urls[index] = twitter
	index++
	
	sm.urls[index] = linkedin
	index++
	
	sm.urls[index] = tumblr
	index++
	
	sm.urls[index] = pinterest
	index++
	
	sm.urls[index] = blogger
	index++
	
	sm.urls[index] = livejournal
	index++
	
	sm.urls[index] = evernote
	index++
	
	sm.urls[index] = addthis
	index++
	
	sm.urls[index] = getpocket
	index++
	
	sm.urls[index] = hackernews
	index++
	
	sm.urls[index] = digg
	index++
	
	sm.urls[index] = buffer
	index++
	
	sm.urls[index] = flipboard
	index++
	
	sm.urls[index] = instapaper
	index++
	
	sm.urls[index] = surfingbird
	index++
	
	sm.urls[index] = flattr
	index++
	
	sm.urls[index] = diaspora
	index++
	
	sm.urls[index] = qzone
	index++
	
	sm.urls[index] = vk
	index++
	
	sm.urls[index] = weibo
	index++
	
	sm.urls[index] = okru
	index++
	
	sm.urls[index] = douban
	index++
	
	sm.urls[index] = xing
	index++
	
	sm.urls[index] = renren
	index++
	
	sm.urls[index] = threema
	index++
	
	sm.urls[index] = sms
	index++
	
	sm.urls[index] = lineme
	index++
	
	sm.urls[index] = skype
	index++
	
	sm.urls[index] = telegramme
	index++
	
	sm.urls[index] = email
	index++
	
	sm.urls[index] = gmail
	index++
	
	sm.urls[index] = yahoo

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

	for i := 0; i < 37; i++ {
		fmt.Println(sm.urlsOrderedByPopularity[i] + " : " + sm.urls[i]);
	}
}
