# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### Java

`Online Demo` :

* [EarthFluent.com : Learn Spanish Online](https://www.earthfluent.com/spanish/view.php?action=index#share)
* [Alexander Berkman : Prison Memoirs of an Anarchist](https://www.revoltlib.com/anarchism/prison-memoirs-of-an-anarchist/view.php#share)
* [Sort Words : Sort Words : Sorting Your Lists of Words For You](http://www.sortwords.com/)

`Code Sandbox` :

* [IdeOne.com](https://ideone.com/MuwKas)

`Sample Use` :

	class main {
		public static void main (String[] args) {
			SocialMedia sm = new SocialMedia();
			Map<String, String> socialmediaargs = new HashMap<String, String>(){{
				put("url", "http://www.earthfluent.com/");
				put("title", "EarthFluent");
			}};
			Map<String, String> socialmediasites = sm.GetSocialMediaSiteLinks_WithShareLinks(socialmediaargs);
	 
			for (String socialmedia : sm.GetSocialMediaSites_WithShareLinks_OrderedByPopularity()) {
				System.out.println(socialmedia + " : " + socialmediasites.get(socialmedia));
			}
		}
	}

`Library Files` :

* [/code/java/SocialMedia.java](https://github.com/bradvin/social-share-urls/blob/master/code/java/SocialMedia.java)
