Imports System

Public Class SocialMedium
	Public title As String
	Public url As String
	Public desc As String
	Public image As String
	Public app_id As String
	Public redirect_url As String
	Public via As String
	Public hash_tags As String
	Public provider As String
	Public language As String
	Public category As String
	Public user_id As String
	Public phone_number As String
	Public email_address As String
	Public cc_email_address As String
	Public bcc_email_address As String

	Public urls(37) As String
	Public urlsOrderedByPopularity As String() = {
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
		}

	Public Sub New(
			ByVal argTitle As String,
			ByVal argUrl As String,
			ByVal argDesc As String,
			ByVal argImage As String,
			ByVal argApp_id As String,
			ByVal argRedirect_url As String,
			ByVal argVia As String,
			ByVal argHash_tags As String,
			ByVal argProvider As String,
			ByVal argLanguage As String,
			ByVal argUser_id As String,
			ByVal argCategory As String,
			ByVal argPhone_number As String,
			ByVal argEmail_address As String,
			ByVal argCc_email_address As String,
			ByVal argBcc_email_address As String
	)
		title = argTitle
		url = argUrl
		desc = argDesc
		image = argImage
		app_id = argApp_id
		redirect_url = argRedirect_url
		via = argVia
		hash_tags = argHash_tags
		provider = argProvider
		language = argLanguage
		user_id = argUser_id
		category = argCategory
		phone_number = argPhone_number
		email_address = argEmail_address
		cc_email_address = argCc_email_address
		bcc_email_address = argBcc_email_address

		Dim text As String = title

		If(desc.Length > 0)
			text += "%20%3A%20"
			text += desc
		End If

		Dim addthis As String = "http://www.addthis.com/bookmark.php?url=" + url
		Dim blogger As String = "https://www.blogger.com/blog-this.g?u=" + url + "&n=" + title + "&t=" + desc
		Dim buffer As String = "https://buffer.com/add?text=" + text + "&url=" + url
		Dim diaspora As String = "https://share.diasporafoundation.org/?title=" + title + "&url=" + url
		Dim digg As String = "http://digg.com/submit?url=" + url + "&title=" + text
		Dim douban As String = "http://www.douban.com/recommend/?url=" + url + "&title=" + title
		Dim email As String = "mailto:" + email_address + "?subject=" + title + "&body=" + desc
		Dim evernote As String = "https://www.evernote.com/clip.action?url=" + url + "&title=" + text
		Dim getpocket As String = "https://getpocket.com/edit?url=" + url
		Dim facebook As String = "http://www.facebook.com/sharer.php?u=" + url
		Dim flattr As String = "https://flattr.com/submit/auto?user_id=" + user_id + "&url=" + url + "&title=" + title + "&description=" + text + "&language=" + language + "&tags=" + hash_tags + "&hidden=HIDDEN&category=" + category
		Dim flipboard As String = "https://share.flipboard.com/bookmarklet/popout?v=2&title=" + text + "&url=" + url
		Dim gmail As String = "https://mail.google.com/mail/?view=cm&to=" + email_address + "&su=" + title + "&body=" + url + "&bcc=" + bcc_email_address + "&cc=" + cc_email_address
		Dim googlebookmarks As String = "https://www.google.com/bookmarks/mark?op=edit&bkmk=" + url + "&title=" + title + "&annotation=" + text + "&labels=" + hash_tags
		Dim instapaper As String = "http://www.instapaper.com/edit?url=" + url + "&title=" + title + "&description=" + desc
		Dim lineme As String = "https://lineit.line.me/share/ui?url=" + url + "&text=" + text
		Dim linkedin As String = "https://www.linkedin.com/sharing/share-offsite/?url=" + url
		Dim livejournal As String = "http://www.livejournal.com/update.bml?subject=" + text + "&event=" + url
		Dim hackernews As String = "https://news.ycombinator.com/submitlink?u=" + url + "&t=" + title
		Dim okru As String = "https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=" + url
		Dim pinterest As String = "http://pinterest.com/pin/create/button/?url=" + url
		Dim qzone As String = "http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=" + url
		Dim reddit As String = "https://reddit.com/submit?url=" + url + "&title=" + title
		Dim renren As String = "http://widget.renren.com/dialog/share?resourceUrl=" + url + "&srcUrl=" + url + "&title=" + text + "&description=" + desc
		Dim skype As String = "https://web.skype.com/share?url=" + url + "&text=" + text
		Dim sms As String = "sms:" + phone_number + "?body=" + text
		Dim surfingbird As String = "http://surfingbird.ru/share?url=" + url + "&description=" + desc + "&screenshot=" + image + "&title=" + title
		Dim telegramme As String = "https://t.me/share/url?url=" + url + "&text=" + text + "&to=" + phone_number
		Dim threema As String = "threema://compose?text=" + text + "&id=" + user_id
		Dim tumblr As String = "https://www.tumblr.com/widgets/share/tool?canonicalUrl=" + url + "&title=" + title + "&caption=" + desc + "&tags=" + hash_tags
		Dim twitter As String = "https://twitter.com/intent/tweet?url=" + url + "&text=" + text + "&via=" + via + "&hashtags=" + hash_tags
		Dim vk As String = "http://vk.com/share.php?url=" + url + "&title=" + title + "&comment=" + desc
		Dim weibo As String = "http://service.weibo.com/share/share.php?url=" + url + "&appkey=&title=" + title + "&pic=&ralateUid="
		Dim xing As String = "https://www.xing.com/spi/shares/new?url=" + url
		Dim yahoo As String = "http://compose.mail.yahoo.com/?to=" + email_address + "&subject=" + title + "&body=" + text

		Dim index As Integer = 0
		
		urls(index) = googlebookmarks
		index = index + 1
		
		urls(index) = facebook
		index = index + 1
		
		urls(index) = reddit
		index = index + 1
		
		urls(index) = twitter
		index = index + 1
		
		urls(index) = linkedin
		index = index + 1
		
		urls(index) = tumblr
		index = index + 1
		
		urls(index) = pinterest
		index = index + 1
		
		urls(index) = blogger
		index = index + 1
		
		urls(index) = livejournal
		index = index + 1
		
		urls(index) = evernote
		index = index + 1
		
		urls(index) = addthis
		index = index + 1
		
		urls(index) = getpocket
		index = index + 1
		
		urls(index) = hackernews
		index = index + 1
		
		urls(index) = digg
		index = index + 1
		
		urls(index) = buffer
		index = index + 1
		
		urls(index) = flipboard
		index = index + 1
		
		urls(index) = instapaper
		index = index + 1
		
		urls(index) = surfingbird
		index = index + 1
		
		urls(index) = flattr
		index = index + 1
		
		urls(index) = diaspora
		index = index + 1
		
		urls(index) = qzone
		index = index + 1
		
		urls(index) = vk
		index = index + 1
		
		urls(index) = weibo
		index = index + 1
		
		urls(index) = okru
		index = index + 1
		
		urls(index) = douban
		index = index + 1
		
		urls(index) = xing
		index = index + 1
		
		urls(index) = renren
		index = index + 1
		
		urls(index) = threema
		index = index + 1
		
		urls(index) = sms
		index = index + 1
		
		urls(index) = lineme
		index = index + 1
		
		urls(index) = skype
		index = index + 1
		
		urls(index) = telegramme
		index = index + 1
		
		urls(index) = email
		index = index + 1
		
		urls(index) = gmail
		index = index + 1
		
		urls(index) = yahoo
	End Sub
End Class

Public Class Test
	Public Shared Sub Main()
		Dim sm As New SocialMedium(
			"EarthFluent",
			"http%3A%2F%2Fwww.earthfluent.com%2F",
			"Want%20to%20learn%20another%20language%3F%20%20Learn%20Spanish%2C%20French%2C%20Italian%2C%20German%2C%20Japanese%2C%20Chinese%2C%20Hindi%2C%20Indonesian%2C%20Dutch%2C%20Polish%2C%20Portuguese%2C%20or%20Russian%21",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			"",
			""
		)
		For index As Integer = 0 To 36
			Console.WriteLine(sm.urlsOrderedByPopularity(index) + " : " + sm.urls(index))
		Next
		Console.WriteLine(sm.urlsOrderedByPopularity(0))
	End Sub
End Class
