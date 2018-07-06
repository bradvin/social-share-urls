# Social Share Code Libraries

The Social Share Code Libraries project provides source code libraries for writing code that uses sharing on social-media.

All code is released under the permissive BSD-3-Clause License, so you should be able to use it in any of your projects, even if they are not permissively licensed like the BSD-3-Clause License.

![Share Links - Do You Have Them?](../images/social-share.jpg "ShareLinks Icons")

## Who Maintains This Project?

This is a sub-project of Social Share URL's, a project for documenting the sharing URL API's of third-party, social-media websites.  Check out more about us here :

https://github.com/bradvin/social-share-urls

## Libraries?

* [PHP](#php)
* [Python](#python)
* [Java](#java)
* [Golang](#golang)
* [ReactJS](#reactjs)
* [JavaScript](#javascript)
* [C++](#c++)
* [C](#c)
* [CSharp](#csharp)
* [Ruby](#ruby)
* [VB.NET](#vbnet)
* [Perl](#perl)
* [Swift](#swift)
* [ObjectiveC](#objectivec)

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

---

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

---

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

---

### Golang

`Online Demo` :

* [Peter Kropotkin : Ethics: Origin and Development](https://www.revoltlib.com/anarchism/ethics-origin-and-development/view.php#share)
* [EarthFluent.com : Learn Indonesian Online](https://www.earthfluent.com/indonesian/view.php?action=index#share)
* [List Keywords : Finding and Listing Your Keywords For You](http://www.listkeywords.com/)

`Code Sandbox` :

* [IdeOne.com](https://ideone.com/j7ejMx)

`Sample Use` :

	func SocialMediaDefault() SocialMedia {
		sm := SocialMedia{
			title:"EarthFluent",
			url:"http%3A%2F%2Fwww.earthfluent.com%2F",
			desc:"Want%20to%20learn%20another%20language%3F%20%20Learn%20Spanish%2C%20French%2C%20Italian%2C%20German%2C%20Japanese%2C%20Chinese%2C%20Hindi%2C%20Indonesian%2C%20Dutch%2C%20Polish%2C%20Portuguese%2C%20or%20Russian%21",
		}  
		return sm
	}
	
	func main(){
		sm := SocialMediaInterface()
	
		for i := 0; i < 37; i++ {
			fmt.Println(sm.urlsOrderedByPopularity[i] + " : " + sm.urls[i]);
		}
	}

`Library Files` :

* [/code/golang/SocialMedia.go](https://github.com/bradvin/social-share-urls/blob/master/code/golang/SocialMedia.go)

---

### ReactJS

`Online Demo` :

* [EarthFluent.com : Learn Chinese Online](https://www.earthfluent.com/chinese/view.php?action=index#share)
* [Lucy Parsons : The Principles of Anarchism](https://www.revoltlib.com/anarchism/the-principles-of-anarchism/view.php#share)
* [Remove Blank Lines : Removing Blank Lines from Lists](http://www.removeblanklines.com/)

`Code Sandbox` :

* [CodeSandbox.io](https://codesandbox.io/s/98znjopzr4)

`Sample Use` :

    <SocialShareMedia
        url="http://www.earthfluent.com/"
        title="EarthFluent"
    />

`Library Files` :

* [/code/reactjs/package.json](https://github.com/bradvin/social-share-urls/blob/master/code/reactjs/package.json)
* [/code/reactjs/public/index.html](https://github.com/bradvin/social-share-urls/blob/master/code/reactjs/public/index.html)
* [/code/reactjs/src/SocialShareMedia.js](https://github.com/bradvin/social-share-urls/blob/master/code/reactjs/src/SocialShareMedia.js)
* [/code/reactjs/src/index.js](https://github.com/bradvin/social-share-urls/blob/master/code/reactjs/src/index.js)
* [/code/reactjs/src/styles.css](https://github.com/bradvin/social-share-urls/blob/master/code/reactjs/src/styles.css)

---

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

---

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

---

### C

`Online Demo` :

* [Emma Goldman : Anarchism, What it Really Stands For](https://www.revoltlib.com/anarchism/anarchism-what-it-really-stands-for/view.php#share)
* [EarthFluent.com : Learn Chinese Online](https://www.earthfluent.com/chinese/view.php?action=index#share)
* [List Keywords : Finding and Listing Your Keywords For You](http://www.listkeywords.com/)

`Code Sandbox` :

* [ideone.com](https://ideone.com/dNZTJJ)

`Sample Use` :

	int main(void) {
		SocialMedia sm = buildUrls();
	 
		for(int i = 0; i < SOCIALMEDIASERVICES; i++) {
			printf("%s", sm.urlsOrderedByPopularity[i]);
			printf(" : ");
			printf("%s", sm.urls[i]);
			printf("\n");
		}
	 
		return 0;
	}

`Library Files` :

* [/code/c/SocialMedia.c](https://github.com/bradvin/social-share-urls/blob/master/code/c/SocialMedia.c)

---

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

---

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
	  |socialmedia|
	    puts socialmedia + ' : ' + socialmediaurls[socialmedia]
	}

`Library Files` :

* [/code/ruby/SocialMedia.rb](https://github.com/bradvin/social-share-urls/blob/master/code/ruby/SocialMedia.rb)

---

### Perl

`Online Demo` :

* [Murray Bookchin : Society and Ecology](https://www.revoltlib.com/anarchism/society-and-ecology/view.php#share)
* [EarthFluent.com : Learn Russian Online](https://www.earthfluent.com/russian/view.php?action=index#share)
* [Remove Spacing : Removing Spaces and Spacing from Your Text](http://www.removespacing.com/)

`Code Sandbox` :

* [ideone.com](https://ideone.com/rnq9Wg)

`Sample Use` :

	my @social_media_names = @{GetSocialMediaSites_WithShareLinks_OrderedByPopularity() || []};
	my $social_media_urls = GetSocialMediaSiteLinks_WithShareLinks({
			url=>'https://www.earthfluent.com/',
			title=>'EarthFluent',
	});
	 
	foreach my $social_media_name(@social_media_names) {
		my $social_media_url = $social_media_urls->{$social_media_name};
	 
		print($social_media_name . ' : ' . $social_media_url . "\n\n");
	}

`Library Files` :

* [/code/perl/social-share-media.pl](https://github.com/bradvin/social-share-urls/blob/master/code/perl/social-share-media.pl)

---

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

---

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

---

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
