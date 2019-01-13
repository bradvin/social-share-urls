package SocialShareMedia::SocialShareURLs;
use HTML::Entities;
use strict;

sub GetSocialMediaSites_NiceNames {
	return [
		'add.this'=>'AddThis',
		'blogger'=>'Blogger',
		'buffer'=>'Buffer',
		'diaspora'=>'Diaspora',
		'digg'=>'Digg',
		'douban'=>'Douban',
		'email'=>'EMail',
		'evernote'=>'EverNote',
		'getpocket'=>'Pocket',
		'facebook'=>'FaceBook',
		'flattr'=>'Flattr',
		'flipboard'=>'FlipBoard',
		'google.bookmarks'=>'GoogleBookmarks',
		'instapaper'=>'InstaPaper',
		'line.me'=>'Line.me',
		'linkedin'=>'LinkedIn',
		'livejournal'=>'LiveJournal',
		'gmail'=>'GMail',
		'hacker.news'=>'HackerNews',
		'ok.ru'=>'OK.ru',
		'pinterest.com'=>'Pinterest',
		'qzone'=>'QZone',
		'reddit'=>'Reddit',
		'renren'=>'RenRen',
		'skype'=>'Skype',
		'sms'=>'SMS',
		'surfingbird.ru'=>'SurfingBird.ru',
		'telegram.me'=>'Telegram.me',
		'threema'=>'Threema',
		'tumblr'=>'Tumblr',
		'twitter'=>'Twitter',
		'vk'=>'VK',
		'weibo'=>'Weibo',
		'xing'=>'Xing',
		'yahoo'=>'Yahoo',
	];
}


sub GetSocialMediaSites_WithShareLinks_OrderedByPopularity {
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
	];
}

sub GetSocialMediaSites_WithShareLinks_OrderedByAlphabet {
	my ($self, $args) = @_;
	
	my $nice_names = $self->GetSocialMediaSites_NiceNames();
	
	return keys %$nice_names;
}

		# Social Media Site Links With Share Links
		# -------------------------------------------------

