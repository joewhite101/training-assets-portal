INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','langs','Definition of the system languages','<?xml version="1.0" encoding="UTF-8"?>
<Langs>
	<Lang>
		<code>it</code>
		<descr>Italiano</descr>
	</Lang>
	<Lang>
		<code>en</code>
		<descr>English</descr>
		<default>true</default>
	</Lang>
</Langs>
');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','params','Configuration params.','<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">classic</Param>
	<Param name="hypertextEditor">none</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<Param name="firstTimeMessages">false</Param>
	<Param name="baseUrl">request</Param>
	<Param name="baseUrlContext">true</Param>
	<Param name="useJsessionId">false</Param>
	<Param name="gravatarIntegrationEnabled">false</Param>
	<Param name="editEmptyFragmentEnabled">false</Param>
	<Param name="argon2">true</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">assetshome</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<FeaturesOnDemand>
		<Param name="groupsOnDemand">true</Param>
		<Param name="categoriesOnDemand">true</Param>
		<Param name="contentTypesOnDemand">true</Param>
		<Param name="contentModelsOnDemand">true</Param>
		<Param name="apisOnDemand">true</Param>
		<Param name="resourceArchivesOnDemand">true</Param>
	</FeaturesOnDemand>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>
	</ExtendendPrivacyModule>
	<ExtraParams>
		<Param name="page_preview_hash">VfBA5Wp0tHRX9CY5NcEA</Param>
	</ExtraParams>
</Params>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','userProfileTypes','User Profile Types Definitions','<?xml version="1.0" encoding="UTF-8"?>
<profiletypes>
	<profiletype typecode="PFL" typedescr="Default user profile">
		<attributes>
			<attribute name="fullname" attributetype="Monotext" description="Full Name" searchable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>userprofile:fullname</role>
				</roles>
			</attribute>
			<attribute name="email" attributetype="Monotext" description="Email" searchable="true">
				<validations>
					<required>true</required>
					<regexp><![CDATA[.+@.+.[a-z]+]]></regexp>
				</validations>
				<roles>
					<role>userprofile:email</role>
				</roles>
			</attribute>
		</attributes>
	</profiletype>
</profiletypes>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataTypeDefinitions','Definition of the Type Types','<datatypes />');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataobjectsubdir','Name of the sub-directory containing dataobject indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','contentTypes','Definition of the Content Types','<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
<contenttype typecode="AST" typedescr="Everis imported asset definition" viewpage="**NULL**" listmodel="**NULL**" defaultmodel="**NULL**">
		<attributes>
			<attribute name="ID" attributetype="Monotext" description="ID" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="astname" attributetype="Monotext" description="Asset name" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="astsum" attributetype="Monotext" description="Asset summary" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="astvp" attributetype="Monotext" description="Asset Value Proposition" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="asttech" attributetype="Monotext" description="Asset techniacl description" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="asttype" attributetype="Enumerator" description="Asset Type" searchable="true" indexingtype="TEXT" separator=",">
				<validations>
					<required>true</required>
				</validations>
				<![CDATA[Herramienta, Acelerador]]>
			</attribute>
			<list name="astkey" attributetype="Monolist" description="Asset keywords">
				<nestedtype>
					<attribute name="astkey" attributetype="Enumerator" separator=","><![CDATA[keyword1,keyword2]]></attribute>
				</nestedtype>
			</list>
			<attribute name="astsoc" attributetype="Enumerator" description="Asset Society" searchable="true" indexingtype="TEXT" separator=",">
				<validations>
					<required>true</required>
				</validations>
				<![CDATA[Everis Argentina, Everis Italia, Everis Portugal, Everis Andorra]]>
			</attribute>
			<attribute name="astanun" attributetype="Enumerator" description="Asset Analytic Unit" searchable="true" indexingtype="TEXT" separator=",">
				<validations>
					<required>true</required>
				</validations>
				<![CDATA[Aerospacial,Aerospacial Chile, Adjuste Europa, Adjust Grupo, ,Adjuste Latam]]>
			</attribute>
			<attribute name="astun" attributetype="Enumerator" description="Asset UN" searchable="true" indexingtype="TEXT" separator=",">
				<validations>
					<required>true</required>
				</validations>
				<![CDATA[Aerospacial, Adjuste,BPO,BPXNET,Business]]>
			</attribute>
			<attribute name="astbdu" attributetype="Enumerator" description="Asset Business Development Unit" searchable="true" indexingtype="TEXT" separator=",">
				<validations>
					<required>true</required>
				</validations>
				<![CDATA[Alliances, Banking,BD Aeroepacial,BD Banking,BD Big Data,BD BPO]]>
			</attribute>
			<list name="astapsec" attributetype="Monolist" description="Asset Application Sector">
				<validations>
					<required>true</required>
				</validations>
				<nestedtype>
					<attribute name="astapsec" attributetype="Enumerator" indexingtype="TEXT" separator=","><![CDATA[Banking,Health,Industry,Insurance]]></attribute>
				</nestedtype>
			</list>
			<attribute name="astdate" attributetype="Date" description="Asset Pubblication Date" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="astlasuse" attributetype="Date" description="Asset Last Use date" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="astemail" attributetype="Monotext" description="Asset Sector Contact email" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="astadcon" attributetype="Monotext" description="Asset Admin Contact email" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="astteccon" attributetype="Monotext" description="Asset Technical Contact" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<list name="astrealast" attributetype="List" description="Asset''s Related Assets">
				<validations>
					<required>true</required>
				</validations>
				<nestedtype>
					<attribute name="astrealast" attributetype="Enumerator" separator=","><![CDATA[TSF+,Entando,Altemista]]></attribute>
				</nestedtype>
			</list>
			<list name="astreltech" attributetype="List" description="Asset''s Related Technologies">
				<nestedtype>
					<attribute name="astreltech" attributetype="Enumerator" separator=","><![CDATA[Java,.NET,BBDD]]></attribute>
				</nestedtype>
			</list>
			<attribute name="astavl" attributetype="Enumerator" description="Asset Availability" searchable="true" indexingtype="TEXT" separator=",">
				<validations>
					<required>true</required>
				</validations>
				<![CDATA[Production,Development]]>
			</attribute>
			<attribute name="astval" attributetype="Number" description="Valoracion" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
					<rangestart>0</rangestart>
					<rangeend>5</rangeend>
				</validations>
			</attribute>
			<attribute name="astdash" attributetype="Link" description="Asset Dashboard URL link" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="asthwto" attributetype="Composite" description="Asset How To information">
				<validations>
					<required>true</required>
				</validations>
				<attributes>
					<attribute name="asthtatch" attributetype="Attach" description="Asset How To information attachment" />
					<attribute name="asthtlnk" attributetype="Link" description="Asset How To information URL" indexingtype="TEXT" />
				</attributes>
			</attribute>
		</attributes>
	</contenttype>
	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="**NULL**" listmodel="10011" defaultmodel="10001">
		<attributes>
			<attribute name="Title" attributetype="Text" searchable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
