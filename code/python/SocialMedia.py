class SocialMedia:
    def __init__(self):
        pass
    
    def GetSocialMediaSites_NiceNames(self):
        return {
            'add.this':'AddThis',
            'blogger':'Blogger',
            'buffer':'Buffer',
            'diaspora':'Diaspora',
            'digg':'Digg',
            'douban':'Douban',
            'email':'EMail',
            'evernote':'EverNote',
            'getpocket':'Pocket',
            'facebook':'FaceBook',
            'flattr':'Flattr',
            'flipboard':'FlipBoard',
            'google.bookmarks':'GoogleBookmarks',
            'instapaper':'InstaPaper',
            'line.me':'Line.me',
            'linkedin':'LinkedIn',
            'livejournal':'LiveJournal',
            'gmail':'GMail',
            'hacker.news':'HackerNews',
            'ok.ru':'OK.ru',
            'pinterest':'Pinterest',
            'qzone':'QZone',
            'reddit':'Reddit',
            'renren':'RenRen',
            'skype':'Skype',
            'sms':'SMS',
            'surfingbird.ru':'SurfingBird.ru',
            'telegram.me':'Telegram.me',
            'threema':'Threema',
            'tumblr':'Tumblr',
            'twitter':'Twitter',
            'vk':'VK',
            'weibo':'Weibo',
            'xing':'Xing',
            'yahoo':'Yahoo',
        }

    def GetSocialMediaSites_WithShareLinks_OrderedByPopularity(self):
        return [
            'google.bookmarks',
            'facebook',
            'reddit',
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
            'digg',
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
            'yahoo',
        ]
    
    def GetSocialMediaSites_WithShareLinks_OrderedByAlphabet(self):
        socialmediasites = self.GetSocialMediaSites_NiceNames().keys()
        socialmediasites.sort()
        return socialmediasites
    
    def GetSocialMediaSiteLinks_WithShareLinks(self, args):
        safeargs = [
            'url',
            'title',
            'image',
            'desc',
            'appid',
            'redirecturl',
            'via',
            'hash_tags',
            'provider',
            'language',
            'user_id',
            'category',
            'phone_number',
            'email_address',
            'cc_email_address',
            'bcc_email_address',
        ]
        
        for safearg in safeargs:
            if not args.get(safearg):
                args[safearg] = ''
        
        text = args['title']
        
        if len(args['desc']):
            text += '%20%3A%20' + args['desc']

        return {
            'add.this':'http://www.addthis.com/bookmark.php?url=' + args['url'],
            'blogger':'https://www.blogger.com/blog-this.g?u=' + args['url'] + '&n=' + args['title'] + '&t=' + args['desc'],
            'buffer':'https://buffer.com/add?text=' + text + '&url=' + args['url'],
            'diaspora':'https://share.diasporafoundation.org/?title=' + args['title'] + '&url=' + args['url'],
            'digg':'http://digg.com/submit?url=' + args['url'] + '&title=' + text,
            'douban':'http://www.douban.com/recommend/?url=' + args['url'] + '&title=' + text,
            'email':'mailto:' + args['email_address'] + '?subject=' + args['title'] + '&body=' + args['desc'],
            'evernote':'https://www.evernote.com/clip.action?url=' + args['url'] + '&title=' + text,
            'getpocket':'https://getpocket.com/edit?url=' + args['url'],
            'facebook':'http://www.facebook.com/sharer.php?u=' + args['url'],
            'flattr':'https://flattr.com/submit/auto?user_id=' + args['user_id'] + '&url=' + args['url'] + '&title=' + args['title'] + '&description=' + text + '&language=' + args['language'] + '&tags=' + args['hash_tags'] + '&hidden=HIDDEN&category=' + args['category'],
            'flipboard':'https://share.flipboard.com/bookmarklet/popout?v=2&title=' + text + '&url=' + args['url'], 
            'gmail':'https://mail.google.com/mail/?view=cm&to=' + args['email_address'] + '&su=' + args['title'] + '&body=' + args['url'] + '&bcc=' + args['bcc_email_address'] + '&cc=' + args['cc_email_address'],
            'google.bookmarks':'https://www.google.com/bookmarks/mark?op=edit&bkmk=' + args['url'] + '&title=' + args['title'] + '&annotation=' + text + '&labels=' + args['hash_tags'] + '',
            'instapaper':'http://www.instapaper.com/edit?url=' + args['url'] + '&title=' + args['title'] + '&description=' + args['desc'],
            'line.me':'https://lineit.line.me/share/ui?url=' + args['url'] + '&text=' + text,
            'linkedin':'https://www.linkedin.com/shareArticle?mini=true&url=' + args['url'] + '&title=' + args['title'] + '&summary=' + text + '&source=' + args['provider'],
            'livejournal':'http://www.livejournal.com/update.bml?subject=' + text + '&event=' + args['url'],
            'hacker.news':'https://news.ycombinator.com/submitlink?u=' + args['url'] + '&t=' + args['title'],
            'ok.ru':'https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=' + args['url'],
            'pinterest':'http://pinterest.com/pin/create/button/?url=' + args['url'] ,
            'qzone':'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=' + args['url'],
            'reddit':'https://reddit.com/submit?url=' + args['url'] + '&title=' + args['title'],
            'renren':'http://widget.renren.com/dialog/share?resourceUrl=' + args['url'] + '&srcUrl=' + args['url'] + '&title=' + text + '&description=' + args['desc'],
            'skype':'https://web.skype.com/share?url=' + args['url'] + '&text=' + text,
            'sms':'sms:' + args['phone_number'] + '?body=' + text,
            'surfingbird.ru':'http://surfingbird.ru/share?url=' + args['url'] + '&description=' + args['desc'] + '&screenshot=' + args['image'] + '&title=' + args['title'],
            'telegram.me':'https://t.me/share/url?url=' + args['url'] + '&text=' + text + '&to=' + args['phone_number'],
            'threema':'threema://compose?text=' + text + '&id=' + args['user_id'],
            'tumblr':'https://www.tumblr.com/widgets/share/tool?canonicalUrl=' + args['url'] + '&title=' + args['title'] + '&caption=' + args['desc'] + '&tags=' + args['hash_tags'],
            'twitter':'https://twitter.com/intent/tweet?url=' + args['url'] + '&text=' + text + '&via=' + args['via'] + '&hashtags=' + args['hash_tags'],
            'vk':'http://vk.com/share.php?url=' + args['url'] + '&title=' + args['title'] + '&comment=' + args['desc'],
            'weibo':'http://service.weibo.com/share/share.php?url=' + args['url'] + '&appkey=&title=' + args['title'] + '&pic=&ralateUid=',
            'xing':'https://www.xing.com/spi/shares/new?url=' + args['url'],
            'yahoo':'http://compose.mail.yahoo.com/?to=' + args['email_address'] + '&subject=' + args['title'] + '&body=' + text,
        }

sm = SocialMedia()
#socialmediasites = sm.GetSocialMediaSites_WithShareLinks_OrderedByAlphabet()
socialmediasites = sm.GetSocialMediaSites_WithShareLinks_OrderedByPopularity()
socialmediaurls = sm.GetSocialMediaSiteLinks_WithShareLinks({
    'url':'http://www.earthfluent.com/',
    'title':'EarthFluent',
})
#print(socialmediaurls.keys())

for socialmediasite in socialmediasites:
    print(socialmediasite + " : " + socialmediaurls[socialmediasite])
    pass
