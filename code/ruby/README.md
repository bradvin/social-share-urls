# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### Ruby

`Online Demo` :

* [Peter Kropotkin : Modern Science and Anarchism](http://www.revoltlib.com/anarchism/modern-science-and-anarchism/view.php#share)
* [EarthFluent.com : Learn Korean Online](https://www.earthfluent.com/korean/view.php?action=index#share)
* [Sort Words : Sorting Your Lists of Words For You](http://www.sortwords.com/)

`Code Sandbox` :

* [ideone.com](https://ideone.com/ySblDV)

`Sample Use` :

	sm = SocialMedia.new
	
	socialmediaurls = sm.GetSocialMediaSiteLinks_WithShareLinks({
	  'title'=>'EarthFluent',
	  'url'=>'http://www.earthfluent.com/',
	})
	
	sm.GetSocialMediaSites_WithShareLinks_OrderedByPopularity().each{
	#sm.GetSocialMediaSites_WithShareLinks_OrderedByAlphabet().each{
	#sm.GetSocialMediaSites_NiceNames().keys.each{
	  |socialmedia|
	    puts socialmedia + ' : ' + socialmediaurls[socialmedia]
	}

`Library Files` :

* [/code/ruby/SocialMedia.rb](https://github.com/bradvin/social-share-urls/blob/master/code/ruby/SocialMedia.rb)
