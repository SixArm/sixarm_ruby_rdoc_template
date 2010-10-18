module RDoc
module Page

FONTS = '"Bitstream Vera Sans", Verdana, Arial, Helvetica, sans-serif'

STYLE = %{


/**** HTML Standard Elements ****/

body, table, tr, td {
 margin: 0;
 padding: 0;
 font-family: %fonts%; 
 color: #000040;
}

h1 {
  padding: 0.5em;
  border: 1px solid black;
  font-size: large;
  font-weight: bold;
  color: #FFF;
  background: #00a;
}

.description h2, .sourcecode h2 {
  padding: 0.3em 0.5em 0.4em 0.8em;
  border: 1px dotted #448;
  margin-top: 1.3em;
  margin-bottom: 0;
  font-weight: normal;
  font-size: 1em;
  background: #ddf;
}

h2.methodname {
 padding-top: 2em;
 border-bottom: 1px solid black;
}

h3 {
}

h4, h5, h6 {
  padding: 0.2em 1em 0.2em 1em;
  color: #000;
}

li {
  margin-bottom: 0.4em;
}



/**** Major DIV Sections Generated By RDoc ****/

.description {
}

.section {
}

.diagram {
}

.requires {
}

.methods {
}

.attributes {
}

.classlist {
}



/****/


.indent {
 padding-left: 30px;
}

.attr-rw { font-size: xx-small; color: #444488 }

.title-row {
 background: #005;
 color: #FFF;
}

.big-title-font { 
  color: white;
  font-weight: bold;
  font-family: %fonts%; 
  font-size: large; 
  padding: 0.8em;
  padding-left: 1em;
}

.small-title-font {
 color: white;
 font-size: 90%;
}

.aqua {
 color: black 
}

.method-name, .attr-name {
 font-family: font-family: %fonts%; 
 font-weight: bold;
 font-size: small;
 margin-left: 20px;
 color: #000033;
}

.tablesubtitle, .tablesubsubtitle {
  width: 100%;
  margin-top: 3.5em;
  margin-bottom: 0.5em;
  font-size: large;
  font-weight: bold;
  color: white;
  padding: 0.2em 0.8em 0.2em 0.8em;
  border: 1px solid black;
  background: #00a;
}

.name-list {
  margin-left: 5px;
  margin-bottom: 2ex;
  line-height: 105%;
}

.description {
  margin-bottom: 2px;
  line-height: 105%;

}
.description pre, .sourcecode pre {
  padding: 0.9em 0.3em 0.9em 0.3em;
  border: 1px dotted black;
  background: #FFE;
  margin-bottom: 1.5em;
}

.description_sourcecode {
  margin-left: 5px;
  margin-bottom: 2px;
  line-height: 105%;
}

.source {
  padding: 0.9em 0.3em 0.9em 1em;
  border: 1px dotted black;
  background: #FFE;
  margin-bottom: 1.5em;
}

.methodtitle {
  font-size: large;
  font-weight: bold;
  text-decoration: none;
  color: #000033;
  background-color: white; 
  padding-bottom: 0.4em;
  border-bottom: 1px solid black;
  margin-bottom: 0.3em;
}

.srclink {
  font-size: small;
  font-weight: bold;
  text-decoration: none;
  color: #0000DD;
  background-color: white;
}

.paramsig {
   font-size: small;
}

.srcbut { float: right }

.methodtable {
  margin-top: 2em;
  padding-top: 1em;
 }

}


############################################################################


BODY = %{
<html><head>
  <title>%title%</title>
  <meta http-equiv="Content-Type" content="text/html; charset=%charset%">
  <link rel="stylesheet" href="%style_url%" type="text/css" media="screen" />
  <script type="text/javascript" language="JavaScript">
  <!--
  function popCode(url) {
    parent.frames.source.location = url
  }
  //-->
  </script>
</head>
<body bgcolor="white">

!INCLUDE!  <!-- banner header -->

IF:diagram
<div clas="diagram">
<table width="100%"><tr><td align="center">
%diagram%
</td></tr></table>
</div>
ENDIF:diagram

IF:description
<div class="indent">
<div class="description">
%description%
</div>
</div>
ENDIF:description

IF:requires
<div class="indent">
<div class="requires">
<table cellpadding="5" width="100%">
<tr><td class="tablesubtitle">Required files</td></tr>
</table><br />
<div class="name-list">
START:requires
HREF:aref:name:
END:requires
</div>
</div>
</div>
ENDIF:requires


IF:methods
<div class="indent">
<div class="methods">
<table class="tablemethods" cellpadding="5" width="100%">
<tr><td class="tablesubtitle">Methods</td></tr>
</table>
<div class="name-list">
<ul>
START:methods
<li>HREF:aref:name:
END:methods
</ul>
</div>
</div>
</div>
ENDIF:methods


START:sections
    <div class="indent">
    <div id="section">
IF:sectitle
      <h2 class="section-title"><a name="%secsequence%">%sectitle%</a></h2>
IF:seccomment
      <div class="section-comment">
        %seccomment%
      </div>      
ENDIF:seccomment
ENDIF:sectitle

IF:attributes
<div class="attributes indent">
<table cellpadding="5" width="100%">
<tr><td class="tablesubtitle">Attributes</td></tr>
</table><br />
<table cellspacing="5">
START:attributes
     <tr valign="top">
IF:rw
       <td align="center" class="attr-rw">&nbsp;[%rw%]&nbsp;</td>
ENDIF:rw
IFNOT:rw
       <td></td>
ENDIF:rw
       <td class="attr-name">%name%</td>
       <td>%a_desc%</td>
     </tr>
END:attributes
</table>
</div>
ENDIF:attributes

IF:classlist
<div class="indent>
<div class="classlist">
<table cellpadding="5" width="100%">
<tr><td class="tablesubtitle">Classes and Modules</td></tr>
</table><br />
%classlist%<br />
</div>
</div>
ENDIF:classlist

  !INCLUDE!  <!-- method descriptions -->

END:sections

</div><!-- indent -->
</body>
</html>
}

###############################################################################

FILE_PAGE = <<_FILE_PAGE_

<table width="100%">
 <tr class="title-row">
 <td><table width="100%"><tr>
   <td class="big-title-font" colspan="2"><font size="-3"><b>File</b><br /></font>%short_name%</td>
   <td align="right"><table cellspacing="0" cellpadding="2">
         <tr>
           <td  class="small-title-font">Path:</td>
           <td class="small-title-font">%full_path%
IF:cvsurl
				&nbsp;(<a href="%cvsurl%"><acronym title="Concurrent Versioning System">CVS</acronym></a>)
ENDIF:cvsurl
           </td>
         </tr>
         <tr>
           <td class="small-title-font">Modified:</td>
           <td class="small-title-font">%dtm_modified%</td>
         </tr>
        </table>
    </td></tr></table></td>
  </tr>
</table><br />
_FILE_PAGE_

###################################################################

CLASS_PAGE = %{
<table width="100%" border="0" cellspacing="0">
 <tr class="title-row">
 <td class="big-title-font">
   <font size="-3"><b>%classmod%</b><br /></font>%full_name%
 </td>
 <td align="right">
   <table cellspacing="0" cellpadding="2">
     <tr valign="top">
      <td class="small-title-font">In:</td>
      <td class="small-title-font">
START:infiles
HREF:full_path_url:full_path:
IF:cvsurl
&nbsp;(<a href="%cvsurl%"><acronym title="Concurrent Versioning System">CVS</acronym></a>)
ENDIF:cvsurl
END:infiles
      </td>
     </tr>
IF:parent
     <tr>
      <td class="small-title-font">Parent:</td>
      <td class="small-title-font">
IF:par_url
        <a href="%par_url%" class="cyan">
ENDIF:par_url
%parent%
IF:par_url
         </a>
ENDIF:par_url
      </td>
     </tr>
ENDIF:parent
   </table>
  </td>
  </tr>
</table><br />
}

###################################################################

METHOD_LIST = %{
IF:includes
<div class="tablesubsubtitle">Included modules</div>
<div class="name-list">
START:includes
    <span class="method-name">HREF:aref:name:</span>
END:includes
</div>
ENDIF:includes

IF:method_list
<!--IF:method_list-->
<div class="method_list">
START:method_list
<!--START:method_list-->
IF:methods
<!--IF:methods -->
<h2>%type% %category% methods</h2>
<div class="methods">
START:methods
<!--START:methods-->
<h2 class="methodname"><a name="%aref%">

IF:callseq
<b>%callseq%</b>
ENDIF:callseq
IFNOT:callseq
 <b>%name%</b>%params%
ENDIF:callseq
</a>
IF:codeurl
<a href="%codeurl%" target="source" class="srclink">src</a>
ENDIF:codeurl
</h2>

IF:m_desc
<!--IF:m_desc-->
<div class="description">
%m_desc%
</div><!--description-->
<!--ENDIF:m_desc-->
ENDIF:m_desc
IF:aka
<!--IF:aka-->
<div class="aka">
This method is also aliased as
START:aka
<a href="%aref%">%name%</a>
END:aka
</div><!--aka-->
<!--ENDIF:aka-->
ENDIF:aka
IF:sourcecode
<!--IF:sourcecode -->
<div class="sourcecode">
<h2>Source Code</h2>
<pre>
%sourcecode%
</pre>
</div><!--sourcecode-->
<!-- ENDIF:sourcecode-->
ENDIF:sourcecode
<!-- END methods -->
END:methods
</div><!--methods-->
<!--ENDIF:methods-->
ENDIF:methods
</div><!-- END method_list -->
END:method_list
</div><!-- ENDIF method_list -->
ENDIF:method_list
}

=begin
=end

########################## Source code ##########################

SRC_PAGE = %{
<html>
<head><title>%title%</title>
<meta http-equiv="Content-Type" content="text/html; charset=%charset%">
<style type="text/css">
.ruby-comment    { color: green; font-style: italic }
.ruby-constant   { color: #4433aa; font-weight: bold; }
.ruby-identifier { color: #222222;  }
.ruby-ivar       { color: #2233dd; }
.ruby-keyword    { color: #3333FF; font-weight: bold }
.ruby-node       { color: #777777; }
.ruby-operator   { color: #111111;  }
.ruby-regexp     { color: #662222; }
.ruby-value      { color: #662222; font-style: italic }
  .kw { color: #3333FF; font-weight: bold }
  .cmt { color: green; font-style: italic }
  .str { color: #662222; font-style: italic }
  .re  { color: #662222; }
</style>
</head>
<body bgcolor="white">
<pre>%code%</pre>
</body>
</html>
}

########################## Index ################################

FR_INDEX_BODY = %{
!INCLUDE!
}

FILE_INDEX = %{
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=%charset%">
<style>
<!--

body {
 background-color: #f6f6f6;
 font-family: #{FONTS}; 
 font-size: 90%;
 line-height: 120%; 
 color: #000040;
 margin: 0;
}

div.banner {
  background: #005;
  font-weight: bold;
  color: white;
  padding: 0.6em;
  padding-left: 1.0em;
  margin-bottom: 0.5em;
  width: 95%;
}

a {
  margin-left: 1em;
  color: #007;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

-->
</style>
<base target="docwin">
</head>
<body>
<div class="banner">%list_title%</div>
START:entries
<a href="%href%">%name%</a><br />
END:entries
</body></html>
}

CLASS_INDEX = FILE_INDEX
METHOD_INDEX = FILE_INDEX

INDEX = %{
<html>
<head>
  <title>%title%</title>
  <meta http-equiv="Content-Type" content="text/html; charset=%charset%">
</head>

<frameset cols="20%,*">
    <frameset rows="15%,35%,50%">
        <frame src="fr_file_index.html"   title="Files" name="Files">
        <frame src="fr_class_index.html"  name="Classes">
        <frame src="fr_method_index.html" name="Methods">
    </frameset>
IF:inline_source
      <frame  src="%initial_page%" name="docwin">
ENDIF:inline_source
IFNOT:inline_source
    <frameset rows="80%,20%">
      <frame  src="%initial_page%" name="docwin">
      <frame  src="blank.html" name="source">
    </frameset>
ENDIF:inline_source
    <noframes>
          <body bgcolor="white">
            Click <a href="html/index.html">here</a> for a non-frames
            version of this page.
          </body>
    </noframes>
</frameset>

</html>
}

# and a blank page to use as a target
BLANK = %{
<html><body bgcolor="white"></body></html>
}

def write_extra_pages
  template = TemplatePage.new(BLANK)
  File.open("blank.html", "w") { |f| template.write_html_on(f, {}) }
end

end
end
