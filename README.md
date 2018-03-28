# Social Share URLs

This project is intended to help you integrate sharing on social media within your code.  We have been actively doing this since 2013.

What we try to provide :

* **Regularly-Tested, Basic Share-URL Formats of Popular, Social Media** : Directly linking to share/like pages on that social media for the specified URL parameters. (i.e., `example.com/someSocialMediaSite/share?url=yourWebsiteURL`)
* **Reference Sources** : For each service, URL format, and set of parameters, so that you can feel confident about these links and find out more if you need to do something more interesting.
* **Source Code Libraries** : To provide basic utilities for generating these social media links in any environment that you need.

![Share Links - Do You Have Them?](https://github.com/bradvin/social-share-urls/blob/master/images/sharelinks.jpg "ShareLinks Icons")

## Supported Social Networks

### Multi-Language Social Media

* [Facebook](#facebook)
* [Twitter](#twitter)
* [Google+](#google)
* [GoogleBookmarks](#googlebookmarks)
* [Pinterest](#pinterest)
* [Linked In](#linkedin)
* [Buffer](#buffer)
* [Digg](#digg)
* [StumbleUpon](#stumbleupon)
* [Tumblr](#tumblr)
* [Reddit](#reddit)
* [Blogger](#blogger)
* [LiveJournal](#livejournal)
* [EverNote](#evernote)
* [GetPocket](#getpocket)
* [FlipBoard](#flipboard)
* [InstaPaper](#instapaper)
* [SurfingBird](#surfingbird)
* [Diaspora](#diaspora)
* [Flattr](#flattr)
* [HackerNews](#hackernews)
* [AddThis](#addthis)

### Phone/Audio-Based Social Media

* [Skype](#skype)
* [Line.me](#lineme)
* [Telegram.me](#telegramme)
* [SMS](#sms)

### Non-English Social Media

* [VK](#vk)
* [OKru](#okru)
* [Douban](#douban)
* [QZone](#qzone)
* [Xing](#xing)
* [RenRen](#renren)
* [Weibo](#weibo)
* [Threema](#threema)

### Email-Based Social Media

* [GMail](#gmail)
* [Yahoo](#yahoo)
* [EMail](#email)

### Locally/Personally-Run Social Media

* [WordPress](#wordpress)

### Deprecated Social Share URLs

* [AIM](#aim)
* [Baidu](#baidu)
* [EchoJS](#echojs)
* [Delicious](#delicious)
* [FriendFeed](#friendfeed)
* [Mail.Ru](#mailru)
* [MySpace](#myspace)
* [NewsVine](#newsvine)
* [ScoopIt](#scoopit)
* [SinnaWeibo](#sinaweibo)
* [SlashDot](#slashdot)
* [Viber](#viber)
* [WhatsApp](#whatsapp)

## URL Arguments

Argument | Description | Used By
--- | --- | ---
{url} | The url you want to share (**encoded**) | All
{title} | The page title of the url you want to share | Most
{desc} | A longer description of the content you are sharing | Most
{app_id} | The App ID | Facebook
{redirect_url} | The url a sharer will be redirected to after a successful share | Facebook
{page_type} | Type of page, either "page" or "popup" | Facebook
{via} | Username of content author (don't include "@") | Twitter
{hash_tags} | Hashtags appended onto the tweet (comma separated. don't include "#") | Twitter, Flattr, Tumblr
{image} | The url to the image/thumbnail to use when sharing | SurfingBird, WordPress
{language_code} | A language code from the ISO 639-1 Code specification. | Google
{is_video} | If the content is a video or not | Pinterest
{phone_number} | An applicable phone number, if there is one | Whatsapp
{user_id} | The id of a particular user on a social media service | Flattr, Threema
{category} | A section to submit the share/comment to | Flattr
{email_address} | Where a social share is directed.  You will most likely want to leave this blank, so the user can fill it in. | Mail, Yahoo, GMail

## Multi-Language Social Media

### Facebook

#### Facebook (with Sharer)

```
https://www.facebook.com/sharer.php?u={url}
```

<code>Source :</code>
* *Official Source :* [FaceBook: We have changed the behavior of the sharer plugin...](https://developers.facebook.com/x/bugs/357750474364812/)
* *Unofficial Source :* None.
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.

#### Facebook (with Share Dialog)

```
https://www.facebook.com/dialog/share?app_id={app_id}&display={page_
type}&href={url}&redirect_uri={redirect_url}
```

<code>Source :</code>
* *Official Source :* [FaceBook: Share Dialog](https://developers.facebook.com/docs/sharing/reference/share-dialog)
* *Unofficial Source :* None.
* *Test Notes :* Requires registering in order to get an App_Id.  Working test account is available in the official documentation, so you can avoid this requirement for tesing and you can test with `https://www.facebook.com/dialog/share?app_id=145634995501895&someOtherParameters=SomeOtherValues`.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.

### Twitter

```
https://twitter.com/intent/tweet?url={url}&text={title}&via={via}&hashtags={hash_tags}
```

<code>Source :</code>
* *Official Source :* [Twitter: Tweet Button Parameter Reference](https://dev.twitter.com/web/tweet-button/parameters)
* *Unofficial Source :* None.
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.

### Google+

```
https://plus.google.com/share?url={url}&text={desc}&hl={language_code}
```

<code>Source :</code>
* *Official Source :* [Google: Google+ Platform, Web, Share](https://developers.google.com/+/web/share/)
* *Unofficial Source :* None.
* *Test Notes :* Regarding `text` parameter: Unable to find official source.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.

### GoogleBookmarks

```
https://www.google.com/bookmarks/mark?op=edit&bkmk={url}&title={title}&annotation={desc}&labels={tags}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* None.
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2018`.

### Pinterest

```
http://pinterest.com/pin/create/button/?url={url}
http://pinterest.com/pin/create/link/?url={url}
```

<code>Source :</code>
* *Official Source :* [Pinterest: Save Button](https://developers.pinterest.com/docs/widgets/save/?)
* *Unofficial Source :* [StackOverflow: Link to "pin it" on pinterest without generating a button](https://stackoverflow.com/questions/10690019/link-to-pin-it-on-pinterest-without-generating-a-button)
* *Test Notes :* Requires the user to select an image to "pin" the URL with.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.


### LinkedIn

```
https://www.linkedin.com/shareArticle?mini=true&url={url}&title={title}&summary={desc}&source={provider}
```

<code>Source :</code>
* *Official Source :* [LinkedIn: Share On LinkedIn, Section: "Customized URL"](https://developer.linkedin.com/docs/share-on-linkedin)
* *Unofficial Source :* [StackOverflow: How to make custom linkedin share button](https://stackoverflow.com/questions/10713542/how-to-make-custom-linkedin-share-button)
* *Test Notes :* URL max is 1,024 characters, title/source max is 200 characters, and summary max is 256 characters.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.

### Buffer

```
https://buffer.com/add?text={title}&url={url}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* None.
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.

### Digg

```
http://digg.com/submit?url={url}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* None.
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.

### Tumblr

```
https://www.tumblr.com/widgets/share/tool?canonicalUrl={url}&title={title}&caption={desc}&tags={hash_tags}
```

<code>Source :</code>
* *Official Source :* [Tumblr: Post to Tumblr](https://www.tumblr.com/docs/en/share_button)
* *Unofficial Source :* None.
* *Test Notes :* Requires login.  A described language parameter (`data-locale`) appeared to have no effect (and, therefore, is not listed here).
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.

### Reddit

```
https://reddit.com/submit?url={url}&title={title}
```

<code>Source :</code>
* *Official Source :* [RedDit: put reddit.com buttons on your site](https://www.reddit.com/buttons/)
* *Unofficial Source :* None.
* *Test Notes :* Regarding `title` Parameter: Unable to find official source.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.

### StumbleUpon

```
http://www.stumbleupon.com/submit?url={url}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* [StackOverflow: How to submit a link to StumbleUpon with a title](https://webapps.stackexchange.com/questions/19942/how-to-submit-a-link-to-stumbleupon-with-a-title)
* *Test Notes :* Requires login.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2013`, `2016`, and `2018`.

### Blogger

```
https://www.blogger.com/blog-this.g?u={url}&n={title}&t={desc}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* [StackOverflow:Blog / Share on Blogger Link](https://stackoverflow.com/questions/22573164/blog-share-on-blogger-link)
* *Test Notes :* Requires login, a blog tied to your blogger account, and either no `url` or that the `url` be perfectly formatted with protocols (http/https, etc.).
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### LiveJournal

```
http://www.livejournal.com/update.bml?subject={title}&event={url}
```

<code>Source :</code> 
* *Official Source :* [LiveJournal: LiveJournal share button](https://www.livejournal.com/developer/extshare)
* *Unofficial Source :* None.
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### EverNote

```
http://www.evernote.com/clip.action?url={url}&title={title}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* [EverNote Discussion: Non-JavaScript web clipper?](https://discussion.evernote.com/topic/21170-archived-non-javascript-web-clipper/)
* *Test Notes :* Requires login to work.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### GetPocket

```
https://getpocket.com/edit?url={url}
```

<code>Source :</code>
* *Official Source :* [getPocket: Pocket Button Documentation](https://getpocket.com/publisher/button_docs)
* *Unofficial Source :* None.
* *Test Notes :* Regarding `url` Parameter: Unable to find official source.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### FlipBoard

```
https://share.flipboard.com/bookmarklet/popout?v=2&title={title}&url={url}
```

<code>Source :</code>
* *Official Source :* [FlipBoard: Social Plugins](https://about.flipboard.com/social-plugins/?tool=browser)
* *Unofficial Source :* None.
* *Test Notes :* Requires login and properly formatted URL with http/https protocol.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### InstaPaper

```
http://www.instapaper.com/edit?url={url}&title={title}&description={desc}
```

<code>Source :</code>
* *Official Source :* [InstaPaper: InstaPaper Browser Extensions](https://www.instapaper.com/save)
* *Unofficial Source :* None.
* *Test Notes :* Requires login and Chrome (does not work in FireFox).
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### SurfingBird

```
http://surfingbird.ru/share?url={url}&description={text}&screenshot={image}&title={title}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* None.
* *Test Notes :* Requires login to work.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2018`.

### Diaspora

```
https://share.diasporafoundation.org/?title={title}&url={url}
```

<code>Source :</code>
* *Official Source :* [Diaspora: Share all teh internetz!](https://share.diasporafoundation.org/about.html)
* *Unofficial Source :* None.
* *Test Notes :* Requires login to work.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2018`.

### Flattr

```
https://flattr.com/submit/auto?user_id={user_id}&url={url}&title={title}&description={desc}&language={language_code}&tags={hash_tags}&hidden=HIDDEN&category={category}
```

<code>Source :</code>
* *Official Source :* [Flattr: URL Auto Submit Documentation](https://blog.flattr.com/2011/11/url-auto-submit-documentation/)
* *Unofficial Source :* None.
* *Test Notes :* Requires all user_id, url, and title parameters to be precisely formatted.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2018`.

### HackerNews

```
https://news.ycombinator.com/submitlink?u={url}&t={title}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* None.
* *Test Notes :* Requires login to work.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2018`.

### AddThis

```
http://www.addthis.com/bookmark.php?url={url}
```

<code>Source :</code>
* *Official Source :* [AddThis: Social Buttons](http://www.addthis.com/social-buttons)
* *Unofficial Source :* None.
* *Test Notes :* The above-described url-format does not appear in the official documentation.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2018`.

## Phone/Audio-Based Social Media

### Skype

```
https://web.skype.com/share?url={url}&text={desc}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* None.
* *Test Notes :* Requires login to work.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### Line.me

```
https://lineit.line.me/share/ui?url={url}&text={desc}
```

<code>Source :</code>
* *Official Source :* [Line Social Plugins](https://social-plugins.line.me/)
* *Unofficial Source :* None.
* *Test Notes :* Requires login to work and perfectly formatted URL with protocol parameters (http/https, etc.).  Creating an account requires software install.  Above-described URL parameters are not indicated in the official documentation.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### Telegram.me

```
https://telegram.me/share/url?url={url}&text={title}
https://t.me/share/url?url={url}&text={title}
```

* *Official Source :* Unable to locate.
* *Unofficial Source :* [StackOverflow: Share a link via URL scheme (via Telegram for example)](https://stackoverflow.com/questions/31356360/share-a-link-via-url-scheme-via-telegram-for-example)
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### SMS

````
sms:{phone_number}?body={desc}
````

* *Official Source :* Unable to locate.
* *Unofficial Source :* [StackOverflow: How to pre-populate the sms body text via an html link](https://stackoverflow.com/questions/6480462/how-to-pre-populate-the-sms-body-text-via-an-html-link)
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2018`.

## Non-English Social Media

### VK

```
http://vk.com/share.php?url={url}&title={title}&comment={desc}
```

<code>Source :</code>
* *Official Source :* [VK.com: Link Posting Documentation](https://vk.com/dev/widget_share)
* *Unofficial Source :* None.
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### OKru

<code>AKA :</code>  AKA "Odnoklassniki".

```
https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl={url}
```

<code>Source :</code>
* *Official Source :* [OK: Like/Share Button](https://apiok.ru/en/ext/like)
* *Unofficial Source :* None.
* *Test Notes :* Requires login to work.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### Douban

```
http://www.douban.com/recommend/?url={url}&title={title}
```

<code>Source :</code>
* *Official Source :* [Douban: 使用"send to"把你喜欢的文章从GReader发送到9点推荐 - 豆瓣](https://www.douban.com/note/41684220/)
* *Unofficial Source :* None.
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### QZone

```
http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url={url}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* None.
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### Xing

```
https://www.xing.com/app/user?op=share&url={url}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* [Xing: Groups > WordPress > Suche Social Media Plugin (German)](https://www.xing.com/communities/posts/suche-social-media-plugin-1010272530)
* *Test Notes :* Requires login to work and precisely formatted URL (with protocal http/https parameters).
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### RenRen

```
http://widget.renren.com/dialog/share?resourceUrl={url}&srcUrl={url}&title={title}&description={desc}
```

* *Official Source :* Unable to locate.
* *Unofficial Source :* None.
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### Weibo

```
http://service.weibo.com/share/share.php?url={url}&appkey=&title={text}&pic=&ralateUid=
```

<code>Source :</code>
* *Official Source :* [Weibo: ShareCode](http://open.weibo.com/wiki/ShareCode)
* *Unofficial Source :* None.
* *Test Notes :* Requires login and software install to work.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### Threema

```
threema://compose?text=Hello&id={user_id}
```

<code>Source :</code>
* *Official Source :* [Threema: Threema Gateway > Developers > Threema Message API](https://gateway.threema.ch/en/developer/api)
* *Unofficial Source :* [Threema-Forum.de › Threema, News & Hilfe › Tipps und Tricks > URL-Aktionen](https://threema-forum.de/thread-2860.html)
* *Test Notes :* 
* *Test Results :* 

## Email-Based Social Media

### GMail

```
https://mail.google.com/mail/?view=cm&to={email_address}&su={title}&body={url}&bcc={email_address}&cc={email_address}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* [StackOverflow: URL to compose a message in Gmail](https://stackoverflow.com/questions/6548570/url-to-compose-a-message-in-gmail-with-full-gmail-interface-and-specified-to-b)
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### Yahoo

```
http://compose.mail.yahoo.com/?to={email_address}&subject={title}&body={url}
```

<code>Source :</code>
* *Official Source :* Unable to locate.
* *Unofficial Source :* [StackOverflow: Yahoo email compose link not working - compose.mail.yahoo.com](https://stackoverflow.com/questions/26379594/yahoo-email-compose-link-not-working-compose-mail-yahoo-com)
* *Test Notes :* Requires login to work.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `2016` and `2018`.

### EMail

```
mailto:{email_address}?subject={title}&body={desc}
```

<code>Source :</code>
* *Official Source :* [RFC 2368: The mailto URL scheme](https://www.ietf.org/rfc/rfc2368.txt)
* *Unofficial Source :* [StackOverflow: Can I set subject/content of email using mailto:?](https://stackoverflow.com/questions/4782068/can-i-set-subject-content-of-email-using-mailto)
* *Test Notes :* None.
* *Test Results :* Functionality tested and verified by SocialShare Dev's in `1998` and `2018`.

## Locally/Personally-Run Social Media

### WordPress

```
http://www.example.com/website_where_you_installed_wordpress/wp-admin/press-this.php?u={url}&t={title}&s={text}&i={image}
```

<code>Source :</code>

* *Official Source :*  [WordPress: Codex > Press This > Technical Note 1](https://codex.wordpress.org/Press_This)
* *Unofficial Source :* [HackerOne: Internal GET SSRF via CSRF with Press This scan feature](https://hackerone.com/reports/110801)
* *Test Notes :* Requires login to work.
* *Test Results :* Could not test (no installation/sandbox).

## Deprecated Social Share URLs

Once supported, but no longer.  Some of these may be well-documented.  They are no longer supported because the share links no longer provide the desired action.  These are listed for the sake of completion.

*Use at your own merciless peril.*

### AIM

* AIM was shut down in late 2017.

    * ~~http://lifestream.aol.com/share/?url={url}&title={title}&description={desc}~~

### Baidu

* Links failed in 2018.

    * ~~http://cang.baidu.com/do/add?it={title}&iu={url}~~

### Delicious

* Links failed in 2018.

    * ~~https://delicious.com/save?v=5&provider={provider}&noui&jump=close&url={url}&title={title}~~

### EchoJS

* Flagrant SSL-security errors revealed in 2018.  User password leak: currently active.

    * ~~http://www.echojs.com/submit?u={url}&t={title}~~

### FBMessenger

* Links failed in 2018.  There are numerous, active complaints for this service, discoverable by just searching the web.

    * ~~fb-messenger://share?link={url}&app_id={app_id}~~

### FriendFeed

* Links failed in 2018.

    * ~~http://friendfeed.com/?url={url}~~

### Mail.ru

* Massive security flaws were revealed in 2017 and 2018, causing Mail.ru to be added to the uBlock Origin blacklist.  User password leak: currently active.  Additionally, testing by Social Share dev's determined that the API no longer works.

    * ~~https://connect.mail.ru/share?share_url={url}~~

### MySpace

* Links failed in 2018.

    * ~~https://myspace.com/post?u={url}&t={title}&c={desc}~~

### NewsVine

* Acquired by NBC in Oct., 2017.  Redirects to NBCNews.

    * ~~http://www.newsvine.com/_tools/seed&save?u={url}~~

### ScoopIt

* URL requires login, accounts requires authorizing with several social media parties, and on Chrome and Firefox, using Windows, iOS, and Android, account creation could not be completed.  This was the longest service to test that did not require software to be downloaded and locally installed.

    * ~~http://www.scoop.it/bookmarklet?url={url}~~

### SinaWeibo

* Acquired by Weibo.

    * ~~http://v.t.sina.com.cn/share/share.php?url={url}&title={title}~~

### SlashDot

* Links failed in 2018 with error message, "New bookmark creation is no longer supported."

    * ~~https://slashdot.org/bookmark.pl?url={url}&title={title}~~

### Viber

* Social-share service discontinued in 2018.  Confirmed after the test requirements: installing Viber on Desktop and Phone, syncing phone with desktop, logging in with verified American legal credentials, and multiple tests of the given documentation - [Invalid Documentation: Using Viber Official Specifications is a Failure](https://developers.viber.com/docs/tools/share-button/).  Official development @viber has been negligent in response to inquiries.

    * ~~viber://forward?text={url}~~

### WhatsApp

* Social-share service discontinued in 2018.  Confirmed after the test requirements: installing WhatsApp on Desktop and Phone, syncing phone with desktop, logging in with verified American legal credentials, and multiple tests of the given documentation - [Invalid Documentation: Using Whatsapp Official Specifications is a Failure](https://faq.whatsapp.com/en/android/26000030/?category=5245251).  Official development @whatsapp has been negligent in response to inquiries.

    * Official WhatsApp Response: "Unfortunately, that is not supported at the moment. We are always working to improve our app and will take your suggestion into consideration." (Wed, Mar 28, 2018)

    * ~~whatsapp://send?text={url}~~
