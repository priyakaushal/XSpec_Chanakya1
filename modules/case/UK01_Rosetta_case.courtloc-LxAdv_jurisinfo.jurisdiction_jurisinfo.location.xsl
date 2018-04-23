<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:dita="http://dita.oasis-open.org/architecture/2005/" 
	xmlns:case="http://www.lexis-nexis.com/glp/case"
	xmlns:jurisinfo="http://www.lexisnexis.com/xmlschemas/content/legal/jurisdiction-info/1/"
	xmlns:lnf="urn:x-lexisnexis:conversion:global:functions:1"
	xmlns:location="http://www.lexisnexis.com/xmlschemas/content/shared/location/1/"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	version="2.0" exclude-result-prefixes="dita case lnf xd xs">

	<dita:topic xmlns="http://dita.oasis-open.org/architecture/2005/"
		id="UK01_Rosetta_case.courtloc-LxAdv_jurisinfo.jurisdiction_jurisinfo.location">
		<title>case:courtloc <lnpid>id-UK01-27020</lnpid></title>
		<body>
			<section
				conref="../../common_caselaw/conref_content/Rosetta_case.courtloc-LxAdv_jurisinfo.jurisdiction_jurisinfo.location.dita#Rosetta_case.courtloc-LxAdv_jurisinfo.jurisdiction_jurisinfo.location/mapping"/>
			<note>When <sourcexml>case:courtloc</sourcexml> is having <sourcexml>emph</sourcexml> as a child then conversion
				should suppress <sourcexml>emph</sourcexml> element only and retain its text in target as per mapping.</note>
			<p>To identify proper City and Country names, please refer below table:</p>
			<table>
				<tgroup cols="6">

					<thead>
						<row>
							<entry>City Name</entry>
							<entry>City Name</entry>
							<entry>City Name</entry>
							<entry>City Name</entry>
							<entry>City Name</entry>
							<entry>Country Name</entry>
						</row>
					</thead>
					<tbody>
						<row>
							<entry>Aberdeen</entry>
							<entry>Chichester</entry>
							<entry>Kingston-upon-Hull</entry>
							<entry>Rhyl</entry>
							<entry>Willesden</entry>
							<entry>England</entry>
						</row>
						<row>
							<entry>Aberystwyth</entry>
							<entry>Chippenham and Trowbridge</entry>
							<entry>Kingston-upon-Thames</entry>
							<entry>Ripon</entry>
							<entry>Winchester</entry>
							<entry>Wales</entry>
						</row>
						<row>
							<entry>Accrington</entry>
							<entry>City of London</entry>
							<entry>Knutsford</entry>
							<entry>Romford</entry>
							<entry>Winchester </entry>
							<entry>Scotland</entry>
						</row>
						<row>
							<entry>Aldershot and Farnham</entry>
							<entry>Clerkenwell and Shoreditch</entry>
							<entry>Lambeth</entry>
							<entry>Rotherham</entry>
							<entry>Wolverhampton</entry>
							<entry>Northern Ireland</entry>
						</row>
						<row>
							<entry>Altrincham</entry>
							<entry>Colchester</entry>
							<entry>Lancaster</entry>
							<entry>Salford</entry>
							<entry>Wood Green</entry>
							<entry>Republic of Ireland</entry>
						</row>
						<row>
							<entry>Armagh</entry>
							<entry>Conwy and Colwyn</entry>
							<entry>Leeds</entry>
							<entry>Salisbury</entry>
							<entry>Woolwich</entry>
							<entry/>
						</row>
						<row>
							<entry>Aylesbury</entry>
							<entry>Coventry</entry>
							<entry>Leicester</entry>
							<entry>Scarborough</entry>
							<entry>Woolwich </entry>
							<entry/>
						</row>
						<row>
							<entry>Banbury</entry>
							<entry>Crewe</entry>
							<entry>Lewes</entry>
							<entry>Scunthorpe</entry>
							<entry>Worcester</entry>
							<entry/>
						</row>
						<row>
							<entry>Bangor</entry>
							<entry>Croydon</entry>
							<entry>Lichfield</entry>
							<entry>Sheffield</entry>
							<entry>Worksop</entry>
							<entry/>
						</row>
						<row>
							<entry>Barnet</entry>
							<entry>Darlington</entry>
							<entry>Lincoln</entry>
							<entry>Shrewsbury</entry>
							<entry>Worthing</entry>
							<entry/>
						</row>
						<row>
							<entry>Barnsley</entry>
							<entry>Dartford</entry>
							<entry>Lisburn</entry>
							<entry>Skipton</entry>
							<entry>Wrexham</entry>
							<entry/>
						</row>
						<row>
							<entry>Barnstaple</entry>
							<entry>Derby</entry>
							<entry>Liverpool</entry>
							<entry>Slough</entry>
							<entry>Yeovil</entry>
							<entry/>
						</row>
						<row>
							<entry>Barrow-in-Furness</entry>
							<entry>Dolgellau</entry>
							<entry>Llanelli</entry>
							<entry>Snaresbrook</entry>
							<entry>York</entry>
							<entry/>
						</row>
						<row>
							<entry>Basildon</entry>
							<entry>Doncaster</entry>
							<entry>Llangefni</entry>
							<entry>South Shields</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Basingstoke</entry>
							<entry>Dorchester</entry>
							<entry>London</entry>
							<entry>Southampton</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bath</entry>
							<entry>Dudley</entry>
							<entry>Londonderry</entry>
							<entry>Southend</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bedford</entry>
							<entry>Dundee</entry>
							<entry>Lowestoft</entry>
							<entry>Southwark</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Belfast</entry>
							<entry>Durham</entry>
							<entry>Luton</entry>
							<entry>St Albans</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Birkenhead</entry>
							<entry>Eastbourne</entry>
							<entry>Macclesfield</entry>
							<entry>St Davids</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Birmingham</entry>
							<entry>Edinburgh</entry>
							<entry>Maidstone</entry>
							<entry>St Helens</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Blackburn</entry>
							<entry>Edmonton</entry>
							<entry>Manchester</entry>
							<entry>Stafford</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Blackfriars</entry>
							<entry>Ely</entry>
							<entry>Mansfield</entry>
							<entry>Staines</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Blackpool</entry>
							<entry>Exeter</entry>
							<entry>Medway</entry>
							<entry>Stirling</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Blackwood</entry>
							<entry>Gateshead</entry>
							<entry>Merthyr Tydfil</entry>
							<entry>Stockport</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bodmin</entry>
							<entry>Glasgow</entry>
							<entry>Middlesbrough</entry>
							<entry>Stoke-on-Trent</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bolton</entry>
							<entry>Gloucester</entry>
							<entry>Milton Keynes</entry>
							<entry>Sunderland</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Boston</entry>
							<entry>Gloucester and Cheltenham</entry>
							<entry>Mold</entry>
							<entry>Swansea</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bournemouth</entry>
							<entry>Great Grimsby</entry>
							<entry>Morpeth and Berwick</entry>
							<entry>Swindon</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bow</entry>
							<entry>Guildford</entry>
							<entry>Neath and Port Talbot</entry>
							<entry>Tameside</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bradford</entry>
							<entry>Halifax</entry>
							<entry>Newcastle upon Tyne</entry>
							<entry>Taunton</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Brecon</entry>
							<entry>Hammersmith</entry>
							<entry>Newport</entry>
							<entry>Teesside</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Brentford</entry>
							<entry>Harrogate</entry>
							<entry>Newport (Gwent)</entry>
							<entry>Telford</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bridgend</entry>
							<entry>Harrow</entry>
							<entry>Newport (Isle of Wight)</entry>
							<entry>Thanet</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Brighton</entry>
							<entry>Hartlepool</entry>
							<entry>Newport (South Wales)</entry>
							<entry>Torquay and Newton Abbot</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Brighton and Hove</entry>
							<entry>Hastings</entry>
							<entry>Newry</entry>
							<entry>Truro</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bristol</entry>
							<entry>Haverfordwest</entry>
							<entry>North Shields</entry>
							<entry>Tunbridge Wells</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bromley</entry>
							<entry>Hereford</entry>
							<entry>Northampton</entry>
							<entry>Uxbridge</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Burnley</entry>
							<entry>Hertford</entry>
							<entry>Northampton </entry>
							<entry>Wakefield</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bury</entry>
							<entry>High Wycombe</entry>
							<entry>Norwich</entry>
							<entry>Walsall</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Bury St Edmunds</entry>
							<entry>Horsham</entry>
							<entry>Nottingham</entry>
							<entry>Wandsworth</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Buxton</entry>
							<entry>Huddersfield</entry>
							<entry>Nuneaton</entry>
							<entry>Warrington</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Caernarfon</entry>
							<entry>Inner London</entry>
							<entry>Oldham</entry>
							<entry>Warwick</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Cambridge</entry>
							<entry>Inverness</entry>
							<entry>Oxford</entry>
							<entry>Watford</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Canterbury</entry>
							<entry>Ipswich</entry>
							<entry>Peterborough</entry>
							<entry>Wells</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Cardiff</entry>
							<entry>Isle of Wight</entry>
							<entry>Plymouth</entry>
							<entry>Welshpool</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Carlisle</entry>
							<entry>Isleworth</entry>
							<entry>Pontypridd</entry>
							<entry>West Cumbria</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Carmarthen</entry>
							<entry>Kendal</entry>
							<entry>Portsmouth</entry>
							<entry>Westminster</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Central London</entry>
							<entry>Kettering</entry>
							<entry>Preston</entry>
							<entry>Weston-super-Mare</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Chester</entry>
							<entry>King's Lynn</entry>
							<entry>Reading</entry>
							<entry>Weymouth</entry>
							<entry/>
							<entry/>
						</row>
						<row>
							<entry>Chesterfield</entry>
							<entry>Kingston upon Hull</entry>
							<entry>Reigate</entry>
							<entry>Wigan</entry>
							<entry/>
							<entry/>
						</row>
					</tbody>

				</tgroup>
			</table>
			<example>
				<codeblock> &lt;case:courtinfo&gt; &lt;case:courtname&gt;TRIBUNAL CENTRE: LONDON&lt;/case:courtname&gt;
					&lt;case:courtcode&gt;255&lt;/case:courtcode&gt; &lt;case:courtloc&gt;LOCATION: SITTING IN PUBLIC IN
					BRISTOL&lt;/case:courtloc&gt; &lt;/case:courtinfo&gt; </codeblock>
				<b>becomes</b>
				<codeblock> &lt;jurisinfo:courtinfo&gt; &lt;jurisinfo:courtname&gt;TRIBUNAL CENTRE:
					LONDON&lt;/jurisinfo:courtname&gt; &lt;jurisinfo:jurisdiction&gt; &lt;jurisinfo:location&gt;
					&lt;location:city&gt;LOCATION: SITTING IN PUBLIC IN BRISTOL&lt;/location:city&gt; &lt;/jurisinfo:location&gt;
					&lt;/jurisinfo:jurisdiction&gt; &lt;/jurisinfo:courtinfo&gt; </codeblock>
			</example>
			<!--<section
            conref="../../common_caselaw/conref_content/Rosetta_case.courtloc-LxAdv_jurisinfo.jurisdiction_jurisinfo.location.dita#Rosetta_case.courtloc-LxAdv_jurisinfo.jurisdiction_jurisinfo.location/changes"/>-->
			<!--<section>
            <title>Changes Specific to UK01</title>
        </section>-->
			<section>
				<title>Change Log</title>
				<p>2015-12-22: <ph id="change_20151222_PS">Added City and Country table to identify proper names and added note
						to suppress <sourcexml>emph</sourcexml> element only and retain its content in target, Applicable on UK01,
						RFA# 2612.</ph></p>
			</section>
		</body>
	</dita:topic>


	<!--    Original DITA file location:  DITA\ConversionInstructions\Rosetta\DITA-UK\UK01_CaseLaw\UK01_Rosetta_case.courtloc-LxAdv_jurisinfo.jurisdiction_jurisinfo.location.dita  -->
	
	<!-- NOTE: lookup table generated from http://www.citypopulation.de/UK-Cities.html.  Info in DITA is incomplete or too confusing to use. -->
  	<!-- JD: 2017-10-11: updated. -->
	<!-- CN: 2017-10-23: updated. -->
	
	<lnf:jurisdictionLookupTable>
		<lnf:country code="ENG" name="England">
		  <lnf:city name="Accrington"/>
		  <lnf:city name="Aldershot and Farnham"/>
		  <lnf:city name="Aldershot"/>
		  <lnf:city name="Altrincham"/>
		  <lnf:city name="Andover"/>
		  <lnf:city name="Ashford"/>
		  <lnf:city name="Atherton"/>
		  <lnf:city name="Aylesbury"/>
		  <lnf:city name="Bamber Bridge"/>
		  <lnf:city name="Banbury"/>
		  <lnf:city name="Barnet"/>
		  <lnf:city name="Barnsley"/>
		  <lnf:city name="Barnstaple"/>
		  <lnf:city name="Barrow-in-Furness"/>
		  <lnf:city name="Basildon"/>
		  <lnf:city name="Basingstoke"/>
		  <lnf:city name="Bath"/>
		  <lnf:city name="Batley"/>
		  <lnf:city name="Bebington"/>
		  <lnf:city name="Bedford"/>
		  <lnf:city name="Beeston"/>
		  <lnf:city name="Birkenhead"/>
		  <lnf:city name="Birmingham"/>
		  <lnf:city name="Blackburn"/>
		  <lnf:city name="Blackfriars"/>
		  <lnf:city name="Blackpool"/>
		  <lnf:city name="Bodmin"/>
		  <lnf:city name="Bognor Regis"/>
		  <lnf:city name="Bolton"/>
		  <lnf:city name="Bootle"/>
		  <lnf:city name="Boston"/>
		  <lnf:city name="Bournemouth"/>
		  <lnf:city name="Bow"/>
		  <lnf:city name="Bracknell"/>
		  <lnf:city name="Bradford"/>
		  <lnf:city name="Brentford"/>
		  <lnf:city name="Brentwood"/>
		  <lnf:city name="Bridgwater"/>
		  <lnf:city name="Brighton and Hove"/>
		  <lnf:city name="Brighton"/>
		  <lnf:city name="Bristol"/>
		  <lnf:city name="Bromley"/>
		  <lnf:city name="Burnley"/>
		  <lnf:city name="Burton upon Trent"/>
		  <lnf:city name="Bury St Edmunds"/>
		  <lnf:city name="Bury"/>
		  <lnf:city name="Buxton"/>
		  <lnf:city name="Cambridge"/>
		  <lnf:city name="Cannock"/>
		  <lnf:city name="Canterbury"/>
		  <lnf:city name="Carlisle"/>
		  <lnf:city name="Central London"/>
		  <lnf:city name="Chatham"/>
		  <lnf:city name="Chelmsford"/>
		  <lnf:city name="Cheltenham"/>
		  <lnf:city name="Chester"/>
		  <lnf:city name="Chesterfield"/>
		  <lnf:city name="Chichester"/>
		  <lnf:city name="Chippenham and Trowbridge"/>
		  <lnf:city name="Christchurch"/>
		  <lnf:city name="City of London"/>
		  <lnf:city name="Clacton-on-Sea"/>
		  <lnf:city name="Clerkenwell and Shoreditch"/>
		  <lnf:city name="Colchester"/>
		  <lnf:city name="Corby"/>
		  <lnf:city name="Coventry"/>
		  <lnf:city name="Crawley"/>
		  <lnf:city name="Crewe"/>
		  <lnf:city name="Crosby"/>
		  <lnf:city name="Croydon"/>
		  <lnf:city name="Darlington"/>
		  <lnf:city name="Dartford"/>
		  <lnf:city name="Derby"/>
		  <lnf:city name="Dewsbury"/>
		  <lnf:city name="Doncaster"/>
		  <lnf:city name="Dorchester"/>
		  <lnf:city name="Dudley"/>
		  <lnf:city name="Durham"/>
		  <lnf:city name="Eastbourne"/>
		  <lnf:city name="Eastleigh"/>
		  <lnf:city name="Edmonton"/>
		  <lnf:city name="Ellesmere Port"/>
		  <lnf:city name="Ely"/>
		  <lnf:city name="England"/>
		  <lnf:city name="Epsom"/>
		  <lnf:city name="Esher"/>
		  <lnf:city name="Ewell"/>
		  <lnf:city name="Exeter"/>
		  <lnf:city name="Farnborough"/>
		  <lnf:city name="Filton"/>
		  <lnf:city name="Folkestone"/>
		  <lnf:city name="Gateshead"/>
		  <lnf:city name="Gillingham"/>
		  <lnf:city name="Gloucester and Cheltenham"/>
		  <lnf:city name="Gloucester"/>
		  <lnf:city name="Gosport"/>
		  <lnf:city name="Gravesend"/>
		  <lnf:city name="Grays"/>
		  <lnf:city name="Great Grimsby"/>
		  <lnf:city name="Great Yarmouth"/>
		  <lnf:city name="Grimsby"/>
		  <lnf:city name="Guildford"/>
		  <lnf:city name="Halesowen"/>
		  <lnf:city name="Halifax"/>
		  <lnf:city name="Hammersmith"/>
		  <lnf:city name="Harlow"/>
		  <lnf:city name="Harrogate"/>
		  <lnf:city name="Harrow"/>
		  <lnf:city name="Hartlepool"/>
		  <lnf:city name="Hastings"/>
		  <lnf:city name="Haywards Heath"/>
		  <lnf:city name="Hemel Hempstead"/>
		  <lnf:city name="Hereford"/>
		  <lnf:city name="Hertford"/>
		  <lnf:city name="High Wycombe"/>
		  <lnf:city name="Hitchin"/>
		  <lnf:city name="Horsham"/>
		  <lnf:city name="Huddersfield"/>
		  <lnf:city name="Hull"/>
		  <lnf:city name="Ilford"/>
		  <lnf:city name="Inner London"/>
		  <lnf:city name="Ipswich"/>
		  <lnf:city name="Isle of Wight"/>
		  <lnf:city name="Isleworth"/>
		  <lnf:city name="Keighley"/>
		  <lnf:city name="Kendal"/>
		  <lnf:city name="Kettering"/>
		  <lnf:city name="Kidderminster"/>
		  <lnf:city name="King's Lynn"/>
		  <lnf:city name="Kingston upon Hull"/>
		  <lnf:city name="Kingston-upon-Hull"/>
		  <lnf:city name="Kingston-upon-Thames"/>
		  <lnf:city name="Kingswinford"/>
		  <lnf:city name="Knutsford"/>
		  <lnf:city name="Lambeth"/>
		  <lnf:city name="Lancaster"/>
		  <lnf:city name="Leeds"/>
		  <lnf:city name="Leicester"/>
		  <lnf:city name="Lewes"/>
		  <lnf:city name="Lichfield"/>
		  <lnf:city name="Lincoln"/>
		  <lnf:city name="Littlehampton"/>
		  <lnf:city name="Liverpool"/>
		  <lnf:city name="London"/>
		  <lnf:city name="Loughborough"/>
		  <lnf:city name="Lowestoft"/>
		  <lnf:city name="Luton"/>
		  <lnf:city name="Macclesfield"/>
		  <lnf:city name="Maidenhead"/>
		  <lnf:city name="Maidstone"/>
		  <lnf:city name="Manchester"/>
		  <lnf:city name="Mansfield"/>
		  <lnf:city name="Margate"/>
		  <lnf:city name="Medway"/>
		  <lnf:city name="Middlesbrough"/>
		  <lnf:city name="Milton Keynes"/>
		  <lnf:city name="Morpeth and Berwick"/>
		  <lnf:city name="Newcastle upon Tyne"/>
		  <lnf:city name="Newcastle-upon-Tyne"/>
		  <lnf:city name="Newcastle-under-Lyme"/>
		  <lnf:city name="Newport (Isle of Wight)"/>
		  <lnf:city name="North Shields"/>
		  <lnf:city name="Northampton"/>
		  <lnf:city name="Norwich"/>
		  <lnf:city name="Nottingham"/>
		  <lnf:city name="Nuneaton"/>
		  <lnf:city name="Oldham"/>
		  <lnf:city name="Oxford"/>
		  <lnf:city name="Paignton"/>
		  <lnf:city name="Peterborough"/>
		  <lnf:city name="Plymouth"/>
		  <lnf:city name="Poole"/>
		  <lnf:city name="Pontefract"/>
		  <lnf:city name="Portsmouth"/>
		  <lnf:city name="Preston"/>
		  <lnf:city name="Rawtenstall"/>
		  <lnf:city name="Rayleigh"/>
		  <lnf:city name="Reading"/>
		  <lnf:city name="Redditch"/>
		  <lnf:city name="Redhill"/>
		  <lnf:city name="Reigate"/>
		  <lnf:city name="Ripon"/>
		  <lnf:city name="Rochdale"/>
		  <lnf:city name="Rochester"/>
		  <lnf:city name="Romford"/>
		  <lnf:city name="Rotherham"/>
		  <lnf:city name="Royal Leamington Spa"/>
		  <lnf:city name="Royal Tunbridge Wells"/>
		  <lnf:city name="Rugby"/>
		  <lnf:city name="Runcorn"/>
		  <lnf:city name="Sale"/>
		  <lnf:city name="Salford"/>
		  <lnf:city name="Salisbury"/>
		  <lnf:city name="Scarborough"/>
		  <lnf:city name="Scunthorpe"/>
		  <lnf:city name="Sheffield"/>
		  <lnf:city name="Shoreham-by-Sea"/>
		  <lnf:city name="Shrewsbury"/>
		  <lnf:city name="Sittingbourne"/>
		  <lnf:city name="Skegness"/>
		  <lnf:city name="Skipton"/>
		  <lnf:city name="Slough"/>
		  <lnf:city name="Smethwick"/>
		  <lnf:city name="Snaresbrook"/>
		  <lnf:city name="Solihull"/>
		  <lnf:city name="South Shields"/>
		  <lnf:city name="Southampton"/>
		  <lnf:city name="Southend"/>
		  <lnf:city name="Southend-on-Sea"/>
		  <lnf:city name="Southport"/>
		  <lnf:city name="Southwark"/>
		  <lnf:city name="Spalding"/>
		  <lnf:city name="St Albans"/>
		  <lnf:city name="St. Albans"/>
		  <lnf:city name="St Helens"/>
		  <lnf:city name="St. Helens"/>
		  <lnf:city name="Stafford"/>
		  <lnf:city name="Staines"/>
		  <lnf:city name="Stevenage"/>
		  <lnf:city name="Stockport"/>
		  <lnf:city name="Stockton-on-Tees"/>
		  <lnf:city name="Stoke-on-Trent"/>
		  <lnf:city name="Stourbridge"/>
		  <lnf:city name="Sunderland"/>
		  <lnf:city name="Sutton Coldfield"/>
		  <lnf:city name="Swindon"/>
		  <lnf:city name="Tameside"/>
		  <lnf:city name="Tamworth"/>
		  <lnf:city name="Taunton"/>
		  <lnf:city name="Teesside"/>
		  <lnf:city name="Telford"/>
		  <lnf:city name="Thanet"/>
		  <lnf:city name="Torquay and Newton Abbot"/>
		  <lnf:city name="Torquay"/>
		  <lnf:city name="Trowbridge"/>
		  <lnf:city name="Truro"/>
		  <lnf:city name="Tunbridge Wells"/>
		  <lnf:city name="Tynemouth"/>
		  <lnf:city name="Uxbridge"/>
		  <lnf:city name="Wakefield"/>
		  <lnf:city name="Wallasey"/>
		  <lnf:city name="Walsall"/>
		  <lnf:city name="Walton-on-Thames"/>
		  <lnf:city name="Wandsworth"/>
		  <lnf:city name="Warrington"/>
		  <lnf:city name="Warwick"/>
		  <lnf:city name="Washington"/>
		  <lnf:city name="Watford"/>
		  <lnf:city name="Wellingborough"/>
		  <lnf:city name="Wells"/>
		  <lnf:city name="Welwyn Garden City"/>
		  <lnf:city name="West Bromwich"/>
		  <lnf:city name="West Cumbria"/>
		  <lnf:city name="Westminster"/>
		  <lnf:city name="Weston-super-Mare"/>
		  <lnf:city name="Weymouth"/>
		  <lnf:city name="Widnes"/>
		  <lnf:city name="Wigan"/>
		  <lnf:city name="Willenhall"/>
		  <lnf:city name="Willesden"/>
		  <lnf:city name="Winchester"/>
		  <lnf:city name="Woking"/>
		  <lnf:city name="Wolverhampton"/>
		  <lnf:city name="Wood Green"/>
		  <lnf:city name="Woolwich"/>
		  <lnf:city name="Worcester"/>
		  <lnf:city name="Workington"/>
		  <lnf:city name="Worksop"/>
		  <lnf:city name="Worthing"/>
		  <lnf:city name="Yeovil"/>
		  <lnf:city name="York"/>		  
		</lnf:country>
		<lnf:country code="NIR" name="Northern Ireland">
		  <lnf:city name="Armagh"/>
			<lnf:city name="Belfast"/>
			<lnf:city name="Craigavon"/>
		  <lnf:city name="Derry"/>
			<lnf:city name="Holywell"/>
		  <lnf:city name="Lisburn"/>
			<lnf:city name="Londonderry"/>
		  <lnf:city name="Newry"/>			
		  <lnf:city name="Newtownabbey"/>			
		</lnf:country>
		<lnf:country code="SCO" name="Scotland">
			<lnf:city name="Aberdeen"/>
			<lnf:city name="Cumbernauld"/>
			<lnf:city name="Dundee"/>
			<lnf:city name="Dunfermline"/>
			<lnf:city name="East Kilbride"/>
			<lnf:city name="Edinburgh"/>
			<lnf:city name="Glasgow"/>
			<lnf:city name="Hamilton"/>
		  <lnf:city name="Inverness"/>
		  <lnf:city name="Livingston"/>
			<lnf:city name="Paisley"/>			
		  <lnf:city name="Stirling"/>			
		</lnf:country>
		<lnf:country code="WAL" name="Wales">
		  <lnf:city name="Aberystwyth"/>
		  <lnf:city name="Bangor"/>
		  <lnf:city name="Barry"/>		  
		  <lnf:city name="Blackwood"/>
		  <lnf:city name="Brecon"/>
		  <lnf:city name="Bridgend"/>
		  <lnf:city name="Caernarfon"/>
		  <lnf:city name="Caerphilly"/>
		  <lnf:city name="Cardiff"/>
		  <lnf:city name="Carmarthen"/>
		  <lnf:city name="Conwy and Colwyn"/>
		  <lnf:city name="Dolgellau"/>
		  <lnf:city name="Haverfordwest"/>
		  <lnf:city name="Jersey"/>
		  <lnf:city name="Llanelli"/>
		  <lnf:city name="Llangefni"/>
		  <lnf:city name="Merthyr Tydfil"/>
		  <lnf:city name="Mold"/>
		  <lnf:city name="Neath"/>
		  <lnf:city name="Neath and Port Talbot"/>
		  <lnf:city name="Newport"/>
		  <lnf:city name="Port Talbot"/>
		  <lnf:city name="Pontypool"/>
		  <lnf:city name="Pontypridd"/>
		  <lnf:city name="Rhyl"/>
		  <lnf:city name="St Davids"/>
		  <lnf:city name="Swansea"/>
		  <lnf:city name="Welshpool"/>			
		  <lnf:city name="Wrexham"/>			
		</lnf:country>
	</lnf:jurisdictionLookupTable>
	
	<xd:doc>
		<xd:desc>
			<xd:p>Use lookup table above to determine the type of jurisdiction</xd:p>
		</xd:desc>
	</xd:doc>	

	<xsl:template match="case:courtloc">
		<!-- text() of case:courtloc: Note: may be spread across multiple input elements, 
		so need to merge all into one varible.
		<case:courtloc>LOCATION: SITTING IN PUBLIC AT</case:courtloc>
		<case:courtloc>15/17 GREAT MARLBOROUGH STREET,</case:courtloc>
		<case:courtloc>LONDON W1V 1AF</case:courtloc>		
		-->
		<xsl:variable name="location">
			<xsl:value-of select="."/>
			<xsl:value-of select="' '"/><!-- pad -->
			<xsl:for-each select="following-sibling::*[self::case:courtloc]">
				<xsl:value-of select="."/>
				<xsl:if test="not(last())">
					<xsl:value-of select="' '"/><!-- pad -->
				</xsl:if>
			</xsl:for-each>
		</xsl:variable> <!--select="text()"-->
		<!-- a comma-separated string of city names from the lookup table -->
		<xsl:variable name="cities" as="xs:string">
			<xsl:value-of select="document('')/xsl:stylesheet/lnf:jurisdictionLookupTable//lnf:city/@name" separator=","/>
		</xsl:variable>
		<!-- a comma-separated string of country names from the lookup table -->		
		<xsl:variable name="countries" as="xs:string">
			<xsl:value-of select="document('')/xsl:stylesheet/lnf:jurisdictionLookupTable/lnf:country/@name" separator=","/>
		</xsl:variable>
		<!-- variable locationType: determine type (city|country) based on whether $location/text() matches lookup table text() -->
		<xsl:variable name="locationType">
			<!-- loop through all $cities -->
			<xsl:for-each select="tokenize($cities,',')">
				  <!-- if $location/text() contains the lookup table city name output 'city' -->				
					<xsl:if test="contains(upper-case($location), upper-case(.))">
						<xsl:value-of select="'city'"/>
					</xsl:if>
			</xsl:for-each>
			<!-- loop through all $countries -->
			<xsl:for-each select="tokenize($countries,',')">
				<!-- if $location/text() contains the lookup table city name output 'city' -->				
				<xsl:if test="contains(upper-case($location), upper-case(.))">
					<xsl:value-of select="'country'"/>
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>
		
		<!-- JD: 2017-10-11: commenting this as it's repeated below -->
		<!--<xsl:if test="$locationType=''">
			<xsl:call-template name="outputErrorMessage">
			  <xsl:with-param name="messageText" as="xs:string*" select="concat('Data error! ''',$location, ''' in case:courtloc did not match any values in lookup table')"/>
				<!-\-  text passed in by caller  -\->
				<xsl:with-param name="errorType" as="xs:string*" select=" 'ICCE' "/>
				<xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
				<xsl:with-param name="context" as="xs:string*" select=" 'case:courtloc' "/>
				<xsl:with-param name="status" as="xs:string*" select=" 'W' "/>				
			</xsl:call-template>
		</xsl:if>-->
		
		<!--<jurisinfo:jurisdiction>-->
			<jurisinfo:location>
				<xsl:choose>
					<!-- JD: note: Using 'starts-with', as the contains() in $locationType can output 'citycitycity' if multiple matches are found -->
					<xsl:when test="starts-with($locationType,'city')">
						<location:city>
							<!-- applying templates would only get value of first sibling case:courtloc; usee $location instead  -->
							<!--<xsl:apply-templates/>-->
							<xsl:value-of select="$location"/>
						</location:city>
					</xsl:when>
					<!--xsl:when test="$locationType='country'"-->
					<xsl:when test="starts-with($locationType,'country')">
						<location:country>
							<xsl:apply-templates/>
						</location:country>
					</xsl:when>
					<xsl:otherwise>
					  <!-- JD: 2017-10-24: per email from Ghazal Amini, 2017-10-24 6:21 AM, there is not a need to validate these values.
					  If not found in the table, don't output. -->
					  <!-- JD: 2017-10-11: replaced error message text -->					  
				    <!--<xsl:call-template name="outputErrorMessage">
				      <xsl:with-param name="messageText" as="xs:string*" select="concat('Data error! ''',$location, ''' in case:courtloc did not match any values in lookup table')"/>
				      <!-\-  text passed in by caller  -\->
				      <xsl:with-param name="errorType" as="xs:string*" select=" 'ICCE' "/>
				      <xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
				      <xsl:with-param name="context" as="xs:string*" select=" 'case:courtloc' "/>
				      <xsl:with-param name="status" as="xs:string*" select=" 'W' "/>				
				    </xsl:call-template>-->
					</xsl:otherwise>
				</xsl:choose>
			</jurisinfo:location>
		<!--</jurisinfo:jurisdiction>-->
	</xsl:template>
	
	<xd:doc>
		<xd:desc>
			<xd:p>Trap output for multiple sibling case:courtloc (handed in $locationType creation)</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:template match="case:courtloc[preceding-sibling::*[1][self::case:courtloc]]"/>

	<xsl:template match="emph[parent::case:courtloc]">
		<xsl:apply-templates />
	</xsl:template>

