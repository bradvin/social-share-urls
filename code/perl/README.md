# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### Perl

`Online Demo` :

* [Murray Bookchin : Society and Ecology](https://www.revoltlib.com/anarchism/society-and-ecology/view.php#share)
* [EarthFluent.com : Learn Russian Online](https://www.earthfluent.com/russian/view.php?action=index#share)
* [Remove Spacing : Removing Spaces and Spacing from Your Text](http://www.removespacing.com/)

`Code Sandbox` :

* [ideone.com](https://ideone.com/rnq9Wg)

`Sample Use` :

	my @social_media_names = @{GetSocialMediaSites_WithShareLinks_OrderedByPopularity() || []};
	my $social_media_urls = GetSocialMediaSiteLinks_WithShareLinks({
			url=>'https://www.earthfluent.com/',
			title=>'EarthFluent',
	});
	 
	foreach my $social_media_name(@social_media_names) {
		my $social_media_url = $social_media_urls->{$social_media_name};
	 
		print($social_media_name . ' : ' . $social_media_url . "\n\n");
	}

`Library Files` :

* [/code/perl/social-share-media.pl](https://github.com/bradvin/social-share-urls/blob/master/code/perl/social-share-media.pl)
