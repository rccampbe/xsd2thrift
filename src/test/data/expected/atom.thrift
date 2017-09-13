namespace * default

enum typeType
{
	typeType_html,
	typeType_text,
	typeType_xhtml,
}

struct UnspecifiedType
{
	1 : required string baseObjectType,
	2 : required binary object,
}

struct categoryType
{
	1 : optional UnspecifiedType base,
	2 : optional string lang,
	3 : optional string label,
	4 : optional UnspecifiedType scheme,
	5 : required string term,
}

struct contentType
{
	1 : optional UnspecifiedType base,
	2 : optional string lang,
	3 : optional string type,
	4 : optional UnspecifiedType src,
}

struct dateTimeType
{
	1 : optional i64 value,
	2 : optional UnspecifiedType base,
	3 : optional string lang,
}

struct generatorType
{
	1 : optional string value,
	2 : optional UnspecifiedType base,
	3 : optional string lang,
	4 : optional UnspecifiedType uri,
	5 : optional string version,
}

struct iconType
{
	1 : optional UnspecifiedType value,
	2 : optional UnspecifiedType base,
	3 : optional string lang,
}

struct idType
{
	1 : optional UnspecifiedType value,
	2 : optional UnspecifiedType base,
	3 : optional string lang,
}

struct linkType
{
	1 : optional UnspecifiedType base,
	2 : optional string lang,
	3 : optional i64 length,
	4 : required UnspecifiedType href,
	5 : optional string type,
	6 : optional string rel,
	7 : optional string title,
	8 : optional string hreflang,
}

struct logoType
{
	1 : optional UnspecifiedType value,
	2 : optional UnspecifiedType base,
	3 : optional string lang,
}

struct textType
{
	1 : optional UnspecifiedType base,
	2 : optional string lang,
	3 : optional typeType type,
}

struct uriType
{
	1 : optional UnspecifiedType value,
	2 : optional UnspecifiedType base,
	3 : optional string lang,
}

struct personType
{
	1 : optional string name,
	2 : optional uriType uri,
	3 : optional string email,
	4 : optional UnspecifiedType base,
	5 : optional string lang,
}

struct sourceType
{
	1 : optional list<personType> author,
	2 : optional list<categoryType> category,
	3 : optional list<personType> contributor,
	4 : optional generatorType generator,
	5 : optional iconType icon,
	6 : optional idType id,
	7 : optional list<linkType> link,
	8 : optional logoType logo,
	9 : optional textType rights,
	10 : optional textType subtitle,
	11 : optional textType title,
	12 : optional dateTimeType updated,
	13 : optional UnspecifiedType base,
	14 : optional string lang,
}

struct entryType
{
	1 : optional list<personType> author,
	2 : optional list<categoryType> category,
	3 : optional contentType content,
	4 : optional list<personType> contributor,
	5 : optional idType id,
	6 : optional list<linkType> link,
	7 : optional dateTimeType published,
	8 : optional textType rights,
	9 : optional textType source,
	10 : optional textType summary,
	11 : optional textType title,
	12 : optional dateTimeType updated,
	13 : optional UnspecifiedType base,
	14 : optional string lang,
}

struct feedType
{
	1 : optional list<personType> author,
	2 : optional list<categoryType> category,
	3 : optional list<personType> contributor,
	4 : optional generatorType generator,
	5 : optional iconType icon,
	6 : optional idType id,
	7 : optional list<linkType> link,
	8 : optional logoType logo,
	9 : optional textType rights,
	10 : optional textType subtitle,
	11 : optional textType title,
	12 : optional dateTimeType updated,
	13 : optional list<entryType> entry,
	14 : optional UnspecifiedType base,
	15 : optional string lang,
}

