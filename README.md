# Social Share URLs

This is intended to help you share your content on all the popular social networks.

## Supported Social Networks

* [Facebook](#facebook)
* [Twitter](#twitter)
* [Google+](#google)
* [Pinterest](#pinterest)
* [Linked In](#linked-in)
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
* [Line.me](#lineme)
* [Skype](#skype)
* [Viber](#viber)
* [WhatsApp](#whatsapp)
* [Telegram.me](#telegramme)
* [VK](#vk)
* [OKru](#okru)
* [Douban](#douban)
* [Baidu](#baidu)
* [QZone](#qzone)
* [Xing](#xing)
* [RenRen](#renren)
* [Weibo](#weibo)

## URL Arguments

Argument | Description | Used By
--- | --- | ---
{url} | The url you want to share (**encoded**) | All
{img} | The image/thumbnail to use when sharing | Most
{title} | The page title of the url you want to share | Most
{desc} | A longer description of the content you are sharing | Most
{app_id} | The App ID | Facebook
{redirect_url} | The url a sharer will be redirected to after a successful share | Facebook
{via} | optional Twitter username of content author (don't include "@") | Twitter
{hashtags} | optional Hashtags appended onto the tweet (comma separated. don't include "#") | Twitter
{provider} | Company who is sharing the url | Delicious
{is_video} | If the content is a video or not | Pinterest


### Facebook

Facebook has two methods of sharing. The "Sharer" link is simple but the preferred Facebook way is using the [Share Dialog](https://developers.facebook.com/docs/sharing/reference/share-dialog). This method does require an app id but offers more flexibility.

#### Sharer:

```
https://www.facebook.com/sharer.php?u={url}
```

#### Share Dialog:

```
https://www.facebook.com/dialog/share?app_id={app_id}&display=page&href={url}&redirect_uri={redirect_url}
```

### Twitter

```
https://twitter.com/intent/tweet?url={url}&text={title}&via={via}&hashtags={hashtags}
```

### Google+

```
https://plus.google.com/share?url={url}
```

### Pinterest

```
https://pinterest.com/pin/create/bookmarklet/?media={img}&url={url}&is_video={is_video}&description={title}
```

### LinkedIn

```
https://www.linkedin.com/shareArticle?url={url}&title={title}
```

### Buffer

```
https://buffer.com/add?text={title}&url={url}
```

### Digg

```
http://digg.com/submit?url={url}&title={title}
```

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

### Line.me

```
http://line.me/R/msg/text/?{url}
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
whatsapp://send?text={url}
```

### Telegram.me

```
https://telegram.me/share/url?url={url}&text={title}
```

### VK

```
http://oauth.vk.com/authorize?client_id=-1&redirect_uri={url}&display=widget&caption={title}
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