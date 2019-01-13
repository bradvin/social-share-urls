#include <stdio.h>

#define SOCIALMEDIASERVICES 37
#define URLSIZE 1024
#define ARGLENGTH 1024

struct SocialMediaArgs_Interface {
	char url[ARGLENGTH];
	char title[ARGLENGTH];
	char desc[ARGLENGTH];
	char image[ARGLENGTH];
	char app_id[ARGLENGTH];
	char redirect_url[ARGLENGTH];
	char via[ARGLENGTH];
	char hash_tags[ARGLENGTH];
	char provider[ARGLENGTH];
	char language[ARGLENGTH];
	char user_id[ARGLENGTH];
	char category[ARGLENGTH];
	char phone_number[ARGLENGTH];
	char email_address[ARGLENGTH];
	char cc_email_address[ARGLENGTH];
	char bcc_email_address[ARGLENGTH];
} SocialMediaArgs_default = {
	"http%3A%2F%2Fwww.earthfluent.com%2F",
	"EarthFluent",
	"Want%20to%20learn%20another%20language%3F%20%20Learn%20Spanish%2C%20French%2C%20Italian%2C%20German%2C%20Japanese%2C%20Chinese%2C%20Hindi%2C%20Indonesian%2C%20Dutch%2C%20Polish%2C%20Portuguese%2C%20or%20Russian%21",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	""
};

typedef struct SocialMediaArgs_Interface SocialMediaArgs;

struct SocialMedia_Interface {
		char urls[SOCIALMEDIASERVICES][URLSIZE];
		char urlsOrderedByPopularity[SOCIALMEDIASERVICES][URLSIZE];
		char urlsOrderedByName[SOCIALMEDIASERVICES][URLSIZE];
} SocialMedia_default = {
	{
	},
	{
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
	},
	{
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
		"surfingbird.ru",
		"telegram.me",
		"threema",
		"tumblr",
		"twitter",
		"vk",
		"weibo",
		"xing",
		"yahoo",
	},
};

typedef struct SocialMedia_Interface SocialMedia;

struct SocialMedia_Interface buildUrls(void) {
	SocialMediaArgs sma = SocialMediaArgs_default;
	SocialMedia sm = SocialMedia_default;
	
	char text[ARGLENGTH];

	if(strlen(sma.desc)) {
		sprintf(text, "%s%s%s", sma.title, "%20%3A%20", sma.desc);
	} else {
		sprintf(text, "%s", sma.title);
	}
	
	char addthis[URLSIZE];
	sprintf(addthis, "%s%s", "http://www.addthis.com/bookmark.php?url=", sma.url);
	
	char blogger[URLSIZE];
	sprintf(blogger, "%s%s%s%s%s%s", "https://www.blogger.com/blog-this.g?u=", sma.url, "&n=", sma.title, "&t=", sma.desc);

	char buffer[URLSIZE];
	sprintf(buffer, "%s%s%s%s", "https://buffer.com/add?text=", text, "&url=", sma.url);

	char diaspora[URLSIZE];
	sprintf(diaspora, "%s%s%s%s", "https://share.diasporafoundation.org/?title=", sma.title, "&url=", sma.url);
	
	char digg[URLSIZE];
	sprintf(digg, "%s%s%s%s", "http://digg.com/submit?url=", sma.url, "&title=", text);

	char douban[URLSIZE];
	sprintf(douban, "%s%s%s%s", "http://www.douban.com/recommend/?url=", sma.url, "&title=", sma.title);

	char email[URLSIZE];
	sprintf(email, "%s%s%s%s%s%s", "mailto:", sma.email_address, "?subject=", sma.title, "&body=", sma.desc);

	char evernote[URLSIZE];
	sprintf(evernote, "%s%s%s%s", "http://www.evernote.com/clip.action?url=", sma.url, "&title=", sma.title);
	
	char getpocket[URLSIZE];
	sprintf(getpocket, "%s%s", "https://getpocket.com/edit?url=", sma.url);
	
