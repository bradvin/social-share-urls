# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### PHP

`Online Demo` :

* [Mikhail Bakunin : God and the State](http://www.revoltlib.com/anarchism/god-and-the-state/view.php#share)
* [EarthFluent.com : Learn French Online](https://www.earthfluent.com/french/view.php?action=index#share)
* [List Keywords : Finding and Listing Your Keywords For You](http://www.listkeywords.com/)

`Code Sandbox` :

* [IdeOne.com](https://ideone.com/LuI4Ik)

`Sample Use` :

	$socmed = new SocialMedia();
	
	$social_media_names = $socmed->GetSocialMediaSites_WithShareLinks_OrderedByPopularity();
	$social_media_urls = $socmed->GetSocialMediaSiteLinks_WithShareLinks([
		url=>'http://www.earthfluent.com/',
		title=>'EarthFluent',
	]);
	
	foreach($social_media_names as $social_media_name) {
		$social_media_url = $social_media_urls[$social_media_name];
 
		print($social_media_name . ' : ' . $social_media_url . "\n\n");
	}

`Library Files` :

* [/code/php/SocialMedia.php](https://github.com/bradvin/social-share-urls/blob/master/code/php/SocialMedia.php)
