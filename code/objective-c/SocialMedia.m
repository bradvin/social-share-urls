#import <Foundation/Foundation.h>

#define SOCIALMEDIASERVICES 37
#define URLSIZE 1024
#define ARGLENGTH 1024

@interface SocialMedia:NSObject {
	NSString* url;
	NSString* title;
	NSString* image;
	NSString* desc;
	NSString* appid;
	NSString* redirecturl;
	NSString* via;
	NSString* hash_tags;
	NSString* provider;
	NSString* language;
	NSString* user_id;
	NSString* category;
	NSString* phone_number;
	NSString* email_address;
	NSString* cc_email_address;
	NSString* bcc_email_address;
	
	NSArray* urls;
	NSArray* urlsOrderedByPopularity;
	NSArray* urlsOrderedByName;
}

@property(nonatomic, readwrite) NSString* url;
@property(nonatomic, readwrite) NSString* title;
@property(nonatomic, readwrite) NSString* image;
@property(nonatomic, readwrite) NSString* desc;
@property(nonatomic, readwrite) NSString* appid;
@property(nonatomic, readwrite) NSString* redirecturl;
@property(nonatomic, readwrite) NSString* via;
@property(nonatomic, readwrite) NSString* hash_tags;
@property(nonatomic, readwrite) NSString* provider;
@property(nonatomic, readwrite) NSString* language;
@property(nonatomic, readwrite) NSString* user_id;
@property(nonatomic, readwrite) NSString* category;
@property(nonatomic, readwrite) NSString* phone_number;
@property(nonatomic, readwrite) NSString* email_address;
@property(nonatomic, readwrite) NSString* cc_email_address;
@property(nonatomic, readwrite) NSString* bcc_email_address;

@property(nonatomic, readwrite) NSArray* urls;
@property(nonatomic, readwrite) NSArray* urlsOrderedByPopularity;
@property(nonatomic, readwrite) NSArray* urlsOrderedByName;

@end

@implementation SocialMedia

@synthesize url;

@synthesize urls;
@synthesize urlsOrderedByPopularity;
@synthesize urlsOrderedByName;

