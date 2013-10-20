# Social Share URLs

This is intended to help you share your content on all the popular social networks.

## Supported Social Networks

* Facebook
* Twitter
* Google+
* Pinterest
* Linked In
* Buffer
* Digg
* StumbleUpon
* Tumblr
* Reddit
* Delicious

## URL Arguments

Argument | Description | Used By
--- | --- | ---
{url} | The url you want to share (**encoded**) | All
{img} | The image/thumbnail to use when sharing | Most
{title} | The page title of the url you want to share | Most
{desc} | A longer description of the content you are sharing | Most
{app_id} | The App ID | Facebook
{redirect_url} | The url a sharer will be redirected to after a successful share | Facebook
{via} | optional Twitter username of content author | Twitter 
{hashtags} | optional Hashtags appended onto the tweet | Twitter
{provider} | Company who is sharing the url | Delicous


### Facebook

Facebook has two methods of sharing. The simpler option is to use the link "Sharer", but their newer “Feed Dialog” option offers more customization, but on the other hand, requires a Facebook App ID.
[Facebook Feed Dialog vs. Share Link Dialog](http://www.local-pc-guy.com/web-dev/facebook-feed-dialog-vs-share-link-dialog) is a great article explaining the differences between the two methods.

#### Sharer:

```
http://www.facebook.com/sharer.php?s=100&p[url]={url}&p[images][0]={img-ne}&p[title]={title}&p[summary]={desc}
```

#### Feed Dialog:

```
https://www.facebook.com/dialog/feed?app_id={$app_id}&link={url}&picture={img-ne}&name={title}&caption={desc}&redirect_uri={redirect_url}
```

### Twitter

```
https://twitter.com/share?url={img-ne}&text={title}&via={via}&hashtags={hashtags}
```

### Google+

```
https://plus.google.com/share?url={url-ne}
```

### Pinterest

```
https://pinterest.com/pin/create/bookmarklet/?media={img-ne}&url={img-ne}&title={title}&is_video=false&description={desc}
```

### Linked In

```
http://www.linkedin.com/shareArticle?url={img-ne}&title={title}
```

### Buffer

```
http://bufferapp.com/add?text={title}&url={img-ne}
```

### Digg

```
http://digg.com/submit?url={img-ne}&title={title}
```

### Tumblr

```
http://www.tumblr.com/share/link?url={img-ne}&name={title}&description={desc}
```

### Reddit

```
http://reddit.com/submit?url={img-ne}&title={title}
```

### StumbleUpon

```
http://www.stumbleupon.com/submit?url={img-ne}&title={title}
```

### Delicous

```
https://delicious.com/save?v=5&provider={provider}&noui&jump=close&url={url}&title={title}
```

### Email

```
mailto:friend@example.com?subject={title}&body={desc}%20-%20{img-ne}
```