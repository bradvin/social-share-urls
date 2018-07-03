# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### ObjectiveC

`Online Demo` :

* [Peter Kropotkin : Wars and Capitalism](https://www.revoltlib.com/anarchism/wars-and-capitalism/view.php#share)
* [EarthFluent.com : Learn Japanese Online](https://www.earthfluent.com/japanese/view.php?action=index#share)
* [Sort Words : Sorting Your Lists of Words For You](http://www.sortwords.com/)

`Code Sandbox` :

* [ideone.com](https://ideone.com/88SKLP)

`Sample Use` :

	SocialMedia *sm = [[SocialMedia alloc]init];

	int i;
	for(i = 0; i < SOCIALMEDIASERVICES; i++) {
		NSString *socialmedia = [sm.urlsOrderedByPopularity objectAtIndex: i];
		NSString *socialmediaurl= [sm.urls objectAtIndex: i];
		printf("%s", [socialmedia UTF8String]);
		printf(" : ");
		printf("%s", [socialmediaurl UTF8String]);
		printf("\n");
	}

	return 0;

`Library Files` :

* [/code/objective-c/SocialMedia.m](https://github.com/bradvin/social-share-urls/blob/master/code/objective-c/SocialMedia.m)