</contenttypes>

');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','imageDimensions','Definition of the resized image dimensions','<Dimensions>
	<Dimension>
		<id>1</id>
		<dimx>90</dimx>
		<dimy>90</dimy>
	</Dimension>
	<Dimension>
		<id>2</id>
		<dimx>130</dimx>
		<dimy>130</dimy>
	</Dimension>
	<Dimension>
		<id>3</id>
		<dimx>150</dimx>
		<dimy>150</dimy>
	</Dimension>
</Dimensions>
');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','subIndexDir','Name of the sub-directory containing content indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpkiebpm_config','PAM service configuration','<?xml version="1.0" encoding="UTF-8"?>
<kiaBpmConfigFactory>
   <kieBpmConfigeMap>
      <entry>
         <key>1</key>
         <value>
            <active>true</active>
            <id>1</id>
            <name>default</name>
            <username>krisv</username>
            <password>krisv</password>
            <hostname>localhost</hostname>
            <schema>http</schema>
            <port>8080</port>
            <webapp>kie-server</webapp>
         </value>
      </entry>
   </kieBpmConfigeMap>
</kiaBpmConfigFactory>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','entandoComponentsReport','The component installation report','<?xml version="1.0" encoding="UTF-8"?>
<reports status="INCOMPLETE">
	<creation>2018-07-13 08:38:09</creation>
	<lastupdate>2018-07-13 10:06:37</lastupdate>
	<components>
		<component code="entandoCore" date="2018-07-13 08:38:09" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="sysconfig" />
					<table name="categories" />
					<table name="localstrings" />
					<table name="pagemodels" />
					<table name="pages" />
					<table name="pages_metadata_online" />
					<table name="pages_metadata_draft" />
					<table name="widgetcatalog" />
					<table name="guifragment" />
					<table name="widgetconfig" />
					<table name="widgetconfig_draft" />
					<table name="uniquekeys" />
				</datasource>
				<datasource name="servDataSource" status="OK">
					<table name="authgroups" />
					<table name="authpermissions" />
					<table name="authroles" />
					<table name="authrolepermissions" />
					<table name="authusers" />
					<table name="authusergrouprole" />
					<table name="api_oauth_consumers" />
					<table name="api_oauth_tokens" />
					<table name="apicatalog_methods" />
					<table name="apicatalog_services" />
					<table name="authuserprofiles" />
					<table name="authuserprofilesearch" />
					<table name="authuserprofileattrroles" />
					<table name="actionlogrecords" />
					<table name="actionlogrelations" />
					<table name="actionloglikerecords" />
					<table name="actionlogcommentrecords" />
					<table name="dataobjectmodels" />
					<table name="dataobjects" />
					<table name="dataobjectrelations" />
					<table name="dataobjectsearch" />
					<table name="dataobjectattributeroles" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="OK" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jprestapi" date="2018-07-13 08:38:15" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jacms" date="2018-07-13 08:38:15" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="OK">
					<table name="contentmodels" />
					<table name="contents" />
					<table name="resources" />
					<table name="resourcerelations" />
					<table name="contentrelations" />
					<table name="contentsearch" />
					<table name="contentattributeroles" />
					<table name="workcontentrelations" />
					<table name="workcontentsearch" />
					<table name="workcontentattributeroles" />
				</datasource>
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-content-generic" date="2018-07-13 08:38:17" status="INCOMPLETE">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="INCOMPLETE" />
		</component>
		<component code="entando-misc-light" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-page-light" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="OK" />
		</component>
		<component code="entando-widget-login_form_inspinia" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-language_choose_inspinia" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-search_result_inspinia" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-inspinia" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-page-inspinia" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="OK" />
		</component>
		<component code="entando-admin-console" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="authusershortcuts" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-portal-ui" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-app-view-cms-default" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpinfinispan" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-navigation_bar_inspinia" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-3-step-mortgage" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpkiebpm" date="2018-07-13 08:38:17" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="OK">
					<table name="jpkiebpm_kieformoverride" />
					<table name="jpkiebpm_widgetinfo" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="OK" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-widget-search_form_inspinia" date="2018-07-13 08:38:18" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-jquery" date="2018-07-13 10:06:35" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-html5-essentials" date="2018-07-13 10:06:35" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-misc-bootstrap" date="2018-07-13 10:06:35" status="OK">
			<schema status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
	</components>
</reports>

');
