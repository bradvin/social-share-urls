# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

https://github.com/bradvin/social-share-urls/tree/master/code/

### JavaScript

`Online Demo` :

* [EarthFluent.com : Social Share Media JavaScript Demo](http://www.earthfluent.com/social-share-media.html)
* [EarthFluent.com : Learn Japanese Online](https://www.earthfluent.com/japanese/view.php?action=index#share)
* [Peter Kropotkin : The Great French Revolution](https://www.revoltlib.com/anarchism/the-great-french-revolution/view.php#share)
* [Remove Duplicate Lines : Removing Duplicate Entries from Lists](http://www.removeduplicatelines.com/)

`Code Sandbox` :

* [JSBin.com : Social Share Media Javascript Demo](https://jsbin.com/jubacez/edit?html,output)
* IdeOne.com : Does Not Compile, Unknown Error.
* CodeSandbox.io : Does Not Compile, Unknown Error.

`Sample Use` :

	const socialmedia = GetSocialMediaSites_WithShareLinks_OrderedByPopularity();
	const socialmediaurls = GetSocialMediaSiteLinks_WithShareLinks({
		'url':$('#input_url').val(),
		'title':$('#input_title').val(),
	});
	
	var children = [];
	
	for(var i = 0; i < socialmedia.length; i++) {
		const socialmedium = socialmedia[i];
		
		children.push(
			'<tr><td class="output-label">' +
			socialmedium +
			'</td><td>' +
			socialmediaurls[socialmedium] +
			'</td></tr>'
		);
	}
	
	$('#output-table').empty();
	$('#output-table').append(children.join());

`Library Files` :

* [/code/javascript/social-share-media.html](https://github.com/bradvin/social-share-urls/blob/master/code/javascript/social-share-media.html)
* [/code/javascript/css/social-share-media.css](https://github.com/bradvin/social-share-urls/blob/master/code/javascript/css/social-share-media.css)
* [/code/javascript/javascript/social-share-media.js](https://github.com/bradvin/social-share-urls/blob/master/code/javascript/javascript/social-share-media.js)