<!-- This UK03 template is EXACTLY the same as the one above except for the creation of the wrapper jurisinfo:jurisdiction -->
	<xsl:template match="case:courtloc[$streamID='UK03']">
		<!-- text() of case:courtloc: Note: may be spread across multiple input elements, 
		so need to merge all into one varible.
		<case:courtloc>LOCATION: SITTING IN PUBLIC AT</case:courtloc>
		<case:courtloc>15/17 GREAT MARLBOROUGH STREET,</case:courtloc>
		<case:courtloc>LONDON W1V 1AF</case:courtloc>		
		-->
		<xsl:variable name="location">
			<xsl:value-of select="."/>
			<xsl:value-of select="' '"/><!-- pad -->
			<xsl:for-each select="following-sibling::*[self::case:courtloc]">
				<xsl:value-of select="."/>
				<xsl:if test="not(last())">
					<xsl:value-of select="' '"/><!-- pad -->
				</xsl:if>
			</xsl:for-each>
		</xsl:variable> <!--select="text()"-->
		<!-- a comma-separated string of city names from the lookup table -->
		<xsl:variable name="cities" as="xs:string">
			<xsl:value-of select="document('')/xsl:stylesheet/lnf:jurisdictionLookupTable//lnf:city/@name" separator=","/>
		</xsl:variable>
		<!-- a comma-separated string of country names from the lookup table -->		
		<xsl:variable name="countries" as="xs:string">
			<xsl:value-of select="document('')/xsl:stylesheet/lnf:jurisdictionLookupTable/lnf:country/@name" separator=","/>
		</xsl:variable>
		<!-- variable locationType: determine type (city|country) based on whether $location/text() matches lookup table text() -->
		<xsl:variable name="locationType">
			<!-- loop through all $cities -->
			<xsl:for-each select="tokenize($cities,',')">
				<!-- if $location/text() contains the lookup table city name output 'city' -->				
				<xsl:if test="contains(upper-case($location), upper-case(.))">
					<xsl:value-of select="'city'"/>
				</xsl:if>
			</xsl:for-each>
			<!-- loop through all $countries -->
			<xsl:for-each select="tokenize($countries,',')">
				<!-- if $location/text() contains the lookup table city name output 'city' -->				
				<xsl:if test="contains(upper-case($location), upper-case(.))">
					<xsl:value-of select="'country'"/>
				</xsl:if>
			</xsl:for-each>
		</xsl:variable>
		
		<!-- JD: 2017-10-11: commenting this as it's repeated below -->
		<!--<xsl:if test="$locationType=''">
			<xsl:call-template name="outputErrorMessage">
			  <xsl:with-param name="messageText" as="xs:string*" select="concat('Data error! ''',$location, ''' in case:courtloc did not match any values in lookup table')"/>
				<!-\-  text passed in by caller  -\->
				<xsl:with-param name="errorType" as="xs:string*" select=" 'ICCE' "/>
				<xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
				<xsl:with-param name="context" as="xs:string*" select=" 'case:courtloc' "/>
				<xsl:with-param name="status" as="xs:string*" select=" 'W' "/>				
			</xsl:call-template>
		</xsl:if>-->
		
			<jurisinfo:location>
				<xsl:choose>
					<!-- JD: note: Using 'starts-with', as the contains() in $locationType can output 'citycitycity' if multiple matches are found -->
					<xsl:when test="starts-with($locationType,'city')">
						<location:city>
							<!-- applying templates would only get value of first sibling case:courtloc; usee $location instead  -->
							<!--<xsl:apply-templates/>-->
							<xsl:value-of select="$location"/>
						</location:city>
					</xsl:when>
					<!--xsl:when test="$locationType='country'"-->
					<xsl:when test="starts-with($locationType,'country')">
						<location:country>
							<xsl:apply-templates/>
						</location:country>
					</xsl:when>
					<xsl:otherwise>
						<!-- JD: 2017-10-11: replaced error message text -->					  
						<xsl:call-template name="outputErrorMessage">
							<xsl:with-param name="messageText" as="xs:string*" select="concat('Data error! ''',$location, ''' in case:courtloc did not match any values in lookup table')"/>
							<!--  text passed in by caller  -->
							<xsl:with-param name="errorType" as="xs:string*" select=" 'ICCE' "/>
							<xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
							<xsl:with-param name="context" as="xs:string*" select=" 'case:courtloc' "/>
							<xsl:with-param name="status" as="xs:string*" select=" 'W' "/>				
						</xsl:call-template>
						<!--<xsl:call-template name="outputErrorMessage">
							<xsl:with-param name="messageText" as="xs:string*" select=" 'Error!  No value could be determined for jurisdiction based on case:courtloc' "/>
							<!-\-  text passed in by caller  -\->
							<xsl:with-param name="errorType" as="xs:string*" select=" 'ICCE' "/>
							<xsl:with-param name="errorCode" as="xs:string*" select=" '403' "/>
							<xsl:with-param name="context" as="xs:string*" select=" 'case:courtloc' "/>
							<xsl:with-param name="status" as="xs:string*" select=" 'W' "/>				
						</xsl:call-template>-->
					</xsl:otherwise>
				</xsl:choose>
			</jurisinfo:location>
		
	</xsl:template>

</xsl:stylesheet>
