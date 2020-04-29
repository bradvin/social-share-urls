# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### VB.NET

`Online Demo` :

* [Peter Kropotkin : The Industrial Village of the Future](https://www.revoltlib.com/anarchism/the-industrial-village-of-the-future/view.php#share)
* [EarthFluent.com : Learn Polish Online](https://www.earthfluent.com/polish/view.php?action=index#share)
* [List Keywords : Finding and Listing Your Keywords For You](http://www.listkeywords.com/)

`Code Sandbox` :

* [ideone.com](https://ideone.com/JbJqM3)

`Sample Use` :

	Public Class App
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

`Library Files` :

* [/code/vb.net/SocialMedia.vb](https://github.com/bradvin/social-share-urls/blob/master/code/vb.net/SocialMedia.vb)
