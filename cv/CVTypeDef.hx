package cv;
import datetime.DateTime;
typedef CV = {
    var basics: Basic;
    var profiles: Array<Profile>;
    var work: Array<Work>;
    var volunteer: Array<Volunteer>;
    var education: Array<Education>;
    var awards: Array<Award>;
    var publications: Array<Publication>;
    var skills: Array<Skill>;
    var languages: Array<Language>;
    var interests: Array<Interest>;
    var references: Array<Reference>;
    var projects: Array<Project>;
    var meta: Meta;
}
typedef Basic = {
    var name: String;
    var label: String;
    var image: String;
    var email: String;
    var phone: String;
    var url: Url;
    var summary: String;
    var location: Location;
}
typedef Location = {
    var address: String;
    var postcode: String;
    var city: String;
    var countryCode: String;
    var region: String;
}
// Twitter, Github, Facebook.
typedef Profile = {
    var network: String;
    var username: String;
    var url: Url;
}
typedef Work = {
    var name: String;
    var description: String;
    var position: String;
    var url: Url;
    var startDate: DateTime;
    var endDate: DateTime;
    var summary: String;
    var highlights: Array<String>;
}
typedef Volunteer = {
    var organization: String;
    var position: String;
    var url: Url;
    var startDate: DateTime;
    var endDate: DateTime;
    var summary: String;
    var highlights: Array<String>;
}
typedef Education = {
    var institution: String;
    var area: String;
    var studyType: DateTime;
    var startDate: DateTime;
    var endDate: String;
    var gpa: String; //?
    var courses: Array<String>;
}
typedef Award = {
    var title: String;
    var date: DateTime;
    var awarder: String;
    var summary: String;
}
typedef Publication = {
    var name: String;
    var publisher: String;
    var releaseDate: DateTime;
    var url: String;
    var summary: String;
}
typedef Skill = {
    var name: String;
    var level: String;
    var keywords: Array<String>;
}
typedef Language = {
    var language: String;
    var fluency: String;
}
typedef Interest = {
    var name: String;
    var keywords: Array<String>;
}
typedef Reference = {
    var name: String;
    var reference: String;
}
typedef Project = {
    var name: String;
    var description: String;
    var highlights: Array<String>; 
    var keywords: Array<String>;
    var startDate: DateTime;
    var endDate: DateTime;
    var url: Url;
    var roles: Array<String>;
    var entity: String;
    var type: String;
}
typedef Meta = {
    var canonical: String;
    var version: String;
    var lastModified: DateTime;
}
// TODO: use Abstract ..?
typedef Url = String;
