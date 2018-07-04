# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### Swift

`Online Demo` :

* [Peter Kropotkin : Mutual Aid : A Factor of Evolution](https://www.revoltlib.com/anarchism/mutual-aid-a-factor-of-evolution/view.php#share)
* [EarthFluent.com : Learn German Online](https://www.earthfluent.com/german/view.php?action=index#share)
* [List Keywords : Finding and Listing Your Keywords For You](http://www.listkeywords.com/)

`Code Sandbox` :

* [IdeOne.com](https://ideone.com/uGoszL)

`Sample Use` :

	var sm:SocialMedia = SocialMedia(
		url: "http%3A%2F%2Fwww.earthfluent.com%2F",
		title: "EarthFluent",
		image: "",
		desc: "",
		appid: "",
		redirecturl: "",
		via: "",
		hash_tags: "",
		provider: "",
		language: "",
		user_id: "",
		category: "",
		phone_number: "",
		email_address: "",
		cc_email_address: "",
		bcc_email_address: ""
	)
	 
	for index in 0..<sm.servicesSortedByPopularity.count{
		var service = sm.servicesSortedByPopularity[index];
		var url = sm.urls[index];
		print(service + " : " + url);
	}

`Library Files` :

* [/code/swift/SocialMedia.swift](https://github.com/bradvin/social-share-urls/blob/master/code/swift/SocialMedia.swift)