	char facebook[URLSIZE];
	sprintf(facebook, "%s%s", "http://www.facebook.com/sharer.php?u=", sma.url);
	
	char flattr[URLSIZE];
	sprintf(flattr, "%s%s%s%s%s%s%s%s%s%s%s%s%s%s", "https://flattr.com/submit/auto?user_id=", sma.user_id, "&url=", sma.url, "&title=", sma.title, "&description=", text, "&language=", sma.language, "&tags=", sma.hash_tags, "&hidden=HIDDEN&category=", sma.category);
	
	char flipboard[URLSIZE];
	sprintf(flipboard, "%s%s%s%s", "https://share.flipboard.com/bookmarklet/popout?v=2&title=", text, "&url=", sma.url);
	
	char gmail[URLSIZE];
	sprintf(gmail, "%s%s%s%s%s%s%s%s%s%s", "https://mail.google.com/mail/?view=cm&to=", sma.email_address, "&su=", sma.title, "&body=", sma.url, "&bcc=", sma.bcc_email_address, "&cc=", sma.cc_email_address);
	
	char googlebookmarks[URLSIZE];
	sprintf(googlebookmarks, "%s%s%s%s%s%s%s%s", "https://www.google.com/bookmarks/mark?op=edit&bkmk=", sma.url, "&title=", sma.title, "&annotation=", text, "&labels=", sma.hash_tags);
	
	char instapaper[URLSIZE];
	sprintf(instapaper, "%s%s%s%s%s%s", "http://www.instapaper.com/edit?url=", sma.url, "&title=", sma.title, "&description=", sma.desc);
	
	char lineme[URLSIZE];
	sprintf(lineme, "%s%s%s%s", "https://lineit.line.me/share/ui?url=", sma.url, "&text=", text);
	
	char linkedin[URLSIZE];
	sprintf(linkedin, "%s%s%s%s%s%s%s%s", "https://www.linkedin.com/shareArticle?mini=true&url=", sma.url, "&title=", sma.title, "&summary=", text, "&source=", sma.provider);
	
	char livejournal[URLSIZE];
	sprintf(livejournal, "%s%s%s%s", "http://www.livejournal.com/update.bml?subject=", text, "&event=", sma.url);
	
	char hackernews[URLSIZE];
	sprintf(hackernews, "%s%s%s%s", "https://news.ycombinator.com/submitlink?u=", sma.url, "&t=", sma.title);
	
	char okru[URLSIZE];
	sprintf(okru, "%s%s", "https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=", sma.url);
	
	char pinterest[URLSIZE];
	sprintf(pinterest, "%s%s", "http://pinterest.com/pin/create/button/?url=", sma.url);
	
	char qzone[URLSIZE];
	sprintf(qzone, "%s%s", "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=", sma.url);
	
	char reddit[URLSIZE];
	sprintf(reddit, "%s%s%s%s", "https://reddit.com/submit?url=", sma.url, "&title=", sma.title);
	
	char renren[URLSIZE];
	sprintf(renren, "%s%s%s%s%s%s%s%s", "http://widget.renren.com/dialog/share?resourceUrl=", sma.url, "&srcUrl=", sma.url, "&title=", sma.title, "&description=", sma.desc);
	
	char skype[URLSIZE];
	sprintf(skype, "%s%s%s%s", "https://web.skype.com/share?url=", sma.url, "&text=", text);
	
	char sms[URLSIZE];
	sprintf(sms, "%s%s%s%s", "sms:", sma.phone_number, "?body=", text);
	
	char surfingbird[URLSIZE];
	sprintf(surfingbird, "%s%s%s%s%s%s%s%s", "http://surfingbird.ru/share?url=", sma.url, "&description=", sma.desc, "&screenshot=", sma.image, "&title=", sma.title);
	
