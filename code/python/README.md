# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### Python

`Online Demo` :

* [Peter Kropotkin : The Conquest of Bread](http://www.revoltlib.com/anarchism/the-conquest-of-bread/view.php#share)
* [EarthFluent.com : Learn Portuguese Online](https://www.earthfluent.com/portuguese/view.php?action=index#share)
* [List Keywords : Finding and Listing Your Keywords For You](http://www.listkeywords.com/)

`Code Sandbox` :

* [IdeOne.com](https://ideone.com/4IL16q)

`Sample Use` :

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

`Library Files` :

* [/code/php/SocialMedia.py](https://github.com/bradvin/social-share-urls/blob/master/code/python/SocialMedia.py)