sub GetSocialMediaSiteLinks_WithShareLinks {
	my ($self, $args) = @_;
	
	my $url = HTML::Entities::decode_entities($args->{url});
	my $title = HTML::Entities::decode_entities($args->{title});
	my $image = HTML::Entities::decode_entities($args->{image});
	my $desc = HTML::Entities::decode_entities($args->{desc});
	my $app_id = HTML::Entities::decode_entities($args->{appid});
	my $redirect_url = HTML::Entities::decode_entities($args->{redirecturl});
	my $via = HTML::Entities::decode_entities($args->{via});
	my $hash_tags = HTML::Entities::decode_entities($args->{hashtags});
	my $provider = HTML::Entities::decode_entities($args->{provider});
	my $language = HTML::Entities::decode_entities($args->{language});
	my $user_id = HTML::Entities::decode_entities($args->{userid});
	my $category = HTML::Entities::decode_entities($args->{category});
	my $phone_number = HTML::Entities::decode_entities($args->{phonenumber});
	my $email_address = HTML::Entities::decode_entities($args->{emailaddress});
	my $cc_email_address = HTML::Entities::decode_entities($args->{ccemailaddress});
	my $bcc_email_address = HTML::Entities::decode_entities($args->{bccemailaddress});
	
	my $text = $title;
	
	if($desc) {
		$text .= '%20%3A%20';	# This is just this, " : "
		$text .= $desc;
	}
	
	return {
		'add.this'=>'http://www.addthis.com/bookmark.php?url=' . $url,
		'blogger'=>'https://www.blogger.com/blog-this.g?u=' . $url . '&n=' . $title . '&t=' . $desc,
		'buffer'=>'https://buffer.com/add?text=' . $text . '&url=' . $url,
		'diaspora'=>'https://share.diasporafoundation.org/?title=' . $title . '&url=' . $url,
		'digg'=>'http://digg.com/submit?url=' . $url . '&title=' . $text,
		'douban'=>'http://www.douban.com/recommend/?url=' . $url . '&title=' . $text,
		'email'=>'mailto:' . $email_address . '?subject=' . $title . '&body=' . $desc,
		'evernote'=>'http://www.evernote.com/clip.action?url=' . $url . '&title=' . $text,
		'getpocket'=>'https://getpocket.com/edit?url=' . $url,
		'facebook'=>'http://www.facebook.com/sharer.php?u=' . $url,
		'flattr'=>'https://flattr.com/submit/auto?user_id=' . $user_id . '&url=' . $url . '&title=' . $title . '&description=' . $text . '&language=' . $language . '&tags=' . $hash_tags . '&hidden=HIDDEN&category=' . $category,
		'flipboard'=>'https://share.flipboard.com/bookmarklet/popout?v=2&title=' . $text . '&url=' . $url, 
		'gmail'=>'https://mail.google.com/mail/?view=cm&to=' . $email_address . '&su=' . $title . '&body=' . $url . '&bcc=' . $bcc_email_address . '&cc=' . $cc_email_address,
		'google.bookmarks'=>'https://www.google.com/bookmarks/mark?op=edit&bkmk=' . $url . '&title=' . $title . '&annotation=' . $text . '&labels=' . $hash_tags . '',
		'instapaper'=>'http://www.instapaper.com/edit?url=' . $url . '&title=' . $title . '&description=' . $desc,
		'line.me'=>'https://lineit.line.me/share/ui?url=' . $url . '&text=' . $text,
		'linkedin'=>'https://www.linkedin.com/shareArticle?mini=true&url=' . $url . '&title=' . $title . '&summary=' . $text . '&source=' . $provider,
		'livejournal'=>'http://www.livejournal.com/update.bml?subject=' . $text . '&event=' . $url,
		'hacker.news'=>'https://news.ycombinator.com/submitlink?u=' . $url . '&t=' . $title,
		'ok.ru'=>'https://connect.ok.ru/dk?st.cmd=WidgetSharePreview&st.shareUrl=' . $url,
		'pinterest'=>'http://pinterest.com/pin/create/button/?url=' . $url ,
		'qzone'=>'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=' . $url,
		'reddit'=>'https://reddit.com/submit?url=' . $url . '&title=' . $title,
		'renren'=>'http://widget.renren.com/dialog/share?resourceUrl=' . $url . '&srcUrl=' . $url . '&title=' . $text . '&description=' . $desc,
		'skype'=>'https://web.skype.com/share?url=' . $url . '&text=' . $text,
		'sms'=>'sms:' . $phone_number . '?body=' . $text,
		'surfingbird.ru'=>'http://surfingbird.ru/share?url=' . $url . '&description=' . $desc . '&screenshot=' . $image . '&title=' . $title,
		'telegram.me'=>'https://t.me/share/url?url=' . $url . '&text=' . $text . '&to=' . $phone_number,
		'threema'=>'threema://compose?text=' . $text . '&id=' . $user_id,
		'tumblr'=>'https://www.tumblr.com/widgets/share/tool?canonicalUrl=' . $url . '&title=' . $title . '&caption=' . $desc . '&tags=' . $hash_tags,
		'twitter'=>'https://twitter.com/intent/tweet?url=' . $url . '&text=' . $text . '&via=' . $via . '&hashtags=' . $hash_tags,
		'vk'=>'http://vk.com/share.php?url=' . $url . '&title=' . $title . '&comment=' . $desc,
		'weibo'=>'http://service.weibo.com/share/share.php?url=' . $url . '&appkey=&title=' . $title . '&pic=&ralateUid=',
		'xing'=>'https://www.xing.com/spi/shares/new?url=' . $url,
		'yahoo'=>'http://compose.mail.yahoo.com/?to=' . $email_address . '&subject=' . $title . '&body=' . $text,
	};
}