	char telegramme[URLSIZE];
	sprintf(telegramme, "%s%s%s%s%s%s", "https://t.me/share/url?url=", sma.url, "&text=", text, "&to=", sma.phone_number);
	
	char threema[URLSIZE];
	sprintf(threema, "%s%s%s%s", "threema://compose?text=", text, "&id=", sma.user_id);
	
	char tumblr[URLSIZE];
	sprintf(tumblr, "%s%s%s%s%s%s%s%s", "https://www.tumblr.com/widgets/share/tool?canonicalUrl=", sma.url, "&title=", sma.title, "&caption=", sma.desc, "&tags=", sma.hash_tags);
	
	char twitter[URLSIZE];
	sprintf(twitter, "%s%s%s%s%s%s%s%s", "https://twitter.com/intent/tweet?url=", sma.url, "&text=", text, "&via=", sma.via, "&hashtags=", sma.hash_tags);
	
	char vk[URLSIZE];
	sprintf(vk, "%s%s%s%s%s%s", "http://vk.com/share.php?url=", sma.url, "&title=", sma.title, "&comments=", sma.desc);
	
	char weibo[URLSIZE];
	sprintf(weibo, "%s%s%s%s%s", "http://service.weibo.com/share/share.php?url=", sma.url, "&appkey=&title=", sma.title, "&pic=&ralateUid=");
	
	char xing[URLSIZE];
	sprintf(xing, "%s%s", "https://www.xing.com/spi/shares/new?url=", sma.url);
	
	char yahoo[URLSIZE];
	sprintf(yahoo, "%s%s%s%s%s%s", "http://compose.mail.yahoo.com/?to=", sma.email_address, "&subject=", sma.title, "&body=", text);

	char urllist[SOCIALMEDIASERVICES][URLSIZE];
	int i = 0;

			// NOTE : This ordering must identically match urlsOrderedByPopularity.

	strcpy(urllist[i++], googlebookmarks);
	strcpy(urllist[i++], facebook);
	strcpy(urllist[i++], reddit);
	strcpy(urllist[i++], twitter);
	strcpy(urllist[i++], linkedin);
	strcpy(urllist[i++], tumblr);
	strcpy(urllist[i++], pinterest);
	strcpy(urllist[i++], blogger);
	strcpy(urllist[i++], livejournal);
	strcpy(urllist[i++], evernote);
	strcpy(urllist[i++], addthis);
	strcpy(urllist[i++], getpocket);
	strcpy(urllist[i++], hackernews);
	strcpy(urllist[i++], digg);
	strcpy(urllist[i++], buffer);
	strcpy(urllist[i++], flipboard);
	strcpy(urllist[i++], instapaper);
	strcpy(urllist[i++], surfingbird);
	strcpy(urllist[i++], flattr);
	strcpy(urllist[i++], diaspora);
	strcpy(urllist[i++], qzone);
	strcpy(urllist[i++], vk);
	strcpy(urllist[i++], weibo);
	strcpy(urllist[i++], okru);
	strcpy(urllist[i++], douban);
	strcpy(urllist[i++], xing);
	strcpy(urllist[i++], renren);
	strcpy(urllist[i++], threema);
	strcpy(urllist[i++], sms);
	strcpy(urllist[i++], lineme);
	strcpy(urllist[i++], skype);
	strcpy(urllist[i++], telegramme);
	strcpy(urllist[i++], email);
	strcpy(urllist[i++], gmail);
	strcpy(urllist[i++], yahoo);

	for(int i = 0; i < SOCIALMEDIASERVICES; i++) {
		strcpy(sm.urls[i], urllist[i]);
	}

	return sm;
}

int main(void) {
	SocialMedia sm = buildUrls();
	
	for(int i = 0; i < SOCIALMEDIASERVICES; i++) {
		printf("%s", sm.urlsOrderedByPopularity[i]);
		printf(" : ");
		printf("%s", sm.urls[i]);
		printf("\n");
	}
	
	return 0;
}
