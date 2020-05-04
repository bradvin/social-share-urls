#include <iostream>
#include <vector>
#include <algorithm>
#include <string.h>
using namespace std;

#define SOCIALMEDIASERVICES 37
#define URLSIZE 1024
#define ARGLENGTH 1024

class SocialMedia {
	public:
		SocialMedia();

		char url[ARGLENGTH] = "";
		char title[ARGLENGTH] = "";
		char desc[ARGLENGTH] = "";
		char image[ARGLENGTH] = "";
		char app_id[ARGLENGTH] = "";
		char redirect_url[ARGLENGTH] = "";
		char via[ARGLENGTH] = "";
		char hash_tags[ARGLENGTH] = "";
		char provider[ARGLENGTH] = "";
		char language[ARGLENGTH] = "";
		char user_id[ARGLENGTH] = "";
		char category[ARGLENGTH] = "";
		char phone_number[ARGLENGTH] = "";
		char email_address[ARGLENGTH] = "";
		char cc_email_address[ARGLENGTH] = "";
		char bcc_email_address[ARGLENGTH] = "";

		char urls[SOCIALMEDIASERVICES][URLSIZE];
		char urlsOrderedByPopularity[SOCIALMEDIASERVICES][URLSIZE] = {
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
		char urlsOrderedByName[SOCIALMEDIASERVICES][URLSIZE] = {};
};

SocialMedia::SocialMedia() {
	sprintf(url, "%s", "http%3A%2F%2Fwww.earthfluent.com%2F");
	sprintf(title, "%s", "EarthFluent");
	sprintf(desc, "%s", "Want%20to%20learn%20another%20language%3F%20%20Learn%20Spanish%2C%20French%2C%20Italian%2C%20German%2C%20Japanese%2C%20Chinese%2C%20Hindi%2C%20Indonesian%2C%20Dutch%2C%20Polish%2C%20Portuguese%2C%20or%20Russian%21");

	char text[ARGLENGTH];

	if(strlen(desc)) {
		sprintf(text, "%s%s%s", title, "%20%3A%20", desc);
	} else {
		sprintf(text, "%s", title);
	}

	std::vector<string> stringarray (urlsOrderedByPopularity, urlsOrderedByPopularity + SOCIALMEDIASERVICES);
	std::sort(stringarray.begin(), stringarray.end());

	for(int i = 0; i < SOCIALMEDIASERVICES; i++) {
		strcpy(urlsOrderedByName[i], stringarray[i].c_str());
	}

	char addthis[URLSIZE];
	sprintf(addthis, "%s%s", "http://www.addthis.com/bookmark.php?url=", url);
	
	char blogger[URLSIZE];
	sprintf(blogger, "%s%s%s%s%s%s", "https://www.blogger.com/blog-this.g?u=", url, "&n=", title, "&t=", desc);

	char buffer[URLSIZE];
	sprintf(buffer, "%s%s%s%s", "https://buffer.com/add?text=", text, "&url=", url);

	char diaspora[URLSIZE];
	sprintf(diaspora, "%s%s%s%s", "https://share.diasporafoundation.org/?title=", title, "&url=", url);
	
	char digg[URLSIZE];
	sprintf(digg, "%s%s%s%s", "http://digg.com/submit?url=", url, "&title=", text);

	char douban[URLSIZE];
	sprintf(douban, "%s%s%s%s", "http://www.douban.com/recommend/?url=", url, "&title=", title);

	char email[URLSIZE];
	sprintf(email, "%s%s%s%s%s%s", "mailto:", email_address, "?subject=", title, "&body=", desc);

	char evernote[URLSIZE];
	sprintf(evernote, "%s%s%s%s", "https://www.evernote.com/clip.action?url=", url, "&title=", title);
	
	char getpocket[URLSIZE];
	sprintf(getpocket, "%s%s", "https://getpocket.com/edit?url=", url);
	
	char facebook[URLSIZE];
	sprintf(facebook, "%s%s", "http://www.facebook.com/sharer.php?u=", url);
	
	char flattr[URLSIZE];
	sprintf(flattr, "%s%s%s%s%s%s%s%s%s%s%s%s%s%s", "https://flattr.com/submit/auto?user_id=", user_id, "&url=", url, "&title=", title, "&description=", text, "&language=", language, "&tags=", hash_tags, "&hidden=HIDDEN&category=", category);
	
	char flipboard[URLSIZE];
	sprintf(flipboard, "%s%s%s%s", "https://share.flipboard.com/bookmarklet/popout?v=2&title=", text, "&url=", url);
	
	char gmail[URLSIZE];
	sprintf(gmail, "%s%s%s%s%s%s%s%s%s%s", "https://mail.google.com/mail/?view=cm&to=", email_address, "&su=", title, "&body=", url, "&bcc=", bcc_email_address, "&cc=", cc_email_address);
	
	char googlebookmarks[URLSIZE];
	sprintf(googlebookmarks, "%s%s%s%s%s%s%s%s", "https://www.google.com/bookmarks/mark?op=edit&bkmk=", url, "&title=", title, "&annotation=", text, "&labels=", hash_tags);
	
	char instapaper[URLSIZE];
	sprintf(instapaper, "%s%s%s%s%s%s", "http://www.instapaper.com/edit?url=", url, "&title=", title, "&description=", desc);
	
	char lineme[URLSIZE];
	sprintf(lineme, "%s%s%s%s", "https://lineit.line.me/share/ui?url=", url, "&text=", text);
	
	char linkedin[URLSIZE];
	sprintf(linkedin, "%s%s", "https://www.linkedin.com/sharing/share-offsite/?url=", url);
	
	char livejournal[URLSIZE];
	sprintf(livejournal, "%s%s%s%s", "http://www.livejournal.com/update.bml?subject=", text, "&event=", url);
	
	char hackernews[URLSIZE];
	sprintf(hackernews, "%s%s%s%s", "https://news.ycombinator.com/submitlink?u=", url, "&t=", title);
	
	char okru[URLSIZE];
	sprintf(okru, "%s%s", "https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=", url);
	
	char pinterest[URLSIZE];
	sprintf(pinterest, "%s%s", "http://pinterest.com/pin/create/button/?url=", url);
	
	char qzone[URLSIZE];
	sprintf(qzone, "%s%s", "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=", url);
	
	char reddit[URLSIZE];
	sprintf(reddit, "%s%s%s%s", "https://reddit.com/submit?url=", url, "&title=", title);
	
	char renren[URLSIZE];
	sprintf(renren, "%s%s%s%s%s%s%s%s", "http://widget.renren.com/dialog/share?resourceUrl=", url, "&srcUrl=", url, "&title=", title, "&description=", desc);
	
	char skype[URLSIZE];
	sprintf(skype, "%s%s%s%s", "https://web.skype.com/share?url=", url, "&text=", text);
	
	char sms[URLSIZE];
	sprintf(sms, "%s%s%s%s", "sms:", phone_number, "?body=", text);

	char surfingbird[URLSIZE];
	sprintf(surfingbird, "%s%s%s%s%s%s%s%s", "http://surfingbird.ru/share?url=", url, "&description=", desc, "&screenshot=", image, "&title=", title);
	
	char telegramme[URLSIZE];
	sprintf(telegramme, "%s%s%s%s%s%s", "https://t.me/share/url?url=", url, "&text=", text, "&to=", phone_number);
	
	char threema[URLSIZE];
	sprintf(threema, "%s%s%s%s", "threema://compose?text=", text, "&id=", user_id);
	
	char tumblr[URLSIZE];
	sprintf(tumblr, "%s%s%s%s%s%s%s%s", "https://www.tumblr.com/widgets/share/tool?canonicalUrl=", url, "&title=", title, "&caption=", desc, "&tags=", hash_tags);
	
	char twitter[URLSIZE];
	sprintf(twitter, "%s%s%s%s%s%s%s%s", "https://twitter.com/intent/tweet?url=", url, "&text=", text, "&via=", via, "&hashtags=", hash_tags);
	
	char vk[URLSIZE];
	sprintf(vk, "%s%s%s%s%s%s", "http://vk.com/share.php?url=", url, "&title=", title, "&comments=", desc);
	
	char weibo[URLSIZE];
	sprintf(weibo, "%s%s%s%s%s", "http://service.weibo.com/share/share.php?url=", url, "&appkey=&title=", title, "&pic=&ralateUid=");
	
	char xing[URLSIZE];
	sprintf(xing, "%s%s", "https://www.xing.com/spi/shares/new?url=", url);
	
	char yahoo[URLSIZE];
	sprintf(yahoo, "%s%s%s%s%s%s", "http://compose.mail.yahoo.com/?to=", email_address, "&subject=", title, "&body=", text);

	int i = 0;

		// NOTE : This ordering must identically match urlsOrderedByPopularity.
	
	strcpy(urls[i++], googlebookmarks);
	strcpy(urls[i++], facebook);
	strcpy(urls[i++], reddit);
	strcpy(urls[i++], twitter);
	strcpy(urls[i++], linkedin);
	strcpy(urls[i++], tumblr);
	strcpy(urls[i++], pinterest);
	strcpy(urls[i++], blogger);
	strcpy(urls[i++], livejournal);
	strcpy(urls[i++], evernote);
	strcpy(urls[i++], addthis);
	strcpy(urls[i++], getpocket);
	strcpy(urls[i++], hackernews);
	strcpy(urls[i++], digg);
	strcpy(urls[i++], buffer);
	strcpy(urls[i++], flipboard);
	strcpy(urls[i++], instapaper);
	strcpy(urls[i++], surfingbird);
	strcpy(urls[i++], flattr);
	strcpy(urls[i++], diaspora);
	strcpy(urls[i++], qzone);
	strcpy(urls[i++], vk);
	strcpy(urls[i++], weibo);
	strcpy(urls[i++], okru);
	strcpy(urls[i++], douban);
	strcpy(urls[i++], xing);
	strcpy(urls[i++], renren);
	strcpy(urls[i++], threema);
	strcpy(urls[i++], sms);
	strcpy(urls[i++], lineme);
	strcpy(urls[i++], skype);
	strcpy(urls[i++], telegramme);
	strcpy(urls[i++], email);
	strcpy(urls[i++], gmail);
	strcpy(urls[i++], yahoo);
};

int main() {
	SocialMedia sm;

	for(int i = 0; i < SOCIALMEDIASERVICES; i++) {
		printf("%s", sm.urlsOrderedByPopularity[i]);
		printf(" : ");
		printf("%s", sm.urls[i]);
		printf("\n");
	}

	return 0;
}
