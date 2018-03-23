# Social Share URLs

This project is intended to help you integrate sharing on social media within your code.

![alt text](https://github.com/bradvin/social-share-urls/blob/master/images/sharelinks.jpg "ShareLinks Icons")

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
* [Yahoo](#yahoo)
* [EverNote](#evernote)
* [GetPocket](#getpocket)
* [FlipBoard](#flipboard)
* [InstaPaper](#instapaper)
* [SurfingBird](#surfingbird)
* [Diaspora](#diaspora)
* [Flattr](#flattr)
* [HackerNews](#hackernews)

### Phone/Audio-Based Social Media

* [Line.me](#lineme)
* [Skype](#skype)
* [Viber](#viber)
* [WhatsApp](#whatsapp)
* [Telegram.me](#telegramme)

### Non-English Social Media

* [VK](#vk)
* [OKru](#okru)
* [Douban](#douban)
* [Baidu](#baidu)
* [QZone](#qzone)
* [Xing](#xing)
* [RenRen](#renren)
* [Weibo](#weibo)

### Locally/Personally-Run Social Media

* [WordPress](#wordpress)
* [Mail](#mail)

## URL Arguments

Argument | Description | Used By
--- | --- | ---
{url} | The url you want to share (**encoded**) | All
{title} | The page title of the url you want to share | Most
{desc} | A longer description of the content you are sharing | Most
{app_id} | The App ID | Facebook
{redirect_url} | The url a sharer will be redirected to after a successful share | Facebook
{page_type} | Type of page, either "page" or "popup" | Facebook
{via} | Twitter username of content author (don't include "@") | Twitter
{hash_tags} | Hashtags appended onto the tweet (comma separated. don't include "#") | Twitter, Flattr, Tumblr
{image} | The url to the image/thumbnail to use when sharing | SurfingBird, WordPress
{language_code} | A language code from the ISO 639-1 Code specification. | Google
{is_video} | If the content is a video or not | Pinterest
{phone_number} | An applicable phone number, if there is one | Whatsapp
{user_id} | The id of a particular user on a social media service | Flattr
{category} | A section to submit the share/comment to | Flattr
{email_address} | Where a social share is directed.  You will most likely want to leave this blank, so the user can fill it in. | Mail, Yahoo

## Multi-Language Social Media

### Facebook

Facebook has two methods of sharing. The "Sharer" link is simple but the preferred Facebook way is using the Share Dialog. This method does require an app id but offers more flexibility.

#### Sharer:

```
https://www.facebook.com/sharer.php?u={url}
```

<code>Source:</code> [FaceBook: We have changed the behavior of the sharer plugin...](https://developers.facebook.com/x/bugs/357750474364812/)

#### Share Dialog:

```
https://www.facebook.com/dialog/share?app_id={app_id}&display={page_
type}&href={url}&redirect_uri={redirect_url}
```

<code>Source:</code> [FaceBook: Share Dialog](https://developers.facebook.com/docs/sharing/reference/share-dialog)

### Twitter

```
https://twitter.com/intent/tweet?url={url}&text={title}&via={via}&hashtags={hash_tags}
```

<code>Source:</code> [Twitter: Tweet Button Parameter Reference](https://dev.twitter.com/web/tweet-button/parameters)

### Google+

```
https://plus.google.com/share?url={url}&text={desc}&hl={language_code}
```

<code>Source:</code>
* [Google: Google+ Platform, Web, Share](https://developers.google.com/+/web/share/)
* Regarding `text` parameter: Unable to find official source.  Functionality tested and verified by SocialShare Dev's in 2018.

### GoogleBookmarks

````
https://www.google.com/bookmarks/mark?op=edit&bkmk={url}&title={title}&annotation={desc}&labels={tags}
````

<code>Source:</code> Unable to find official source.  Functionality tested and verified by SocialShare Dev's in 2018.

### Pinterest

```
http://pinterest.com/pin/create/button/?url={url}
http://pinterest.com/pin/create/link/?url={url}
```

<code>Source:</code> [Pinterest: Save Button](https://developers.pinterest.com/docs/widgets/save/?)


### LinkedIn

```
https://www.linkedin.com/shareArticle?mini=true&url={url}&title={title}&summary={desc}&source={provider}
```

<code>Source:</code> [LinkedIn: Share On LinkedIn](https://developer.linkedin.com/docs/share-on-linkedin)

### Buffer

```
https://buffer.com/add?text={title}&url={url}
```

<code>Source:</code> Unable to find official source.  Functionality tested and verified by SocialShare Dev's in 2013, 2016, and 2018.

### Digg

```
http://digg.com/submit?url={url}
```

<code>Source:</code> Unable to find official source.  Functionality tested and verified by SocialShare Dev's in 2018.

### Tumblr

```
https://www.tumblr.com/widgets/share/tool?canonicalUrl={url}&title={title}&caption={desc}&tags={hash_tags}
```

<code>Source:</code>
* [Tumblr: Post to Tumblr](https://www.tumblr.com/docs/en/share_button)
* Requires login.  Functionality tested and verified by SocialShare Dev's in 2018.  A described language parameter (`data-locale`) appeared to have no effect (and, therefore, is not listed here).

### Reddit

```
https://reddit.com/submit?url={url}&title={title}
```

<code>Source:</code>
* [RedDit: put reddit.com buttons on your site](https://www.reddit.com/buttons/)
* Regarding `title` Parameter: Unable to find official source.  Functionality tested and verified by SocialShare Dev's in 2018.

### StumbleUpon

```
http://www.stumbleupon.com/submit?url={url}
```

<code>Source :</code>
* [StackOverflow: How to submit a link to StumbleUpon with a title](https://webapps.stackexchange.com/questions/19942/how-to-submit-a-link-to-stumbleupon-with-a-title)
* Unable to find official source.  Requires login.  Functionality tested and verified by SocialShare Dev's in 2018.

### Blogger

```
https://www.blogger.com/blog-this.g?u={url}&n={title}&t={desc}
```

<code>Source :</code>
* [StackOverflow:Blog / Share on Blogger Link](https://stackoverflow.com/questions/22573164/blog-share-on-blogger-link)
* Unable to find official source.  Requires login, a blog tied to your blogger account, and either no `url` or that the `url` be perfectly formatted with protocols (http/https, etc.).  Functionality tested and verified by SocialShare Dev's in 2018.

### LiveJournal

```
http://www.livejournal.com/update.bml?subject={title}&event={url}
```

<code>Source:</code> 
* [LiveJournal: LiveJournal share button](https://www.livejournal.com/developer/extshare)
* Functionality tested and verified by SocialShare Dev's in 2018.

### Yahoo

```
http://compose.mail.yahoo.com/?to={email_address}&subject={title}&body={url}
```

<code>Source :</code>
* [StackOverflow: Yahoo email compose link not working - compose.mail.yahoo.com](https://stackoverflow.com/questions/26379594/yahoo-email-compose-link-not-working-compose-mail-yahoo-com)
* Unable to find official source.  Requires login.  Functionality tested and verified by SocialShare Dev's in 2018.

### EverNote

```
http://www.evernote.com/clip.action?url={url}
```

### GetPocket

```
https://getpocket.com/edit?url={url}
```

<code>Source:</code>
* [getPocket: Pocket Button Documentation](https://getpocket.com/publisher/button_docs)
* Regarding `url` Parameter: Unable to find official source.  Functionality tested and verified by SocialShare Dev's in 2018.

### FlipBoard

```
https://share.flipboard.com/bookmarklet/popout?v=2&title={title}&url={url}
```

<code>Source :</code>
* [FlipBoard: Social Plugins](https://about.flipboard.com/social-plugins/?tool=browser)
* Requires login and properly formatted URL with http/https protocol.  Functionality tested and verified by SocialShare Dev's in 2018.

### InstaPaper

```
http://www.instapaper.com/edit?url={url}&title={title}&description={desc}
```

<code>Source :</code>
* [InstaPaper: InstaPaper Browser Extensions](https://www.instapaper.com/save)
* Requires login and Chrome (does not work in FireFox).  Functionality tested and verified by SocialShare Dev's in 2018.

### SurfingBird

```
http://surfingbird.ru/share?url={url}&description={text}&screenshot={image}&title={title}
```

<code>Source:</code> Unable to find official source.  Requires login to work.  Functionality tested and verified by SocialShare Dev's in 2018.

### Diaspora

```
https://share.diasporafoundation.org/?title={title}&url={url}
```

<code>Source:</code>
* [Diaspora: Share all teh internetz!](https://share.diasporafoundation.org/about.html)
* Requires login to work.  Functionality tested and verified by SocialShare Dev's in 2018.

### Flattr

````
https://flattr.com/submit/auto?user_id={user_id}&url={url}&title={title}&description={desc}&language={language_code}&tags={hash_tags}&hidden=HIDDEN&category={category}
````

<code>Source:</code>
* [URL Auto Submit Documentation](https://blog.flattr.com/2011/11/url-auto-submit-documentation/)
* Requires all user_id, url, and title parameters to be precisely formatted.  Functionality tested and verified by SocialShare Dev's in 2018.

### HackerNews

````
https://news.ycombinator.com/submitlink?u={url}&t={title}
````

<code>Source:</code> Unable to find official source.  Requires login to work.  Functionality tested and verified by SocialShare Dev's in 2018.

## Phone/Audio-Based Social Media

### Line.me

```
https://lineit.line.me/share/ui?url={url}
```

### Skype

```
https://web.skype.com/share?url={url}
```

### Viber

```
viber://forward?text={url}
```

### WhatsApp

```
https://web.whatsapp.com/send?text={url}&phone={phone_number}
https://api.whatsapp.com/send?text={url}&phone={phone_number}
whatsapp://send?text={url}&phone={phone_number}
```

<code>Source:</code> [Whatsapp: Using Click to Chat](https://faq.whatsapp.com/en/android/26000030/?category=5245251)

### Telegram.me

```
https://telegram.me/share/url?url={url}&text={title}
https://t.me/share/url?url={url}&text={title}
```

## Non-English Social Media

### VK

```
http://vk.com/share.php?url={url}
```

### OKru

```
https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl={url}&title={title}
```

### Douban

```
http://www.douban.com/recommend/?url={url}&title={title}
```

### Baidu

```
http://cang.baidu.com/do/add?it={title}&iu={url}
```

### QZone

```
http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url={url}
```

### Xing

```
https://www.xing.com/app/user?op=share&url={url}
```

### RenRen

```
http://widget.renren.com/dialog/share?resourceUrl={url}&srcUrl={url}&title={title}
```

### Weibo

```
http://service.weibo.com/share/share.php?url={url}&appkey=&title={text}&pic=&ralateUid=
```

<code>Source :</code> [Weibo: ShareCode](http://open.weibo.com/wiki/ShareCode)

## Locally/Personally-Run Social Media

### WordPress

```
http://www.example.com/website_where_you_installed_wordpress/wp-admin/press-this.php?u={url}&t={title}&s={text}&i={image}
```

<code>Source :</code> [WordPress: Codex > Press This > Technical Note 1](https://codex.wordpress.org/Press_This)

### Mail

````
mailto:{email_address}?subject={title}&body={desc}
````
