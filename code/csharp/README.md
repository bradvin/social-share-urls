# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### CSharp

`Online Demo` :

* [Peter Kropotkin : Fields, Factories, and Workshops](https://www.revoltlib.com/anarchism/fields,-factories,-and-workshops/view.php#share)
* [EarthFluent.com : Learn Hindi Online](https://www.earthfluent.com/hindi/view.php?action=index#share)
* [List Keywords : Finding and Listing Your Keywords For You](http://www.listkeywords.com/)

`Code Sandbox` :

* [IdeOne.com](https://ideone.com/G0rysr)

`Sample Use` :

	public class Application
	{
		public static void Main()
		{
			SocialMedia sm = new SocialMedia(
				"EarthFluent",
				"http%3A%2F%2Fwww.earthfluent.com%2F"
			);
	
			for (int i = 0; i < Globals.SOCIALMEDIASERVICES; i++)
			{
				Console.WriteLine(sm.servicesSortedByPopularity[i] + " : " + sm.urls[i]);
			}
		}
	}

`Library Files` :

* [/code/csharp/SocialMedia.cs](https://github.com/bradvin/social-share-urls/blob/master/code/csharp/SocialMedia.cs)