-(id)init {
	self = [super init];

	url = @"http%3A%2F%2Fwww.earthfluent.com%2F";
	title = @"EarthFluent";
	image = @"";
	desc = @"Want%20to%20learn%20another%20language%3F%20%20Learn%20Spanish%2C%20French%2C%20Italian%2C%20German%2C%20Japanese%2C%20Chinese%2C%20Hindi%2C%20Indonesian%2C%20Dutch%2C%20Polish%2C%20Portuguese%2C%20or%20Russian%21";
	appid = @"";
	redirecturl = @"";
	via = @"";
	hash_tags = @"";
	provider = @"";
	language = @"";
	user_id = @"";
	category = @"";
	phone_number = @"";
	email_address = @"";
	cc_email_address = @"";
	bcc_email_address = @"";

	urlsOrderedByPopularity = [NSArray arrayWithObjects:
			@"google.plus",
			@"google.bookmarks",
			@"facebook",
			@"reddit",
			@"twitter",
			@"linkedin",
			@"tumblr",
			@"pinterest",
			@"blogger",
			@"livejournal",
			@"evernote",
			@"add.this",
			@"getpocket",
			@"hacker.news",
			@"stumbleupon",
			@"digg",
			@"buffer",
			@"flipboard",
			@"instapaper",
			@"surfingbird.ru",
			@"flattr",
			@"diaspora",
			@"qzone",
			@"vk",
			@"weibo",
			@"ok.ru",
			@"douban",
			@"xing",
			@"renren",
			@"threema",
			@"sms",
			@"line.me",
			@"skype",
			@"telegram.me",
			@"email",
			@"gmail",
			@"yahoo",
	nil];

	urlsOrderedByName = [NSArray arrayWithObjects:
			@"add.this",
			@"blogger",
			@"buffer",
			@"diaspora",
			@"digg",
			@"douban",
			@"email",
			@"evernote",
			@"facebook",
			@"flattr",
			@"flipboard",
			@"getpocket",
			@"gmail",
			@"google.bookmarks",
			@"google.plus",
			@"hacker.news",
			@"instapaper",
			@"line.me",
			@"linkedin",
			@"livejournal",
			@"ok.ru",
			@"pinterest",
			@"qzone",
			@"reddit",
			@"renren",
			@"skype",
			@"sms",
			@"stumbleupon",
			@"surfingbird.ru",
			@"telegram.me",
			@"threema",
			@"tumblr",
			@"twitter",
			@"vk",
			@"weibo",
			@"xing",
			@"yahoo",
	nil];

	char text[255];

	if(desc) {
		sprintf(text, "%s%s%s", [title UTF8String], "%20%3A%20", [desc UTF8String]);		// "%20%3A%20" is just " : "
	} else {
		sprintf(text, "%s", title);
	}

	NSString* fulltext = [NSString stringWithCString:text encoding:NSASCIIStringEncoding];

	NSString* addthis = @"";
	addthis = [addthis stringByAppendingString:@"http://www.addthis.com/bookmark.php?url="];
	addthis = [addthis stringByAppendingString:url];

	NSString* blogger = @"";
	blogger = [blogger stringByAppendingString:@"https://www.blogger.com/blog-this.g?u="];
	blogger = [blogger stringByAppendingString:url];
	blogger = [blogger stringByAppendingString:@"&n="];
	blogger = [blogger stringByAppendingString:title];
	blogger = [blogger stringByAppendingString:@"&t="];
	blogger = [blogger stringByAppendingString:desc];

	NSString* buffer = @"";
	buffer = [buffer stringByAppendingString:@"https://buffer.com/add?text="];
	buffer = [buffer stringByAppendingString:fulltext];

	NSString* diaspora = @"";
	diaspora = [diaspora stringByAppendingString:@"https://share.diasporafoundation.org/?title="];
	diaspora = [diaspora stringByAppendingString:title];
	diaspora = [diaspora stringByAppendingString:@"&url="];
	diaspora = [diaspora stringByAppendingString:url];

	NSString* digg = @"";
	digg = [digg stringByAppendingString:@"http://digg.com/submit?url="];
	digg = [digg stringByAppendingString:url];
	digg = [digg stringByAppendingString:@"&title="];
	digg = [digg stringByAppendingString:title];

	NSString* douban = @"";
	douban = [douban stringByAppendingString:@"http://www.douban.com/recommend/?url="];
	douban = [douban stringByAppendingString:url];
	douban = [douban stringByAppendingString:@"&title="];
	douban = [douban stringByAppendingString:title];

	NSString* email = @"";
	email = [email stringByAppendingString:@"mailto:"];
	email = [email stringByAppendingString:email_address];
	email = [email stringByAppendingString:@"?subject="];
	email = [email stringByAppendingString:title];
	email = [email stringByAppendingString:@"&body="];
	email = [email stringByAppendingString:fulltext];

	NSString* evernote = @"";
	evernote = [evernote stringByAppendingString:@"http://www.evernote.com/clip.action?url="];
	evernote = [evernote stringByAppendingString:url];
	evernote = [evernote stringByAppendingString:@"&title="];
	evernote = [evernote stringByAppendingString:fulltext];

	NSString* getpocket = @"";
	getpocket = [getpocket stringByAppendingString:@"https://getpocket.com/edit?url="];
	getpocket = [getpocket stringByAppendingString:url];

	NSString* facebook = @"";
	facebook = [facebook stringByAppendingString:@"http://www.facebook.com/sharer.php?u="];
	facebook = [facebook stringByAppendingString:url];

	NSString* flattr = @"";
	flattr = [flattr stringByAppendingString:@"https://flattr.com/submit/auto?user_id="];
	flattr = [flattr stringByAppendingString:user_id];
	flattr = [flattr stringByAppendingString:@"&url="];
	flattr = [flattr stringByAppendingString:url];
	flattr = [flattr stringByAppendingString:@"&title="];
	flattr = [flattr stringByAppendingString:title];
	flattr = [flattr stringByAppendingString:@"&description="];
	flattr = [flattr stringByAppendingString:fulltext];
	flattr = [flattr stringByAppendingString:@"&language="];
	flattr = [flattr stringByAppendingString:language];
	flattr = [flattr stringByAppendingString:@"&tags="];
	flattr = [flattr stringByAppendingString:hash_tags];
	flattr = [flattr stringByAppendingString:@"&hidden=HIDDEN&category="];
	flattr = [flattr stringByAppendingString:category];

	NSString* flipboard = @"";
	flipboard = [flipboard stringByAppendingString:@"https://share.flipboard.com/bookmarklet/popout?v=2&title="];
	flipboard = [flipboard stringByAppendingString:fulltext];
	flipboard = [flipboard stringByAppendingString:@"&url="];
	flipboard = [flipboard stringByAppendingString:url];

	NSString* gmail = @"";
	gmail = [gmail stringByAppendingString:@"https://mail.google.com/mail/?view=cm&to="];
	gmail = [gmail stringByAppendingString:email_address];
	gmail = [gmail stringByAppendingString:@"&su="];
	gmail = [gmail stringByAppendingString:title];
	gmail = [gmail stringByAppendingString:@"&body="];
	gmail = [gmail stringByAppendingString:url];
	gmail = [gmail stringByAppendingString:@"&bcc="];
	gmail = [gmail stringByAppendingString:bcc_email_address];
	gmail = [gmail stringByAppendingString:@"&cc="];
	gmail = [gmail stringByAppendingString:cc_email_address];

	NSString* googlebookmarks = @"";
	googlebookmarks = [googlebookmarks stringByAppendingString:@"https://www.google.com/bookmarks/mark?op=edit&bkmk="];
	googlebookmarks = [googlebookmarks stringByAppendingString:url];
	googlebookmarks = [googlebookmarks stringByAppendingString:@"&title="];
	googlebookmarks = [googlebookmarks stringByAppendingString:title];
	googlebookmarks = [googlebookmarks stringByAppendingString:@"&annotation="];
	googlebookmarks = [googlebookmarks stringByAppendingString:fulltext];
	googlebookmarks = [googlebookmarks stringByAppendingString:@"&labels="];
	googlebookmarks = [googlebookmarks stringByAppendingString:hash_tags];

	NSString* instapaper = @"";
	instapaper = [instapaper stringByAppendingString:@"http://www.instapaper.com/edit?url="];
	instapaper = [instapaper stringByAppendingString:url];
	instapaper = [instapaper stringByAppendingString:@"&title="];
	instapaper = [instapaper stringByAppendingString:title];
	instapaper = [instapaper stringByAppendingString:@"&description="];
	instapaper = [instapaper stringByAppendingString:desc];

	NSString* lineme = @"";
	lineme = [lineme stringByAppendingString:@"https://lineit.line.me/share/ui?url="];
	lineme = [lineme stringByAppendingString:url];
	lineme = [lineme stringByAppendingString:@"&text="];
	lineme = [lineme stringByAppendingString:fulltext];

	NSString* linkedin = @"";
	linkedin = [linkedin stringByAppendingString:@"https://www.linkedin.com/shareArticle?mini=true&url="];
	linkedin = [linkedin stringByAppendingString:url];
	linkedin = [linkedin stringByAppendingString:@"&title="];
	linkedin = [linkedin stringByAppendingString:title];
	linkedin = [linkedin stringByAppendingString:@"&summary="];
	linkedin = [linkedin stringByAppendingString:fulltext];
	linkedin = [linkedin stringByAppendingString:@"&source="];
	linkedin = [linkedin stringByAppendingString:provider];

	NSString* livejournal = @"";
	livejournal = [livejournal stringByAppendingString:@"http://www.livejournal.com/update.bml?subject="];
	livejournal = [livejournal stringByAppendingString:fulltext];
	livejournal = [livejournal stringByAppendingString:@"http://www.livejournal.com/update.bml?event="];
	livejournal = [livejournal stringByAppendingString:url];

	NSString* hackernews = @"";
	hackernews = [hackernews stringByAppendingString:@"https://news.ycombinator.com/submitlink?u="];
	hackernews = [hackernews stringByAppendingString:url];
	hackernews = [hackernews stringByAppendingString:@"&t="];
	hackernews = [hackernews stringByAppendingString:title];

	NSString* okru = @"";
	okru = [okru stringByAppendingString:@"https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl="];
	okru = [okru stringByAppendingString:url];

	NSString* pinterest = @"";
	pinterest = [pinterest stringByAppendingString:@"http://pinterest.com/pin/create/button/?url="];
	pinterest = [pinterest stringByAppendingString:url];

	NSString* googleplus = @"";
	googleplus = [googleplus stringByAppendingString:@"https://plus.google.com/share?url="];
	googleplus = [googleplus stringByAppendingString:url];
	googleplus = [googleplus stringByAppendingString:@"&text="];
	googleplus = [googleplus stringByAppendingString:fulltext];
	googleplus = [googleplus stringByAppendingString:@"&hl="];
	googleplus = [googleplus stringByAppendingString:language];

	NSString* qzone = @"";
	qzone = [qzone stringByAppendingString:@"http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url="];
	qzone = [qzone stringByAppendingString:url];

	NSString* reddit = @"";
	reddit = [reddit stringByAppendingString:@"https://reddit.com/submit?url="];
	reddit = [reddit stringByAppendingString:url];
	reddit = [reddit stringByAppendingString:@"&title="];
	reddit = [reddit stringByAppendingString:title];

	NSString* renren = @"";
	renren = [renren stringByAppendingString:@"http://widget.renren.com/dialog/share?resourceUrl="];
	renren = [renren stringByAppendingString:url];
	renren = [renren stringByAppendingString:@"&srcUrl="];
	renren = [renren stringByAppendingString:url];
	renren = [renren stringByAppendingString:@"&title="];
	renren = [renren stringByAppendingString:title];
	renren = [renren stringByAppendingString:@"&description="];
	renren = [renren stringByAppendingString:desc];

	NSString* skype = @"";
	skype = [skype stringByAppendingString:@"https://web.skype.com/share?url="];
	skype = [skype stringByAppendingString:url];
	skype = [skype stringByAppendingString:@"&text="];
	skype = [skype stringByAppendingString:fulltext];

	NSString* sms = @"";
	sms = [sms stringByAppendingString:@"sms:"];
	sms = [sms stringByAppendingString:phone_number];
	sms = [sms stringByAppendingString:@"?body="];
	sms = [sms stringByAppendingString:fulltext];

	NSString* stumbleupon = @"";
	stumbleupon = [stumbleupon stringByAppendingString:@"http://www.stumbleupon.com/submit?url="];
	stumbleupon = [stumbleupon stringByAppendingString:url];
	stumbleupon = [stumbleupon stringByAppendingString:@"&title="];
	stumbleupon = [stumbleupon stringByAppendingString:fulltext];

	NSString* surfingbird = @"";
	surfingbird = [surfingbird stringByAppendingString:@"http://surfingbird.ru/share?url="];
	surfingbird = [surfingbird stringByAppendingString:url];
	surfingbird = [surfingbird stringByAppendingString:@"&description="];
	surfingbird = [surfingbird stringByAppendingString:desc];
	surfingbird = [surfingbird stringByAppendingString:@"&screenshot="];
	surfingbird = [surfingbird stringByAppendingString:image];
	surfingbird = [surfingbird stringByAppendingString:@"&title="];
	surfingbird = [surfingbird stringByAppendingString:title];

	NSString* telegramme = @"";
	telegramme = [telegramme stringByAppendingString:@"https://t.me/share/url?url="];
	telegramme = [telegramme stringByAppendingString:url];
	telegramme = [telegramme stringByAppendingString:@"&text="];
	telegramme = [telegramme stringByAppendingString:fulltext];
	telegramme = [telegramme stringByAppendingString:@"&to="];
	telegramme = [telegramme stringByAppendingString:phone_number];

	NSString* threema = @"";
	threema = [threema stringByAppendingString:@"threema://compose?text="];
	threema = [threema stringByAppendingString:fulltext];
	threema = [threema stringByAppendingString:@"&id="];
	threema = [threema stringByAppendingString:user_id];

	NSString* tumblr = @"";
	tumblr = [tumblr stringByAppendingString:@"https://www.tumblr.com/widgets/share/tool?canonicalUrl="];
	tumblr = [tumblr stringByAppendingString:url];
	tumblr = [tumblr stringByAppendingString:@"&title="];
	tumblr = [tumblr stringByAppendingString:title];
	tumblr = [tumblr stringByAppendingString:@"&caption="];
	tumblr = [tumblr stringByAppendingString:desc];
	tumblr = [tumblr stringByAppendingString:@"&tags="];
	tumblr = [tumblr stringByAppendingString:hash_tags];

	NSString* twitter = @"";
	twitter = [twitter stringByAppendingString:@"https://twitter.com/intent/tweet?url="];
	twitter = [twitter stringByAppendingString:url];
	twitter = [twitter stringByAppendingString:@"&text="];
	twitter = [twitter stringByAppendingString:fulltext];
	twitter = [twitter stringByAppendingString:@"&via="];
	twitter = [twitter stringByAppendingString:via];
	twitter = [twitter stringByAppendingString:@"&hashtags="];
	twitter = [twitter stringByAppendingString:hash_tags];

	NSString* vk = @"";
	vk = [vk stringByAppendingString:@"http://vk.com/share.php?url="];
	vk = [vk stringByAppendingString:url];
	vk = [vk stringByAppendingString:@"&title="];
	vk = [vk stringByAppendingString:title];
	vk = [vk stringByAppendingString:@"&comment="];
	vk = [vk stringByAppendingString:desc];

	NSString* weibo = @"";
	weibo = [weibo stringByAppendingString:@"http://service.weibo.com/share/share.php?url="];
	weibo = [weibo stringByAppendingString:url];
	weibo = [weibo stringByAppendingString:@"&appkey=&title="];
	weibo = [weibo stringByAppendingString:title];
	weibo = [weibo stringByAppendingString:@"&pic=&ralateUid="];

	NSString* xing = @"";
	xing = [xing stringByAppendingString:@"https://www.xing.com/app/user?op=share&url="];
	xing = [xing stringByAppendingString:url];

	NSString* yahoo = @"";
	yahoo = [yahoo stringByAppendingString:@"http://compose.mail.yahoo.com/?to="];
	yahoo = [yahoo stringByAppendingString:email_address];
	yahoo = [yahoo stringByAppendingString:@"&subject="];
	yahoo = [yahoo stringByAppendingString:title];
	yahoo = [yahoo stringByAppendingString:@"&body="];
	yahoo = [yahoo stringByAppendingString:fulltext];

		// NOTE : This ordering must identically match urlsOrderedByPopularity.

	urls = [NSArray arrayWithObjects:
			googleplus,
			googlebookmarks,
			facebook,
			reddit,
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
			stumbleupon,
			digg,
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
	nil];

	return self;
}

@end

@implementation Main

int main() {
	SocialMedia *sm = [[SocialMedia alloc]init];

	int i;
	for(i = 0; i < SOCIALMEDIASERVICES; i++) {
		NSString *socialmedia = [sm.urlsOrderedByPopularity objectAtIndex: i];
		NSString *socialmediaurl= [sm.urls objectAtIndex: i];
		printf("%s", [socialmedia UTF8String]);
		printf(" : ");
		printf("%s", [socialmediaurl UTF8String]);
		printf("\n");
	}

	return 0;
}

@end
