# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### C++

`Online Demo` :

* [Peter Kropotkin : Memoirs of a Revolutionist](https://www.revoltlib.com/anarchism/memoirs-of-a-revolutionist/view.php#share)
* [EarthFluent.com : Learn Japanese Online](https://www.earthfluent.com/japanese/view.php?action=index#share)
* [List Keywords : Finding and Listing Your Keywords For You](http://www.listkeywords.com/)

`Code Sandbox` :

* [ideone.com](https://ideone.com/s9X5sD)

`Sample Use` :

	int main() {
		SocialMedia sm;
	
		for(int i = 0; i < SOCIALMEDIASERVICES; i++) {
			printf("%s", sm.urlsOrderedByPopularity[i]);
			printf(" : ");
			printf("%s", sm.urls[i]);
			printf("\n");
		}
	
		return 0;
	}

`Library Files` :

* [/code/cpp/SocialMedia.cpp](https://github.com/bradvin/social-share-urls/blob/master/code/cpp/SocialMedia.cpp)
