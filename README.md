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
http://www.facebook.com/sharer.php?u={url}
```

#### Share Dialog:

```
https://www.facebook.com/dialog/share?app_id={app_id}&display=page&href={url}&redirect_uri={redirect_url}
```

### Twitter

```
https://twitter.com/share?url={url}&text={title}&via={via}&hashtags={hashtags}
```

### Google+

```
https://plus.google.com/share?url={url}
```

### Pinterest

```
https://pinterest.com/pin/create/bookmarklet/?media={img}&url={url}&is_video={is_video}&description={title}
```

### Linked In

```
http://www.linkedin.com/shareArticle?url={url}&title={title}
```

### Buffer

```
http://bufferapp.com/add?text={title}&url={url}
```

### Digg

```
http://digg.com/submit?url={url}&title={title}
```

### Tumblr

```
http://www.tumblr.com/share/link?url={url}&name={title}&description={desc}
```

### Reddit

```
http://reddit.com/submit?url={url}&title={title}
```

### StumbleUpon

```
http://www.stumbleupon.com/submit?url={url}&title={title}
```

### Delicious

```
https://delicious.com/save?v=5&provider={provider}&noui&jump=close&url={url}&title={title}
```
