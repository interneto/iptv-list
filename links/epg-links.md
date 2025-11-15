# EPG LINKS

Electronic Program Guide (EPG) links for various regions and countries.

## EPG Sources

- [celetor/epg · GitHub](https://github.com/celetor/epg)
- [davidmuma/EPG_dobleM · GitHub](https://github.com/davidmuma/EPG_dobleM)
- [globetvapp/epg · GitHub](https://github.com/globetvapp/epg)
- [Hukadan/XMLTV-EPG · GitHub](https://github.com/Hukadan/XMLTV-EPG)
- [iptv-org/epg · GitHub](https://github.com/iptv-org/epg)
- [matthuisman/i.mjh.nz · GitHub](https://github.com/matthuisman/i.mjh.nz)
- [XMLTV.ch](https://xmltv.ch/)
- [TDT Channels](https://www.tdtchannels.com/)
- [TVEpg.eu](https://tvepg.eu/)
- [TDT Spain](https://www.tdtspain.com/)

## Countries (A-Z)

- AUSTRIA
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Austria/austria1.xml`

- BELGIUM
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Belgium/belgium1.xml`

- CHINA
    - `https://raw.githubusercontent.com/celetor/epg/main/cctv.xml`

- CZECH REPUBLIC
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Czech/czech1.xml`

- FRANCE
    - `https://raw.githubusercontent.com/Hukadan/XMLTV-EPG/main/epg.xml`
    - `https://xmltv.ch/xmltv/xmltv-tnt.xml`
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/France/france1.xml`
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/France/france2.xml`
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/France/canalplus.xml`

- GERMANY
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Germany/germany1.xml`
    - `https://xmltv.ch/xmltv/xmltv-de.xml`

- ITALY
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Italy/italy1.xml`
    - `https://xmltv.ch/xmltv/xmltv-it.xml`
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Italy/rai.xml`
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Italy/mediaset.xml`
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Italy/skyitalia.xml`

- NETHERLANDS
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Netherlands/netherlands1.xml`
    - `https://xmltv.ch/xmltv/xmltv-nl.xml`

- POLAND
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Poland/poland1.xml`

- PORTUGAL
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Portugal/portugal1.xml`

- SPAIN
    - `https://www.tdtchannels.com/epg/TV.xml`
    - `https://raw.githubusercontent.com/davidmuma/EPG_dobleM/master/guiatv.xml`
    - `https://github.com/davidmuma/EPG_dobleM/raw/refs/heads/master/EPG_dobleM.xml`
    - `https://tvepg.eu/es/spain/epg`
    - `https://raw.githubusercontent.com/davidmuma/EPG_dobleM/master/movistar.xml`
    - `https://www.tdtspain.com/epg/TV.json.gz`

- SWITZERLAND
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Switzerland/switzerland1.xml`

- UNITED KINGDOM
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/UK/uk1.xml`
    - `https://xmltv.ch/xmltv/xmltv-uk.xml`

- USA
    - `https://github.com/iptv-org/epg/raw/master/sites/tvguide.com/tvguide.com.channels.xml`
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/USA/usa1.xml`
    - `https://raw.githubusercontent.com/matthuisman/i.mjh.nz/master/PlutoTV/us.xml`
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/USA/usa2.xml`
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/USA/espn.xml`

## World (A-Z)

- AFRICA
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Africa/africa1.xml`

- ASIA
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Asia/asia1.xml`

- AUSTRALIA
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Australia/australia1.xml`

- CANADA
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Canada/canada1.xml`

- GLOBAL/INTERNATIONAL
    - `https://raw.githubusercontent.com/iptv-org/epg/master/guides/ar/directv.com.ar.xml`
    - `https://raw.githubusercontent.com/iptv-org/epg/master/guides/br/mi.tv.xml`
    - `https://raw.githubusercontent.com/iptv-org/epg/master/guides/ad/andorradifusio.ad.xml`
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/Europe/europe1.xml`

- LATIN AMERICA
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/LatinAmerica/latinamerica1.xml`

- MIDDLE EAST
    - `https://raw.githubusercontent.com/globetvapp/epg/refs/heads/main/MiddleEast/middleeast1.xml`

## USAGE NOTES

### How to Use EPG Links

1. **M3U Playlist Format**: Add the EPG URL to your M3U playlist header:

   ```m3u
   #EXTM3U url-tvg="https://example.com/epg.xml"
   ```

2. **IPTV Players**: Most IPTV players allow you to add EPG sources in settings:
    - IPTVnator
    - IPTV Smarters
    - Kodi
    - Perfect Player
    - TiviMate
    - Zen player

3. **Format**: All EPG links provide XMLTV format data compatible with most IPTV applications.

### Update Frequency

- Most EPG sources update automatically every 24 hours
- Some premium sources update every 12 hours
- Regional sources may have different update schedules

### Troubleshooting

- If an EPG link doesn't work, try alternative sources listed for the same region
- Some EPG sources may require VPN access depending on geo-restrictions
- Check your IPTV player's EPG settings and refresh/reload the guide data
