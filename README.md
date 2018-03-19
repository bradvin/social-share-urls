# Social Share URLs

This project is intended to help you integrate sharing on social media within your code.

![alt text](https://github.com/bradvin/social-share-urls/blob/master/images/sharelinks.jpg "ShareLinks Icons")

## Supported Social Networks

### Multi-Language Social Media

* [Facebook](#facebook)
* [Twitter](#twitter)
* [Google+](#google)
* [Pinterest](#pinterest)
* [Linked In](#linkedin)
* [Buffer](#buffer)
* [Digg](#digg)
* [StumbleUpon](#stumbleupon)
* [Tumblr](#tumblr)
* [Reddit](#reddit)
* [Delicious](#delicious)
* [Blogger](#blogger)
* [LiveJournal](#livejournal)
* [MySpace](#myspace)
* [Yahoo](#yahoo)
* [FriendFeed](#friendfeed)
* [NewsVine](#newsvine)
* [EverNote](#evernote)
* [GetPocket](#getpocket)
* [FlipBoard](#flipboard)
* [InstaPaper](#instapaper)
* [SurfingBird](#surfingbird)
* [Diaspora](#diaspora)

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

## URL Arguments

Argument | Description | Used By
--- | --- | ---
{url} | The url you want to share (**encoded**) | All
{title} | The page title of the url you want to share | Most
{desc} | A longer description of the content you are sharing | Most
{image} | The url to the image/thumbnail to use when sharing | Some
{app_id} | The App ID | Facebook
{redirect_url} | The url a sharer will be redirected to after a successful share | Facebook
{page_type} | Type of page, either "page" or "popup" | Facebook
{via} | Twitter username of content author (don't include "@") | Twitter
{hash_tags} | Hashtags appended onto the tweet (comma separated. don't include "#") | Twitter
{language_code} | A language code from the ISO 639-1 Code specification. | Google
{provider} | Company who is sharing the url | Delicious
{is_video} | If the content is a video or not | Pinterest
{phone_number} | An applicable phone number, if there is one | Whatsapp

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
https://www.tumblr.com/widgets/share/tool?canonicalUrl={url}&title={title}&caption={desc}
```

### Reddit

```
https://reddit.com/submit?url={url}&title={title}
```

### StumbleUpon

```
http://www.stumbleupon.com/submit?url={url}&title={title}
```

### Delicious

```
https://delicious.com/save?v=5&provider={provider}&noui&jump=close&url={url}&title={title}
```

### Blogger

```
https://www.blogger.com/blog-this.g?u={url}&n={title}&t={desc}
```

### LiveJournal

```
http://www.livejournal.com/update.bml?subject={title}&event={url}
```

### MySpace

```
https://myspace.com/post?u={url}&t={title}&c=desc
```

### Yahoo

```
http://compose.mail.yahoo.com/?body={url}
```

### FriendFeed

```
http://friendfeed.com/?url={url}
```

### NewsVine

```
http://www.newsvine.com/_tools/seed&save?u={url}
```

### EverNote

```
http://www.evernote.com/clip.action?url={url}
```

### GetPocket

```
https://getpocket.com/save?url={url}
```

### FlipBoard

```
https://share.flipboard.com/bookmarklet/popout?v=2&title={title}&url={url}
```

### InstaPaper

```
http://www.instapaper.com/edit?url={url}&title={title}&description={desc}
```

### SurfingBird

```
http://surfingbird.ru/share?url={url}&description={text}&screenshot={image}&title={title}
```

<code>Source:</code>
* Unable to find official source.  Functionality tested and verified by SocialShare Dev's in 2018.
* Requires login to work.

### Diaspora

```
https://share.diasporafoundation.org/?title={title}&url={url}
```

<code>Source:</code>
* [Diaspora: Share all teh internetz!](https://share.diasporafoundation.org/about.html)
* Requires login to work.  Functionality tested and verified by SocialShare Dev's in 2018.

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

## Locally/Personally-Run Social Media

### WordPress

```
http://www.example.com/website_where_you_installed_wordpress/wp-admin/press-this.php?u={url}&t={title}&s={text}&i={image}
```

<code>Source :</code> [WordPress: Codex > Press This > Technical Note 1](https://codex.wordpress.org/Press_This)
