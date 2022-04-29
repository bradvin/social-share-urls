##
##
##

GetSocialMediaSites_NiceNames <- function() {
  nice_names <- c(
    'add.this'='AddThis',
    'blogger'='Blogger',
    'buffer'='Buffer',
    'diaspora'='Diaspora',
    'douban'='Douban',
    'email'='EMail',
    'evernote'='EverNote',
    'getpocket'='Pocket',
    'facebook'='FaceBook',
    'flattr'='Flattr',
    'flipboard'='FlipBoard',
    'google.bookmarks'='GoogleBookmarks',
    'instapaper'='InstaPaper',
    'line.me'='Line.me',
    'linkedin'='LinkedIn',
    'livejournal'='LiveJournal',
    'gmail'='GMail',
    'hacker.news'='HackerNews',
    'ok.ru'='OK.ru',
    'pinterest'='Pinterest',
    'qzone'='QZone',
    'reddit'='Reddit',
    'renren'='RenRen',
    'skype'='Skype',
    'sms'='SMS',
    'surfingbird.ru'='SurfingBird.ru',
    'telegram.me'='Telegram.me',
    'threema'='Threema',
    'tumblr'='Tumblr',
    'twitter'='Twitter',
    'vk'='VK',
    'weibo'='Weibo',
    'whatsapp'='WhatsApp',
    'xing'='Xing',
    'yahoo'='Yahoo'
  )
  return(nice_names)  
}

GetSocialMediaSites_WithShareLinks_OrderedByPopularity <- function()
{
  sites.ordered <- c(
    'google.bookmarks',
    'facebook',
    'reddit',
    'whatsapp',
    'twitter',
    'linkedin',
    'tumblr',
    'pinterest',
    'blogger',
    'livejournal',
    'evernote',
    'add.this',
    'getpocket',
    'hacker.news',
    'buffer',
    'flipboard',
    'instapaper',
    'surfingbird.ru',
    'flattr',
    'diaspora',
    'qzone',
    'vk',
    'weibo',
    'ok.ru',
    'douban',
    'xing',
    'renren',
    'threema',
    'sms',
    'line.me',
    'skype',
    'telegram.me',
    'email',
    'gmail',
    'yahoo'
  )
  return(sites.ordered)
}

GetSocialMediaSites_WithShareLinks_OrderedByAlphabet <- function() {
  sites <- GetSocialMediaSites_WithShareLinks_OrderedByPopularity()
  return(sort(sites))
}
    
GetSocialMediaSiteLinks_WithShareLinks <- function(
   url="",
   title="",
   image="",
   desc="",
   appid="",
   redirecturl="",
   via="",
   hash_tags="",
   provider="",
   language="",
   user_id="",
   category="",
   phone_number="",
   email_address="",
   cc_email_address="",
   bcc_email_address=""
   )
{      
  
  text <- title        
  text <- paste(text, desc)
  
  urls <- c(
    'add.this' = paste0('http://www.addthis.com/bookmark.php?url=',url),
    'blogger' = paste0('https://www.blogger.com/blog-this.g?u=',url,'&n=',title,'&t=',desc),
    'buffer' = paste0('https://buffer.com/add?text=',text,'&url=',url),
    'diaspora' = paste0('https://share.diasporafoundation.org/?title=','title','&url=',url),
    'douban' = paste0('http://www.douban.com/recommend/?url=',url,'&title=',text),
    'email' = paste0('mailto:',email_address,'?subject=',title,'&body=',desc),
    'evernote' = paste0('https://www.evernote.com/clip.action?url=',url,'&title=',text),
    'getpocket' = paste0('https://getpocket.com/edit?url=',url),
    'facebook' = paste0('http://www.facebook.com/sharer.php?u=',url),
    'flattr' = paste0('https://flattr.com/submit/auto?user_id=',user_id,'&url=',url,'&title=',title,'&description=',text,'&language=',language,'&tags=',hash_tags,'&hidden=HIDDEN&category=',category),
    'flipboard' = paste0('https://share.flipboard.com/bookmarklet/popout?v=2&title=',text,'&url=',url), 
    'gmail' = paste0('https://mail.google.com/mail/?view=cm&to=',email_address,'&su=',title,'&body=',url,'&bcc=',bcc_email_address,'&cc=',cc_email_address),
    'google.bookmarks' = paste0('https://www.google.com/bookmarks/mark?op=edit&bkmk=',url,'&title=',title,'&annotation=',text,'&labels=',hash_tags,''),
    'instapaper' = paste0('http://www.instapaper.com/edit?url=',url,'&title=',title,'&description=',desc),
    'line.me' = paste0('https://lineit.line.me/share/ui?url=',url,'&text=',text),
    'linkedin' = paste0('https://www.linkedin.com/sharing/share-offsite/?url=',url),
    'livejournal' = paste0('http://www.livejournal.com/update.bml?subject=',text,'&event=',url),
    'hacker.news' = paste0('https://news.ycombinator.com/submitlink?u=',url,'&t=',title),
    'ok.ru' = paste0('https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=',url),
    'pinterest' = paste0('http://pinterest.com/pin/create/button/?url=',url),
    'qzone' = paste0('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=',url),
    'reddit' = paste0('https://reddit.com/submit?url=',url,'&title=',title),
    'renren' = paste0('http://widget.renren.com/dialog/share?resourceUrl=',url,'&srcUrl=',url,'&title=',
                      text,'&description=',desc),
    'skype' = paste0('https://web.skype.com/share?url=',url,'&text=',text),
    'sms' = paste0('sms:',phone_number,'?body=',text),
    'surfingbird.ru' = paste0('http://surfingbird.ru/share?url=',url,'&description=',desc,'&screenshot=',
                              image,'&title=',title),
    'telegram.me' = paste0('https://t.me/share/url?url=',url,'&text=',text,'&to=',phone_number),
    'threema' = paste0('threema://compose?text=',text,'&id=',user_id),
    'tumblr' = paste0('https://www.tumblr.com/widgets/share/tool?canonicalUrl=',url,'&title=',title,
                      '&caption=',desc,'&tags=',hash_tags),
    'twitter' = paste0('https://twitter.com/intent/tweet?url=',url,'&text=',text,'&via=',
                       via,'&hashtags=',hash_tags),
    'vk' = paste0('http://vk.com/share.php?url=',url,'&title=',title,'&comment=',desc),
    'weibo' = paste0('http://service.weibo.com/share/share.php?url=',url,'&appkey=&title=',title,'&pic=&ralateUid='),
    'whatsapp' = paste0('https://api.whatsapp.com/send?text=',text,'%20',url),
    'xing' = paste0('https://www.xing.com/spi/shares/new?url=',url),
    'yahoo' = paste0('http://compose.mail.yahoo.com/?to=','email_address','&subject=',title,'&body=',text)
  )
  return(urls)
}


if(FALSE) {
  
  socialmediasites = GetSocialMediaSites_WithShareLinks_OrderedByAlphabet()
  head(socialmediasites)

  socialmediasites = GetSocialMediaSites_WithShareLinks_OrderedByPopularity()
  head(socialmediasites)

  socialmediaurls <- GetSocialMediaSiteLinks_WithShareLinks(
    url = 'http://www.earthfluent.com/',
    title = 'EarthFluent'
  )
  head(socialmediaurls)
  
  for (socialmediasite in socialmediasites) {
    cat(socialmediasite,":", socialmediaurls[socialmediasite],"\n")
  }

}
