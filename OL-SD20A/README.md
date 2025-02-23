![Immagine che contiene Carattere, Elementi grafici, schermata, logo
Descrizione generata
automaticamente](./resources/images/e07589b9375e5e984f1c51c5e6118d9156cd79d1.png)

# OL-SD20A SDR Transceiver User Manual

![Immagine che contiene elettronica, Elettrodomestico, elettrodomestico,
piastra Descrizione generata
automaticamente](./resources/images/media/image2.jpg)

## Contents of this manual

1. [Contents of this manual](#contents-of-this-manual)

1. [Disclaimer for Proper Use of Amateur SDR Transceiver](#disclaimer-for-proper-use-of-amateur-sdr-transceiver)

    - [Proper Connection and Installation](#proper-connection-and-installation)

    - [Liability]

    - [Warranty and Damage](#warranty-and-damage)

    - [Electrostatic Discharge (ESD) Precautions](#electrostatic-discharge-esd-precautions)

    - [Safety and Compliance](#safety-and-compliance)

    - [Acknowledgement](#acknowledgement)

1. [Software license](#_Toc2034863503)

    - [License terms](#license-terms)

    - [Warranty disclaimer](#warranty-disclaimer)

    - [Obtaining the source code
](#obtaining-the-source-code)

    - [Full GNU GPL version 3.0 license
](#full-gnu-gpl-version-3.0-license)

    - [Contact information [13]](#contact-information)

1. [Hardware license [14]](#hardware-license)

    - [Intellectual property rights
[15]](#intellectual-property-rights)

    - [Warranty disclaimer
[15]](#warranty-disclaimer-1)

    - [Right to repair [15]](#right-to-repair)

    - [Requesting hardware assistance
[15]](#requesting-hardware-assistance)

    - [License grant [15]](#license-grant)

    - [Restrictions [16]](#restrictions)

    - [Limitation of Liability[16]](#limitation-of-liability)

    - [Indemnification [16]](#indemnification)

    - [Termination [16]](#termination)

    - [Governing law [16]](#governing-law)

    - [Entire Agreement [17]](#entire-agreement)

    - [Amendments [17]](#amendments)

    - [Contact information[17]](#contact-information-1)

1. [Important user notice[17]](#important-user-notice)

1. [Introduction [18]](#_Toc1360849860)

1. [Device overview [18]](#device-overview)

    - [Front panel [19]](#front-panel)

        [Front panel LEDs [19]](#front-panel-leds)

        [Front speakers [20]](#_Toc1852837891)

    - [Back panel [20]](#back-panel)

    - [Connectors description
[22]](#connectors-description)

        [Morse key jack [22]](#morse-key-jack)

        [Headphones output [22]](#headphones-output)

        [Microphone input [23]](#microphone-input)

        [Transverter interfaces
[24]](#transverter-interfaces)

        [EXT IN [25]](#ext-in)

        [10MHz references [27]](#mhz-references)

        [PA Band connector [27]](#pa-band-connector)

        [ACC Connector [28]](#acc-connector)

        [OC connector [29]](#oc-connector)

        [Power connector [31]](#power-connector)

        [Antenna connectors [31]](#antenna-connectors)

1. [System requirements
[31]](#system-requirements)

    - [Software requirements
[32]](#software-requirements)

        [Operating system requirements
[33]](#operating-system-requirements)

        [.NET 8 [33]](#net-8)

        [Microsoft Visual C++ Redistributable
[33]](#microsoft-visual-c-redistributable)

    - [Hardware requirements
[33]](#hardware-requirements)

    - [Network requirements
[34]](#network-requirements)

1. [Installing OL-Master
[35]](#installing-ol-master)

[10. Wiring the transceiver[37]](#wiring-the-transceiver)

    - [Connecting of the PureSignal cable
[38]](#connecting-of-the-puresignal-cable)

    - [Connecting the power supply
[39]](#connecting-the-power-supply)

    - [Connecting the antenna
[40]](#connecting-the-antenna)

    - [Ethernet connection [41]](#ethernet-connection)

    - [Connecting the microphone
[42]](#connecting-the-microphone)

[11. Configuring the firewall
[42]](#configuring-the-firewall)

[12. Connection of the SDR to the PC
[48]](#connection-of-the-sdr-to-the-pc)

    - [Default Olliter SDR IP address
[48]](#default-olliter-sdr-ip-address)

    - [Sample Ethernet connection
[48]](#sample-ethernet-connection)

    - [Changing the Olliter SDR IP address
[48]](#changing-the-olliter-sdr-ip-address)

        [Connect the device to the PC
[49]](#connect-the-device-to-the-pc)

        [Manually set the IP address of the PC
[49]](#manually-set-the-ip-address-of-the-pc)

        [Setting the device address using OL-Master
[52]](#setting-the-device-address-using-ol-master)

        [Restore the default IP settings of the PC
[54]](#restore-the-default-ip-settings-of-the-pc)

[13. Usage of OL-Master [58]](#usage-of-ol-master)

    - [Configuring OL-Master
[59]](#configuring-ol-master)

        [Configuring the Olliter SDR address
[59]](#configuring-the-olliter-sdr-address)

        [Configuring the operator settings
[60]](#configuring-the-operator-settings)

        [Configuring the audio interface
[61]](#configuring-the-audio-interface)

        [Configuring the receiver bandwidth
[63]](#configuring-the-receiver-bandwidth)

        [Configuring the refresh rate
[63]](#configuring-the-refresh-rate)

    - [Starting the device [64]](#starting-the-device)

    - [Controlling the transceiver
[65]](#controlling-the-transceiver)

        [Selecting a different band
[66]](#selecting-a-different-band)

        [Tuning a frequency [67]](#tuning-a-frequency)

        [Setting the visualization mode
[68]](#setting-the-visualization-mode)

        [Interacting with the spectrum
[69]](#interacting-with-the-spectrum)

        [Setting the receiver mode
[70]](#setting-the-receiver-mode)

        [Adding additional receivers
[71]](#adding-additional-receivers)

        [Adjusting the receivers volume
[72]](#adjusting-the-receivers-volume)

        [DSP options [73]](#dsp-options)

    - [Firmware upgrade [74]](#firmware-upgrade)

[14. General recommendations
[77]](#general-recommendations)

    - [Digital modes (FT8) [78]](#digital-modes-ft8)

        [Using Virtual Audio Cable (VAC)
[78]](#using-virtual-audio-cable-vac)

        [Audio Levels and Filters
[78]](#audio-levels-and-filters)

        [Transmit and Receive Filters
[78]](#transmit-and-receive-filters)

    - [SSB mode [79]](#ssb-mode)

        [Microphone Voltage Considerations
[79]](#microphone-voltage-considerations)

        [Switching from FT8 to SSB
[79]](#switching-from-ft8-to-ssb)

        [Audio Processing Settings for SSB
[79]](#audio-processing-settings-for-ssb)

        [Transmitting Filter Settings
[79]](#transmitting-filter-settings)

[15. Troubleshooting [79]](#troubleshooting)

    - [Olliter SDR Not Powering Up
[80]](#olliter-sdr-not-powering-up)

    - [OL-Master reporting an error at startup
[80]](#ol-master-reporting-an-error-at-startup)

    - [No voice from the front-panel microphone when transmitting
[80]](#no-voice-from-the-front-panel-microphone-when-transmitting)

        [VAC is enabled on the receiver
[81]](#vac-is-enabled-on-the-receiver)

        [Wrong microphone style
[81]](#wrong-microphone-style)

        [Improper microphone gain setting
[81]](#improper-microphone-gain-setting)

    - [Additional windows (like EiBi or Cluster) are not showing up
[81]](#additional-windows-like-eibi-or-cluster-are-not-showing-up)

    - [User interface is not updating or feels slow
[82]](#user-interface-is-not-updating-or-feels-slow)

    - [Audio from the speakers feels clicky or saturated
[82]](#audio-from-the-speakers-feels-clicky-or-saturated)

    - [I connected the transceiver to a different PC and all settings were
reset
[83]](#i-connected-the-transceiver-to-a-different-pc-and-all-settings-were-reset)

    - [I get a weird error at startup telling my database cannot be loaded
for some reason
[83]](#i-get-a-weird-error-at-startup-telling-my-database-cannot-be-loaded-for-some-reason)

    - [You can't stop using the Olliter SDR transceiver
[83]](#you-cant-stop-using-the-olliter-sdr-transceiver)

[16. Additional resources [83]](#_Toc1091918595)

    - [Olliter website [84]](#olliter-website)

    - [Olliter YouTube channel
[84]](#olliter-youtube-channel)

    - [Olliter on Facebook [84]](#olliter-on-facebook)

    - [Olliter on Instagram
[84]](#olliter-on-instagram)

# Disclaimer for Proper Use of Amateur SDR Transceiver

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         Please read the following disclaimer and both the Software and
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   Hardware licenses carefully before using the SDR transceiver
  height="0.36527777777777776in"}                                                                                                
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Proper Connection and Installation

The connection and installation of the SDR transceiver are the sole
responsibility of the user. It is crucial that all connections are made
by the user in accordance with industry standards and best practices to
ensure the safety and proper functionality of the equipment.

## Liability

Olliter SAgl shall not be held liable for any damages resulting from the
improper use or incorrect installation of the SDR transceiver, whether
such damages occur to the user or any third parties. This includes, but
is not limited to, physical damage to the equipment, loss of data, or
any other consequential damages.

## Warranty and Damage

In the event of equipment damage, if it is determined that the cause of
damage was improper use or incorrect connection by the user, Olliter
SAgl will not honor any warranty claims. Users are strongly encouraged
to follow all usage instructions and safety guidelines to prevent
voiding the warranty.

## Electrostatic Discharge (ESD) Precautions

Users must take appropriate precautions to protect the SDR transceiver
from electrostatic discharge (ESD). Failure to implement ESD protection
measures can result in permanent damage to the device. ESD precautions
include, but are not limited to, using an ESD wrist strap when handling
connectors or any interface of the device, properly grounding all
equipment, and working on an ESD-safe surface.

## Safety and Compliance

Users must ensure that their use of the SDR transceiver complies with
all local laws and regulations. This includes adhering to frequency
allocation rules, power output restrictions, and any other regulatory
requirements pertaining to the operation of amateur radio equipment.

## Acknowledgement

By using the SDR transceiver, you acknowledge that you have read and
understood this disclaimer and agree to comply with all guidelines and
precautions outlined herein. Failure to do so may result in equipment
damage, legal consequences, or personal injury, for which OLLITER will
not be responsible.

### 1. Software license

This software contains GNU GPL code, meaning any derivative must share
the same license terms. Here are the licensing terms related to
OL-Master software.

By using this software, you acknowledge that you have read and
understood the terms of the GNU General Public License and agree to
comply with them.

The full GNU GPL license versions 2 and 3 are available at the following
addresses:

-   <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html>

-   <https://www.gnu.org/licenses/gpl-3.0.html>

Terms of this license are also reported in the Full GNU GPL version 3.0
license chapter.

## License terms

This software, OL-Master, is derived from PowerSDR. The original
PowerSDR software and our derived version are distributed under the
terms of the GNU General Public License (GPL), version 2, or any later
version as published by the Free Software Foundation.

Under the terms of the GPL, you are granted the following rights:

-   Freedom to Use: You may use this software for any purpose.

-   Freedom to Study and Modify: You may study how the program works and
    modify it to suit your needs. Access to the source code is a
    precondition for this freedom.

-   Freedom to Distribute Copies: You may redistribute copies of the
    original program so you can help others.

-   Freedom to Distribute Modified Versions: You may distribute copies
    of your modified versions to others under the same license. By doing
    this, you can give the whole community a chance to benefit from your
    changes.

## Warranty disclaimer

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
Public License for more details.

## Obtaining the source code

In compliance with the GPL, the complete corresponding source code for
this software is available. The source code includes all the necessary
files to compile, install, and run the software, as well as any
modifications and enhancements we have made.

To obtain the source code, a written offer should be performed, you can
request it by sending a written request to the following address:

*Olliter Laboratory SAgl*

*Amsler 1,*

*CH-7304 Maienfeld*

Or, via email at the following address:

*<legal@olliter.com>*

To comply with the GNU/GPL license, this offer is valid for three years
from the date you received the binary version of the software.

Olliter SAgl is committed to providing optimal user experience and is
currently exploring additional methods for distributing the source code,
such as through version control platforms, online file-sharing services,
or on the Olliter website. While these options are not yet available, we
will inform our users as soon as they are implemented.

## Full GNU GPL version 3.0 license

GNU GENERAL PUBLIC LICENSE

Version 3, 29 June 2007

Copyright © 2007 Free Software Foundation, Inc. \<https://fsf.org/\>

Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.

Preamble

The GNU General Public License is a free, copyleft license for software
and other kinds of works.

The licenses for most software and other practical works are designed to
take away your freedom to share and change the works. By contrast, the
GNU General Public License is intended to guarantee your freedom to
share and change all versions of a program\--to make sure it remains
free software for all its users. We, the Free Software Foundation, use
the GNU General Public License for most of our software; it applies also
to any other work released this way by its authors. You can apply it to
your programs, too.

When we speak of free software, we are referring to freedom, not price.
Our General Public Licenses are designed to make sure that you have the
freedom to distribute copies of free software (and charge for them if
you wish), that you receive source code or can get it if you want it,
that you can change the software or use pieces of it in new free
programs, and that you know you can do these things.

To protect your rights, we need to prevent others from denying you these
rights or asking you to surrender the rights. Therefore, you have
certain responsibilities if you distribute copies of the software, or if
you modify it: responsibilities to respect the freedom of others.

For example, if you distribute copies of such a program, whether gratis
or for a fee, you must pass on to the recipients the same freedoms that
you received. You must make sure that they, too, receive or can get the
source code. And you must show them these terms so they know their
rights.

Developers that use the GNU GPL protect your rights with two steps: (1)
assert copyright on the software, and (2) offer you this License giving
you legal permission to copy, distribute and/or modify it.

For the developers\' and authors\' protection, the GPL clearly explains
that there is no warranty for this free software. For both users\' and
authors\' sake, the GPL requires that modified versions be marked as
changed, so that their problems will not be attributed erroneously to
authors of previous versions.

Some devices are designed to deny users access to install or run
modified versions of the software inside them, although the manufacturer
can do so. This is fundamentally incompatible with the aim of protecting
users\' freedom to change the software. The systematic pattern of such
abuse occurs in the area of products for individuals to use, which is
precisely where it is most unacceptable. Therefore, we have designed
this version of the GPL to prohibit the practice for those products. If
such problems arise substantially in other domains, we stand ready to
extend this provision to those domains in future versions of the GPL, as
needed to protect the freedom of users.

Finally, every program is threatened constantly by software patents.
States should not allow patents to restrict development and use of
software on general-purpose computers, but in those that do, we wish to
avoid the special danger that patents applied to a free program could
make it effectively proprietary. To prevent this, the GPL assures that
patents cannot be used to render the program non-free.

The precise terms and conditions for copying, distribution and
modification follow.

TERMS AND CONDITIONS

0\. Definitions.

"This License" refers to version 3 of the GNU General Public License.

"Copyright" also means copyright-like laws that apply to other kinds of
works, such as semiconductor masks.

"The Program" refers to any copyrightable work licensed under this
License. Each licensee is addressed as "you". "Licensees" and
"recipients" may be individuals or organizations.

To "modify" a work means to copy from or adapt all or part of the work
in a fashion requiring copyright permission, other than the making of an
exact copy. The resulting work is called a "modified version" of the
earlier work or a work "based on" the earlier work.

A "covered work" means either the unmodified Program or a work based on
the Program.

To "propagate" a work means to do anything with it that, without
permission, would make you directly or secondarily liable for
infringement under applicable copyright law, except executing it on a
computer or modifying a private copy. Propagation includes copying,
distribution (with or without modification), making available to the
public, and in some countries other activities as well.

To "convey" a work means any kind of propagation that enables other
parties to make or receive copies. Mere interaction with a user through
a computer network, with no transfer of a copy, is not conveying.

An interactive user interface displays "Appropriate Legal Notices" to
the extent that it includes a convenient and prominently visible feature
that (1) displays an appropriate copyright notice, and (2) tells the
user that there is no warranty for the work (except to the extent that
warranties are provided), that licensees may convey the work under this
License, and how to view a copy of this License. If the interface
presents a list of user commands or options, such as a menu, a prominent
item in the list meets this criterion.

1\. Source Code.

The "source code" for a work means the preferred form of the work for
making modifications to it. "Object code" means any non-source form of a
work.

A "Standard Interface" means an interface that either is an official
standard defined by a recognized standards body, or, in the case of
interfaces specified for a particular programming language, one that is
widely used among developers working in that language.

The "System Libraries" of an executable work include anything, other
than the work as a whole, that (a) is included in the normal form of
packaging a Major Component, but which is not part of that Major
Component, and (b) serves only to enable use of the work with that Major
Component, or to implement a Standard Interface for which an
implementation is available to the public in source code form. A "Major
Component", in this context, means a major essential component (kernel,
window system, and so on) of the specific operating system (if any) on
which the executable work runs, or a compiler used to produce the work,
or an object code interpreter used to run it.

The "Corresponding Source" for a work in object code form means all the
source code needed to generate, install, and (for an executable work)
run the object code and to modify the work, including scripts to control
those activities. However, it does not include the work\'s System
Libraries, or general-purpose tools or generally available free programs
which are used unmodified in performing those activities but which are
not part of the work. For example, Corresponding Source includes
interface definition files associated with source files for the work,
and the source code for shared libraries and dynamically linked
subprograms that the work is specifically designed to require, such as
by intimate data communication or control flow between those subprograms
and other parts of the work.

The Corresponding Source need not include anything that users can
regenerate automatically from other parts of the Corresponding Source.

The Corresponding Source for a work in source code form is that same
work.

2\. Basic Permissions.

All rights granted under this License are granted for the term of
copyright on the Program, and are irrevocable provided the stated
conditions are met. This License explicitly affirms your unlimited
permission to run the unmodified Program. The output from running a
covered work is covered by this License only if the output, given its
content, constitutes a covered work. This License acknowledges your
rights of fair use or other equivalent, as provided by copyright law.

You may make, run and propagate covered works that you do not convey,
without conditions so long as your license otherwise remains in force.
You may convey covered works to others for the sole purpose of having
them make modifications exclusively for you, or provide you with
facilities for running those works, provided that you comply with the
terms of this License in conveying all material for which you do not
control copyright. Those thus making or running the covered works for
you must do so exclusively on your behalf, under your direction and
control, on terms that prohibit them from making any copies of your
copyrighted material outside their relationship with you.

Conveying under any other circumstances is permitted solely under the
conditions stated below. Sublicensing is not allowed; section 10 makes
it unnecessary.

3\. Protecting Users\' Legal Rights From Anti-Circumvention Law.

No covered work shall be deemed part of an effective technological
measure under any applicable law fulfilling obligations under article 11
of the WIPO copyright treaty adopted on 20 December 1996, or similar
laws prohibiting or restricting circumvention of such measures.

When you convey a covered work, you waive any legal power to forbid
circumvention of technological measures to the extent such circumvention
is effected by exercising rights under this License with respect to the
covered work, and you disclaim any intention to limit operation or
modification of the work as a means of enforcing, against the work\'s
users, your or third parties\' legal rights to forbid circumvention of
technological measures.

4\. Conveying Verbatim Copies.

You may convey verbatim copies of the Program\'s source code as you
receive it, in any medium, provided that you conspicuously and
appropriately publish on each copy an appropriate copyright notice; keep
intact all notices stating that this License and any non-permissive
terms added in accord with section 7 apply to the code; keep intact all
notices of the absence of any warranty; and give all recipients a copy
of this License along with the Program.

You may charge any price or no price for each copy that you convey, and
you may offer support or warranty protection for a fee.

5\. Conveying Modified Source Versions.

You may convey a work based on the Program, or the modifications to
produce it from the Program, in the form of source code under the terms
of section 4, provided that you also meet all of these conditions:

a\) The work must carry prominent notices stating that you modified it,
and giving a relevant date.

b\) The work must carry prominent notices stating that it is released
under this License and any conditions added under section 7. This
requirement modifies the requirement in section 4 to "keep intact all
notices".

c\) You must license the entire work, as a whole, under this License to
anyone who comes into possession of a copy. This License will therefore
apply, along with any applicable section 7 additional terms, to the
whole of the work, and all its parts, regardless of how they are
packaged. This License gives no permission to license the work in any
other way, but it does not invalidate such permission if you have
separately received it.

d\) If the work has interactive user interfaces, each must display
Appropriate Legal Notices; however, if the Program has interactive
interfaces that do not display Appropriate Legal Notices, your work need
not make them do so.

A compilation of a covered work with other separate and independent
works, which are not by their nature extensions of the covered work, and
which are not combined with it such as to form a larger program, in or
on a volume of a storage or distribution medium, is called an
"aggregate" if the compilation and its resulting copyright are not used
to limit the access or legal rights of the compilation\'s users beyond
what the individual works permit. Inclusion of a covered work in an
aggregate does not cause this License to apply to the other parts of the
aggregate.

6\. Conveying Non-Source Forms.

You may convey a covered work in object code form under the terms of
sections 4 and 5, provided that you also convey the machine-readable
Corresponding Source under the terms of this License, in one of these
ways:

a\) Convey the object code in, or embodied in, a physical product
(including a physical distribution medium), accompanied by the
Corresponding Source fixed on a durable physical medium customarily used
for software interchange.

b\) Convey the object code in, or embodied in, a physical product
(including a physical distribution medium), accompanied by a written
offer, valid for at least three years and valid for as long as you offer
spare parts or customer support for that product model, to give anyone
who possesses the object code either (1) a copy of the Corresponding
Source for all the software in the product that is covered by this
License, on a durable physical medium customarily used for software
interchange, for a price no more than your reasonable cost of physically
performing this conveying of source, or (2) access to copy the
Corresponding Source from a network server at no charge.

c\) Convey individual copies of the object code with a copy of the
written offer to provide the Corresponding Source. This alternative is
allowed only occasionally and noncommercially, and only if you received
the object code with such an offer, in accord with subsection 6b.

d\) Convey the object code by offering access from a designated place
(gratis or for a charge), and offer equivalent access to the
Corresponding Source in the same way through the same place at no
further charge. You need not require recipients to copy the
Corresponding Source along with the object code. If the place to copy
the object code is a network server, the Corresponding Source may be on
a different server (operated by you or a third party) that supports
equivalent copying facilities, provided you maintain clear directions
next to the object code saying where to find the Corresponding Source.
Regardless of what server hosts the Corresponding Source, you remain
obligated to ensure that it is available for as long as needed to
satisfy these requirements.

e\) Convey the object code using peer-to-peer transmission, provided you
inform other peers where the object code and Corresponding Source of the
work are being offered to the general public at no charge under
subsection 6d.

A separable portion of the object code, whose source code is excluded
from the Corresponding Source as a System Library, need not be included
in conveying the object code work.

A "User Product" is either (1) a "consumer product", which means any
tangible personal property which is normally used for personal, family,
or household purposes, or (2) anything designed or sold for
incorporation into a dwelling. In determining whether a product is a
consumer product, doubtful cases shall be resolved in favor of coverage.
For a particular product received by a particular user, "normally used"
refers to a typical or common use of that class of product, regardless
of the status of the particular user or of the way in which the
particular user actually uses, or expects or is expected to use, the
product. A product is a consumer product regardless of whether the
product has substantial commercial, industrial or non-consumer uses,
unless such uses represent the only significant mode of use of the
product.

"Installation Information" for a User Product means any methods,
procedures, authorization keys, or other information required to install
and execute modified versions of a covered work in that User Product
from a modified version of its Corresponding Source. The information
must suffice to ensure that the continued functioning of the modified
object code is in no case prevented or interfered with solely because
modification has been made.

If you convey an object code work under this section in, or with, or
specifically for use in, a User Product, and the conveying occurs as
part of a transaction in which the right of possession and use of the
User Product is transferred to the recipient in perpetuity or for a
fixed term (regardless of how the transaction is characterized), the
Corresponding Source conveyed under this section must be accompanied by
the Installation Information. But this requirement does not apply if
neither you nor any third party retains the ability to install modified
object code on the User Product (for example, the work has been
installed in ROM).

The requirement to provide Installation Information does not include a
requirement to continue to provide support service, warranty, or updates
for a work that has been modified or installed by the recipient, or for
the User Product in which it has been modified or installed. Access to a
network may be denied when the modification itself materially and
adversely affects the operation of the network or violates the rules and
protocols for communication across the network.

Corresponding Source conveyed, and Installation Information provided, in
accord with this section must be in a format that is publicly documented
(and with an implementation available to the public in source code
form), and must require no special password or key for unpacking,
reading or copying.

7\. Additional Terms.

"Additional permissions" are terms that supplement the terms of this
License by making exceptions from one or more of its conditions.
Additional permissions that are applicable to the entire Program shall
be treated as though they were included in this License, to the extent
that they are valid under applicable law. If additional permissions
apply only to part of the Program, that part may be used separately
under those permissions, but the entire Program remains governed by this
License without regard to the additional permissions.

When you convey a copy of a covered work, you may at your option remove
any additional permissions from that copy, or from any part of it.
(Additional permissions may be written to require their own removal in
certain cases when you modify the work.) You may place additional
permissions on material, added by you to a covered work, for which you
have or can give appropriate copyright permission.

Notwithstanding any other provision of this License, for material you
add to a covered work, you may (if authorized by the copyright holders
of that material) supplement the terms of this License with terms:

a\) Disclaiming warranty or limiting liability differently from the
terms of sections 15 and 16 of this License; or

b\) Requiring preservation of specified reasonable legal notices or
author attributions in that material or in the Appropriate Legal Notices
displayed by works containing it; or

c\) Prohibiting misrepresentation of the origin of that material, or
requiring that modified versions of such material be marked in
reasonable ways as different from the original version; or

d\) Limiting the use for publicity purposes of names of licensors or
authors of the material; or

e\) Declining to grant rights under trademark law for use of some trade
names, trademarks, or service marks; or

f\) Requiring indemnification of licensors and authors of that material
by anyone who conveys the material (or modified versions of it) with
contractual assumptions of liability to the recipient, for any liability
that these contractual assumptions directly impose on those licensors
and authors.

All other non-permissive additional terms are considered "further
restrictions" within the meaning of section 10. If the Program as you
received it, or any part of it, contains a notice stating that it is
governed by this License along with a term that is a further
restriction, you may remove that term. If a license document contains a
further restriction but permits relicensing or conveying under this
License, you may add to a covered work material governed by the terms of
that license document, provided that the further restriction does not
survive such relicensing or conveying.

If you add terms to a covered work in accord with this section, you must
place, in the relevant source files, a statement of the additional terms
that apply to those files, or a notice indicating where to find the
applicable terms.

Additional terms, permissive or non-permissive, may be stated in the
form of a separately written license, or stated as exceptions; the above
requirements apply either way.

8\. Termination.

You may not propagate or modify a covered work except as expressly
provided under this License. Any attempt otherwise to propagate or
modify it is void, and will automatically terminate your rights under
this License (including any patent licenses granted under the third
paragraph of section 11).

However, if you cease all violation of this License, then your license
from a particular copyright holder is reinstated (a) provisionally,
unless and until the copyright holder explicitly and finally terminates
your license, and (b) permanently, if the copyright holder fails to
notify you of the violation by some reasonable means prior to 60 days
after the cessation.

Moreover, your license from a particular copyright holder is reinstated
permanently if the copyright holder notifies you of the violation by
some reasonable means, this is the first time you have received notice
of violation of this License (for any work) from that copyright holder,
and you cure the violation prior to 30 days after your receipt of the
notice.

Termination of your rights under this section does not terminate the
licenses of parties who have received copies or rights from you under
this License. If your rights have been terminated and not permanently
reinstated, you do not qualify to receive new licenses for the same
material under section 10.

9\. Acceptance Not Required for Having Copies.

You are not required to accept this License in order to receive or run a
copy of the Program. Ancillary propagation of a covered work occurring
solely as a consequence of using peer-to-peer transmission to receive a
copy likewise does not require acceptance. However, nothing other than
this License grants you permission to propagate or modify any covered
work. These actions infringe copyright if you do not accept this
License. Therefore, by modifying or propagating a covered work, you
indicate your acceptance of this License to do so.

10\. Automatic Licensing of Downstream Recipients.

Each time you convey a covered work, the recipient automatically
receives a license from the original licensors, to run, modify and
propagate that work, subject to this License. You are not responsible
for enforcing compliance by third parties with this License.

An "entity transaction" is a transaction transferring control of an
organization, or substantially all assets of one, or subdividing an
organization, or merging organizations. If propagation of a covered work
results from an entity transaction, each party to that transaction who
receives a copy of the work also receives whatever licenses to the work
the party\'s predecessor in interest had or could give under the
previous paragraph, plus a right to possession of the Corresponding
Source of the work from the predecessor in interest, if the predecessor
has it or can get it with reasonable efforts.

You may not impose any further restrictions on the exercise of the
rights granted or affirmed under this License. For example, you may not
impose a license fee, royalty, or other charge for exercise of rights
granted under this License, and you may not initiate litigation
(including a cross-claim or counterclaim in a lawsuit) alleging that any
patent claim is infringed by making, using, selling, offering for sale,
or importing the Program or any portion of it.

11\. Patents.

A "contributor" is a copyright holder who authorizes use under this
License of the Program or a work on which the Program is based. The work
thus licensed is called the contributor\'s "contributor version".

A contributor\'s "essential patent claims" are all patent claims owned
or controlled by the contributor, whether already acquired or hereafter
acquired, that would be infringed by some manner, permitted by this
License, of making, using, or selling its contributor version, but do
not include claims that would be infringed only as a consequence of
further modification of the contributor version. For purposes of this
definition, "control" includes the right to grant patent sublicenses in
a manner consistent with the requirements of this License.

Each contributor grants you a non-exclusive, worldwide, royalty-free
patent license under the contributor\'s essential patent claims, to
make, use, sell, offer for sale, import and otherwise run, modify and
propagate the contents of its contributor version.

In the following three paragraphs, a "patent license" is any express
agreement or commitment, however denominated, not to enforce a patent
(such as an express permission to practice a patent or covenant not to
sue for patent infringement). To "grant" such a patent license to a
party means to make such an agreement or commitment not to enforce a
patent against the party.

If you convey a covered work, knowingly relying on a patent license, and
the Corresponding Source of the work is not available for anyone to
copy, free of charge and under the terms of this License, through a
publicly available network server or other readily accessible means,
then you must either (1) cause the Corresponding Source to be so
available, or (2) arrange to deprive yourself of the benefit of the
patent license for this particular work, or (3) arrange, in a manner
consistent with the requirements of this License, to extend the patent
license to downstream recipients. "Knowingly relying" means you have
actual knowledge that, but for the patent license, your conveying the
covered work in a country, or your recipient\'s use of the covered work
in a country, would infringe one or more identifiable patents in that
country that you have reason to believe are valid.

If, pursuant to or in connection with a single transaction or
arrangement, you convey, or propagate by procuring conveyance of, a
covered work, and grant a patent license to some of the parties
receiving the covered work authorizing them to use, propagate, modify or
convey a specific copy of the covered work, then the patent license you
grant is automatically extended to all recipients of the covered work
and works based on it.

A patent license is "discriminatory" if it does not include within the
scope of its coverage, prohibits the exercise of, or is conditioned on
the non-exercise of one or more of the rights that are specifically
granted under this License. You may not convey a covered work if you are
a party to an arrangement with a third party that is in the business of
distributing software, under which you make payment to the third party
based on the extent of your activity of conveying the work, and under
which the third party grants, to any of the parties who would receive
the covered work from you, a discriminatory patent license (a) in
connection with copies of the covered work conveyed by you (or copies
made from those copies), or (b) primarily for and in connection with
specific products or compilations that contain the covered work, unless
you entered into that arrangement, or that patent license was granted,
prior to 28 March 2007.

Nothing in this License shall be construed as excluding or limiting any
implied license or other defenses to infringement that may otherwise be
available to you under applicable patent law.

12\. No Surrender of Others\' Freedom.

If conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License. If you cannot convey a
covered work so as to satisfy simultaneously your obligations under this
License and any other pertinent obligations, then as a consequence you
may not convey it at all. For example, if you agree to terms that
obligate you to collect a royalty for further conveying from those to
whom you convey the Program, the only way you could satisfy both those
terms and this License would be to refrain entirely from conveying the
Program.

13\. Use with the GNU Affero General Public License.

Notwithstanding any other provision of this License, you have permission
to link or combine any covered work with a work licensed under version 3
of the GNU Affero General Public License into a single combined work,
and to convey the resulting work. The terms of this License will
continue to apply to the part which is the covered work, but the special
requirements of the GNU Affero General Public License, section 13,
concerning interaction through a network will apply to the combination
as such.

14\. Revised Versions of this License.

The Free Software Foundation may publish revised and/or new versions of
the GNU General Public License from time to time. Such new versions will
be similar in spirit to the present version, but may differ in detail to
address new problems or concerns.

Each version is given a distinguishing version number. If the Program
specifies that a certain numbered version of the GNU General Public
License "or any later version" applies to it, you have the option of
following the terms and conditions either of that numbered version or of
any later version published by the Free Software Foundation. If the
Program does not specify a version number of the GNU General Public
License, you may choose any version ever published by the Free Software
Foundation.

If the Program specifies that a proxy can decide which future versions
of the GNU General Public License can be used, that proxy\'s public
statement of acceptance of a version permanently authorizes you to
choose that version for the Program.

Later license versions may give you additional or different permissions.
However, no additional obligations are imposed on any author or
copyright holder as a result of your choosing to follow a later version.

15\. Disclaimer of Warranty.

THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT
WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF
THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME
THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

16\. Limitation of Liability.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR
CONVEYS THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES
ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT
NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES
SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE
WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN
ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

17\. Interpretation of Sections 15 and 16.

If the disclaimer of warranty and limitation of liability provided above
cannot be given local legal effect according to their terms, reviewing
courts shall apply local law that most closely approximates an absolute
waiver of all civil liability in connection with the Program, unless a
warranty or assumption of liability accompanies a copy of the Program in
return for a fee.

END OF TERMS AND CONDITIONS

How to Apply These Terms to Your New Programs

If you develop a new program, and you want it to be of the greatest
possible use to the public, the best way to achieve this is to make it
free software which everyone can redistribute and change under these
terms.

To do so, attach the following notices to the program. It is safest to
attach them to the start of each source file to most effectively state
the exclusion of warranty; and each file should have at least the
"copyright" line and a pointer to where the full notice is found.

\<one line to give the program\'s name and a brief idea of what it
does.\>

Copyright (C) \<year\> \<name of author\>

This program is free software: you can redistribute it and/or modify

it under the terms of the GNU General Public License as published by

the Free Software Foundation, either version 3 of the License, or

(at your option) any later version.

This program is distributed in the hope that it will be useful,

but WITHOUT ANY WARRANTY; without even the implied warranty of

MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the

GNU General Public License for more details.

You should have received a copy of the GNU General Public License

along with this program. If not, see \<https://www.gnu.org/licenses/\>.

Also add information on how to contact you by electronic and paper mail.

If the program does terminal interaction, make it output a short notice
like this when it starts in an interactive mode:

\<program\> Copyright (C) \<year\> \<name of author\>

This program comes with ABSOLUTELY NO WARRANTY; for details type \`show
w\'.

This is free software, and you are welcome to redistribute it

under certain conditions; type \`show c\' for details.

The hypothetical commands \`show w\' and \`show c\' should show the
appropriate parts of the General Public License. Of course, your
program\'s commands might be different; for a GUI interface, you would
use an "about box".

You should also get your employer (if you work as a programmer) or
school, if any, to sign a "copyright disclaimer" for the program, if
necessary. For more information on this, and how to apply and follow the
GNU GPL, see \<https://www.gnu.org/licenses/\>.

The GNU General Public License does not permit incorporating your
program into proprietary programs. If your program is a subroutine
library, you may consider it more useful to permit linking proprietary
applications with the library. If this is what you want to do, use the
GNU Lesser General Public License instead of this License. But first,
please read \<https://www.gnu.org/licenses/why-not-lgpl.html\>.

## Contact information

For any questions regarding the Software license terms, please contact
us at:

Olliter Laboratory SAgl

Amsler 1,

CH-7304 Maienfeld

Or, via email at the following address:

<legal@olliter.com>

# Hardware license

The hardware component, comprising the SDR device and associated
accessories, is manufactured by Olliter SAgl. Our engineers have
meticulously designed, developed, and tested this product to optimize
performance as an amateur radio communication device.

## Intellectual property rights

Olliter SAgl retains exclusive ownership of all intellectual property
rights pertaining to the hardware\'s design and implementation. This
agreement grants you a limited license to use the hardware, but
ownership remains with Olliter SAgl.

## Warranty disclaimer

Olliter SAgl offers a limited warranty covering manufacturing defects.
The warranty period aligns with applicable consumer protection laws in
your jurisdiction. For precise warranty details, please consult the
consumer protection regulations in your country of residence.

This warranty does not encompass damages resulting from misuse,
accidents, unauthorized modifications, or ordinary wear and tear
(including but not limited to knobs, switches, and fuses).

## Right to repair

In compliance with EU regulations, Olliter SAgl will provide spare parts
and repair manuals for a minimum of two years post-product
discontinuation or until component availability from our supplier\'s
ceases. We are committed to exploring alternative repair solutions
during this period.

While federal Right to Repair legislation may not exist in all non-EU
countries, certain states have enacted their own laws. Olliter SAgl will
adhere to applicable Right to Repair regulations in our markets. Our aim
is to empower users with the necessary information and resources to
maintain device functionality for an extended period.

## Requesting hardware assistance

To report a defect, please contact <hello@olliter.com> for technical
support or authorized repair center information.

## License grant

Olliter SAgl grants you a non-exclusive, non-transferable, limited
license to use the hardware solely for its intended purpose as outlined
in the accompanying documentation. This license includes the right to:

-   Access and repair the hardware using readily available tools and
    parts.

-   Seek repair services from independent repair shops in addition to
    Olliter SAgl\'s authorized service providers.

## Restrictions

By utilizing the Olliter SDR transceiver, you agree to:

-   Refrain from reverse engineering the hardware for purposes other
    than repair or security research (unless authorized in writing by
    Olliter SAgl).

-   Avoid modifying, adapting, or creating derivative works based on the
    hardware that infringe upon Olliter SAgl\'s intellectual property
    rights.

-   Preserve all proprietary notices and labels on the hardware.

## Limitation of Liability

To the fullest extent permitted by law, Olliter SAgl shall not be held
liable for any indirect, incidental, special, consequential, or punitive
damages, including but not limited to loss of profits, revenues, data,
use, goodwill, or other intangible assets, arising from:

-   Our use or inability to use the hardware.

-   Unauthorized use or alteration of the hardware.

-   Other hardware-related issues (including but not limited to static
    discharge, improper external device connections, fire, or
    weather-related incidents).

## Indemnification

You agree to indemnify and hold harmless Olliter SAgl from any claims,
liabilities, damages, losses, expenses, including reasonable attorney
fees, arising from your hardware use or agreement violations.

## Termination

This agreement remains in effect until terminated by either party. Your
failure to comply with agreement terms automatically terminates your
rights without notice. Upon termination, you must cease all hardware use
and destroy accompanying documentation.

## Governing law

Swiss law governs this agreement, excluding conflict of law principles.
Any legal disputes arise exclusively in Swiss courts.

## Entire Agreement

This agreement constitutes the entire understanding between you and
Olliter SAgl regarding hardware use, superseding all prior or
contemporaneous agreements (written or oral).

## Amendments

Olliter SAgl reserves the right to modify this agreement with prior
notice. Continued hardware use post-amendment implies acceptance of the
revised terms.

## Contact information

If you have any questions about this hardware agreement, please contact:

*Olliter Laboratory SAgl*

*Amsler 1,*

*CH-7304 Maienfeld*

Or, via email at the following address:

*<legal@olliter.com>\
*

# Important user notice

This radio is designed to comply with your country\'s radio regulations.
It operates on frequencies allocated exclusively for amateur radio use.
To legally operate this radio, you must possess a valid amateur radio
license of the appropriate class issued by your government.

Radio frequency (RF) emissions from transmitters can potentially
interfere with electronic devices, including pacemakers and
defibrillators. If you suspect any interference with your medical device
while operating this radio, immediately cease transmission and seek
medical attention if necessary.

2.  []{#_Toc1360849860 .anchor}Introduction

The main purpose of this guide is to help you configuring for the first
time your Olliter SDR Transceiver.

This guide may not fully cover the hardware configuration of the device
or every feature available on the software, it will cover the first
steps to connect the SDR transceiver, receive and transmit.

[\
]{.underline}

# Device overview

This chapter covers the input and output of the Olliter SDR transceiver
to guide the user when interfacing with external devices.

## Front panel

![](./resources/images/3284ef3277303db02603912d273051ec195d35ad.png)
1.  Morse key input

2.  Headphones output

3.  Microphone input

4.  Connection LED

5.  Power button

6.  Adjustable legs

7.  Left speaker

8.  Standby LED

9.  Power-on LED

10. Right speaker

### Front panel LEDs

The front panel offers four different LEDs, each LED have a different
meaning

![](./resources/images/5288649ad2f90e07cfae2b4b325fb21509bb6626.png)
1.  Connection status: this LED is ON when OL-Master is communicating
    with the transceiver

2.  Transmission: this LED is ON when the device is transmitting

3.  Stand-by: this LED is ON when voltage is applied to the device

4.  Power-on: this LED is ON when the power button is pressed and stays
    on when the device is operating (even if not communicating with
    OL-Master)

If the Power-on LED is not turning on when pressing the power button,
please refer to the Troubleshooting chapter of this manual

-   []{#_Toc1852837891 .anchor}Front speakers

These speakers are controlled by OL-Master and can be used to play the
demodulated signal that is tuned. The onboard speakers can be enabled or
disabled from OL-Master, volume control is also provided by the software

## Back panel

![](./resources/images/930b36d1c2b600f1abbde9dfbe439a3cb0f2817a.png)
1.  Receiving line for the transverter interface 1

2.  Transmitting line for the transverter interface 1

3.  Receiving line for the transverter interface 2

4.  Transmitting line for the transverter interface 2

5.  Pure signal input

6.  Pure signal output

7.  EXT IN (unfiltered RF input)

8.  10MHz input from an external oscillator (GPSDO or rubidium
    reference)

9.  10MHz output for external devices (such as transverters)

10. Open collector I/O (can be configured from OL-Master)

11. Speaker connection (high power output, designed for external 8-ohm
    speakers)

12. Internal or external speaker selector

13. Power supply input (13.8V DC)

14. Antenna 1 receiving and transmitting connector

15. Antenna 2 receiving and transmitting connector

16. Antenna 3 receiving and transmitting connector

17. Antenna 4 receiving and transmitting connector

18. Serial number location

19. Transverter 1 interface (digital inputs and outputs to control
    external transverters)

20. Transverter 2 interface (digital inputs and outputs to control
    external transverters)

21. External accessories interface (digital inputs and outputs)

22. RCA audio output (low power output, to be sent to the line-in of
    external audio devices)

23. RCA audio input (low power input, to be used as transmitting audio
    line)

24. Open collector PTT output

25. External PTT input (active low)

26. Band output (digital output)

27. Ethernet interface (1Gbps only)

## Connectors description

Here is a description of the inputs and outputs of the Olliter SDR
transceiver. Some of these connections are highly sensitive to ESD,
overvoltage, short-circuit, overcurrent and more, please take all the
recommended measures when connecting external devices.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         The warranty for your Olliter SDR device will be voided if our
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   customer assistance department determines that the device has
  height="0.36527777777777776in"}                                                                                                been damaged or rendered inoperative due to improper connection
                                                                                                                                 of external devices.
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         The warranty for your Olliter SDR will be voided if our customer
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   assistance department determines that the device has been
  height="0.36527777777777776in"}                                                                                                damaged or rendered inoperative due to connection of external
                                                                                                                                 devices that generate or absorb excessive current or voltage
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Morse key jack

This ¼ inch (6.35mm) jack is used to connect either a paddle or a
straight key. When using a paddle, the DOT and DASHES can be swapped
from the CW menu of OL-Master settings.

This connector uses either 5V or 3V3 pull-up resistors. Voltage can be
selected by moving the internal "3.3 -- 5V I/O" jumper.

![](./resources/images/media/image8.png)
### Headphones output

This output is designed to drive standard headphones with a nominal
impedance of 16Ω impedance, output level is 50mW for a -75dB THD.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         Prolonged use of headphones at high volume can cause permanent
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   hearing dagame. Adjust the volume to a safe level to protect
  height="0.36527777777777776in"}                                                                                                your ears.
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

![](./resources/images/media/image9.png)
### Microphone input

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         If the transceiver was ordered with a Icom wiring, a Yaesu
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   microphone cannot be used and vice-versa. Using a different
  height="0.36527777777777776in"}                                                                                                microphone style can damage the transceiver and/or the
                                                                                                                                 microphone.
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

This input should be chosen when placing the order for the Olliter SDR
transceiver. This input is designed to work with either Icom (such as
the SM-30) or Yaesu (such as M-70) microphones.

In addition to the microphone wiring that was requested, and
independently from the user choice, a balanced input for a dynamic
capsule is also available on the same connector.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         Before connecting any kind of microphone to the transceiver,
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   please adjust the voltage settings in the Setup menu of
  height="0.36527777777777776in"}                                                                                                OL-Master software. Incorrect voltage settings may damage the
                                                                                                                                 transceiver and/or the microphone.
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Selection between 5V, 8V or none can be toggled in the Setup menu of
OL-Master.

Advanced features (like up/down, scan, etc.) are not available.

  ------------------------------------------------------------------------------
  Transceiver                                      
  that was                                         
  ordered with                                     
  Icom wiring                                      
  ------------- ---------------------------------- -----------------------------
  Pin           Icom SM-30                         Dynamic microphone

  1             Microphone signal                  Balanced input +

  2             +8V microphone power               N.C.

  3             N.C.                               N.C.

  4             N.C.                               Balanced input -

  5             PTT signal                         PTT signal

  6             PTT GND                            PTT GND

  7             Microphone GND                     GND

  8             N.C.                               N.C.
  ------------------------------------------------------------------------------

  ------------------------------------------------------------------------------
  Transceiver                                      
  that was                                         
  ordered with                                     
  Yaesu wiring                                     
  ------------- ---------------------------------- -----------------------------
  Pin           Yaesu M-70                         Dynamic microphone

  1             N.C.                               N.C.

  2             +5V microphone power               N.C.

  3             N.C.                               N.C.

  4             N.C.                               Balanced input -

  5             PTT GND                            PTT GND

  6             PTT Signal                         PTT Signal

  7             Microphone GND                     GND

  8             Microphone signal                  Balanced input +
  ------------------------------------------------------------------------------

Icom and the Icom logo are registered trademarks of Icom Incorporated
(Japan)

Yaesu and the Yaesu logo are registered trademarks of Yaesu Musen Co.,
Ltd.

### Transverter interfaces

The transverter input and outputs are designed to drive external devices
to provide additional bands to the transceiver.

The transverter input 1 is connected to the CH1 line of the SDR, while
the transverter input 2 is connected to the CH2 line of the SDR. Both
inputs are passed through a dedicated 50MHz low-pass filter, a 32dB
software-controlled attenuator and a 20dB amplifier. The suggested
maximum input should be -2dBm (assuming no attenuator is used).

The nominal output for the transverter transmission line is 10dBm, this
value may vary a little depending on the IF frequency that is
configured. The transmission signal is passed through a 50MHz low-pass
filter, and a programmable attenuator (which is controlled by the TX
Power slider in OL-Master).

Transverters can be configured using the dedicated section of the
OL-Master software.

### EXT IN

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         The EXT IN connector provide direct access to the ADC2 device
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   inside the transceiver, excessive power input can permanently
  height="0.36527777777777776in"}                                                                                                damage the internal circuits
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

This input provides an unfiltered path to the CH2 line of the
transceiver, it is typically used to interface with external devices
where filters are already installed (such as panadapter interfaces).

To enable this feature please select RX2 as receiver channel for the
receiver that is going to be used.

![](./resources/images/a439cba54074365622555ccec2c8991a7e11e642.png)
![](./resources/images/da21b99e161e2b4cd65470df5445514e460e2c5a.png)
### 10MHz references

The Olliter SDR transceiver can be connected to an external 10MHz
reference to provide better frequency stability, this is very convenient
when working with high-frequency devices like microwave transverters.

The 10MHz input (labelled as GPS IN) is a 50Ω input between -15dBm and
+5dBm. This input is protected against overvoltage but using an
attenuator (if needed) is recommended.

The 10MHz output (labelled as OUT) provides a 3.3V CMOS output with a
series resistance (used as short-circuit protection). This output can
only be used as a frequency reference, and it was not designed to
provide more than 20mA. This output comes from the internal TCXO when no
external reference is applied.

### PA Band connector

This connector offers some digital outputs that can be used to drive
external antenna switches or amplifiers.

These outputs can be programmed by the user using the Setup menu of
OL-Master.

These outputs are normally in a LOW state using a pull-down resistor.

The voltage that is provided by this port depends on the internal "3.3
-- 5V I/O" jumper. Maximum available current is limited with a 220Ω
series resistor.

![](./resources/images/17ff5b2b219aae4071c907d38aa3c188a4a26941.png)
  -----------------------------------------------------------------------
  DB9 Pin           Software output
  ----------------- -----------------------------------------------------
  1                 Digital out 1

  2                 Digital out 2

  3                 Digital out 3

  4                 Digital out 4

  5                 GND

  6                 Digital out 5

  7                 Digital out 6

  8                 Digital out 7

  9                 Digital out 8
  -----------------------------------------------------------------------

### ACC Connector

This connector offers some inputs to control several features of the
SDR, such as PTT controls for RX2, RX3 and RX4, an external inhibit
line, and two additional analog inputs that can be used to get
information from external devices (like temperature probes or flow
meters).

The voltage that can be applied to the digital input port depends on the
internal "3.3 -- 5V I/O" jumper. In any case, it should never exceed the
configured voltage.

  ------------------------------------------------------------------------
                     3.3V I/O                   5V I/O
  ------------------ -------------------------- --------------------------
  Low state          0V to 0.8V                 0V to 1.5V

  High state         2V to 3.3V                 3.5V to 5V
  ------------------------------------------------------------------------

The voltage range for both ADC0 and ADC1 is 0V to 3.3V. Excessive
voltage can cause severe damage to the ADC circuitry.

Pins 6 and 8 have an internal 4.7KΩ pull-up resistor, while pins 7 and 9
have an internal 4.7KΩ pull-down resistor.

![](./resources/images/17ff5b2b219aae4071c907d38aa3c188a4a26941.png)
  -----------------------------------------------------------------------
  DB9 Pin           Software output
  ----------------- -----------------------------------------------------
  1                 GND

  2                 N.C.

  3                 ADC in 1

  4                 ADC in 0

  5                 GND

  6                 PTT RX2 (active LOW)

  7                 PTT RX4 (active HIGH)

  8                 PTT RX3 (active LOW)

  9                 Ext Inhibit (active HIGH)
  -----------------------------------------------------------------------

### OC connector

This connector offers 8 open-collector outputs that can be used to drive
external accessories like power amplifiers or antenna relays.

The maximum V~CE~ that can be used at the open-collector outputs is 48V
DC.

The 13.8V DC lines are derived from the main power supply and are
protected by a 250mA resettable fuse.

![](./resources/images/media/image11.png)
  -----------------------------------------------------------------------
  DB15 Pin            Software output
  ------------------- ---------------------------------------------------
  1                   GND

  2                   OUT 2

  3                   OUT 4

  4                   OUT 6

  5                   OUT 8

  6                   GND

  7                   GND

  8                   13.8V

  9                   OUT 1

  10                  OUT 3

  11                  OUT 5

  12                  OUT 7

  13                  Open-collector common

  14                  GND

  15                  13.8V
  -----------------------------------------------------------------------

External relay connection example:

![](./resources/images/bdc84c5a3a727390a574e867f35eda82bcb6c5cd.png)
### Power connector

Please refer to the Connecting the power supply chapter for further
information

### Antenna connectors

These four BNC connectors are used by the transceiver to receive and
transmit. Different bands can receive or transmit on different antennas,
mapping between bands, mode and antenna can be done in the Setup menu of
OL-Master.

Please refer to the Connecting the antenna for further information

# System requirements

An SDR transceiver requires a control device to work, the hardware of
the transceiver is used to convert analog RF signals to an IQ stream
that is sent to a software installed on the control device, where it is
processed to extract an audio signal. When transmitting, the process is
reversed. The hardware and software need to work together to receive and
transmit signals using the SDR transceiver.

Some I/O are available on-board to interface with external accessories
like microphones, headphones and Morse key or paddle.

A simplified schematic representation of the SDR device is shown below.

![Immagine che contiene testo, schermo, diagramma, schermata Descrizione
generata
automaticamente](./resources/images/c208c3c638ae2571c37c170f0810465abafe36ee.png)
## Software requirements

As any SDR device, one of the main components is the PC that is used to
control the device, the same PC is also used to decode and process the
raw digital stream of data to usable audio stream. This decode process
requires some minimum software and hardware requirements that should be
met.

### Operating system requirements

The OL-Master application was developed for Microsoft Windows 10 or
later. Virtualization of such operating systems is also supported, if
the host machine is capable enough.

Compatibility with Microsoft Windows 8.1 or previous versions of
Microsoft Windows cannot be ensured due to lack of support for .NET
Framework 4.8.1 which was used to develop the application.

### .NET 8

The operating system should be updated to the latest version and the
.NET8 must be installed on the machine (latest update of the .NET8 can
be downloaded from the following URL
<https://dotnet.microsoft.com/en-us/download/visual-studio-sdks>).
Depending on the system configuration, both the .NET8 SDK and .NET8
Runtime might be needed.

### Microsoft Visual C++ Redistributable

Some components of the software were written using highly optimized C++
code, this requires the latest version of the Microsoft Visual C++
Redistributable package to be installed and updated. The latest version
of this package can be downloaded from the following URL:
<https://learn.microsoft.com/it-it/cpp/windows/latest-supported-vc-redist?view=msvc-170>
.

As per the moment this manual was written, the latest available version
is 14.40.33810.0.

## Hardware requirements

Recommended hardware setup is an 7^th^ generation Intel Core i5 or
later, with at least 16GB of RAM and 1GB of available storage space
(disk usage may vary depending on additional features like recordings,
cluster, EIBI and more).

Ethernet interface at 1Gbps on the control PC is mandatory if using more
than one receiver window. Ethernet interface at 1Gbps is mandatory to
configure the IP address of the device if connected directly to the
control PC.

## Network requirements

An ethernet interface capable of 1Gbps [is mandatory]{.underline} for
the transceiver to communicate with the control device (PC), a properly
configured ethernet switch with interfaces at 1Gbps is suggested to be
used in between the SDR and the PC.

Please note, the transceiver [does not support negotiating any speed
lower than 1Gbps]{.underline} with the control device or the
switch/router that is plugged into.

An ethernet cable CAT5 or superior is highly recommended to interface
the SDR to the switch/router and the PC.

To ensure best performances, use high quality switch or router and
cables, make sure the whole network from the SDR to the master PC is
capable of continuously communicate at 1Gbps.

An internet connection is not required if not using external services
(like clusters or EIBI).

A network connection diagram is available at the Sample Ethernet
connection. chapter.

# Installing OL-Master

After buying an Olliter SDR, you should receive the setup file for
OL-Master, this is the main application that controls the SDR and must
be installed on the PC.

![Olliter setup
file](./resources/images/15a34c54f5fdc8760e8ca4c1e772a68a2118758a.png)
Double click the executable to start the installer, administrative
privileges are mandatory to install the software. Follow the on-screen
instructions to proceed with the installation.

![](./resources/images/2c2db219748179cb712d2579dcff50c848ac0230.png)
![](./resources/images/5f228f61610cbb24ebdc9df574ec8a5385319e14.png)
![](./resources/images/d9fd212c0273127827a90e0fd34e3259949a8e96.png)
![](./resources/images/85191356186f190b5d11ff91f44fb13f69b8b502.png)
Setup is now completed, before starting the software, please read
carefully the next chapter.

# Wiring the transceiver

+-----+----------------------------------------------------------------+
| ![  | Electrostatic Discharge (ESD) can cause severe damage to       |
| war | electrical circuits, potentially leading to costly repairs or  |
| nin | replacements. Always take measures to protect your equipment.  |
| g - | These safety measures include but are not limited to:          |
| 2S  |                                                                |
| .I. | -   Proper grounding: make sure all equipment and workstations |
| So  |     are properly grounded                                      |
| ftw |                                                                |
| are | -   Avoid static-inducing clothing: avoid wearing synthetic    |
| e   |     materials that generate static electricity                 |
| S   |                                                                |
| erv | -   Handle components with care: touch components only by      |
| izi |     their edges or the grounding case avoiding touching pins   |
| per |     and circuitry                                              |
| l   |                                                                |
| \'I |                                                                |
| nge |                                                                |
| gne |                                                                |
| ria |                                                                |
| S   |                                                                |
| .r. |                                                                |
| l.] |                                                                |
| (ve |                                                                |
| rto |                                                                |
| pal |                                                                |
| _5c |                                                                |
| e2d |                                                                |
| e31 |                                                                |
| d1c |                                                                |
| 441 |                                                                |
| 468 |                                                                |
| 8b9 |                                                                |
| bd6 |                                                                |
| e7a |                                                                |
| 120 |                                                                |
| 5f3 |                                                                |
| /0c |                                                                |
| de3 |                                                                |
| 65b |                                                                |
| bde |                                                                |
| 16b |                                                                |
| 18c |                                                                |
| ec1 |                                                                |
| e54 |                                                                |
| 762 |                                                                |
| 98a |                                                                |
| 322 |                                                                |
| f1d |                                                                |
| a9d |                                                                |
| ae. |                                                                |
| png |                                                                |
| ){w |                                                                |
| idt |                                                                |
| h=" |                                                                |
| 0.4 |                                                                |
| 173 |                                                                |
| 611 |                                                                |
| 111 |                                                                |
| 111 |                                                                |
| 111 |                                                                |
| in" |                                                                |
| h   |                                                                |
| eig |                                                                |
| ht= |                                                                |
| "0. |                                                                |
| 365 |                                                                |
| 277 |                                                                |
| 777 |                                                                |
| 777 |                                                                |
| 777 |                                                                |
| 76i |                                                                |
| n"} |                                                                |
|     |                                                                |
| ![3 |                                                                |
| ESD |                                                                |
| S   |                                                                |
| ymb |                                                                |
| ols |                                                                |
| You |                                                                |
| N   |                                                                |
| eed |                                                                |
| to  |                                                                |
| K   |                                                                |
| now |                                                                |
| ! - |                                                                |
| De  |                                                                |
| sco |                                                                |
| Eur |                                                                |
| ope |                                                                |
| Blo |                                                                |
| g]( |                                                                |
| ver |                                                                |
| top |                                                                |
| al_ |                                                                |
| 5ce |                                                                |
| 2de |                                                                |
| 31d |                                                                |
| 1c4 |                                                                |
| 414 |                                                                |
| 688 |                                                                |
| b9b |                                                                |
| d6e |                                                                |
| 7a1 |                                                                |
| 205 |                                                                |
| f3/ |                                                                |
| 27e |                                                                |
| f60 |                                                                |
| 031 |                                                                |
| f01 |                                                                |
| b24 |                                                                |
| b2f |                                                                |
| 9c9 |                                                                |
| 65f |                                                                |
| ed6 |                                                                |
| 525 |                                                                |
| 96d |                                                                |
| 561 |                                                                |
| 700 |                                                                |
| 1.p |                                                                |
| ng) |                                                                |
| {wi |                                                                |
| dth |                                                                |
| ="0 |                                                                |
| .36 |                                                                |
| 567 |                                                                |
| 038 |                                                                |
| 495 |                                                                |
| 188 |                                                                |
| 103 |                                                                |
| in" |                                                                |
| h   |                                                                |
| eig |                                                                |
| ht= |                                                                |
| "0. |                                                                |
| 365 |                                                                |
| 670 |                                                                |
| 384 |                                                                |
| 951 |                                                                |
| 881 |                                                                |
| 03i |                                                                |
| n"} |                                                                |
+=====+================================================================+
+-----+----------------------------------------------------------------+

Connecting the transceiver is simple but a couple of considerations and
safety measures are needed, please read carefully the wiring
instructions to prevent damages to the Olliter SDR.

## Connecting of the PureSignal cable

To achieve optimal transmission quality and reduce the spurious
emissions, the Pure Signal technology is supported by the Olliter SDR
transceiver.

![Pure
Signal-2](./resources/images/4d6ae272de1fb31734e5f8f39ca9f65014f99fa4.png)
Pure Signal is the name given to the theory and implementation of the
clean transmission logic developed by the OpenHPSDR team and implemented
in both the Olliter SDR software and transceiver. The algorithm behind
the Pure Signal technology is quite simple, when both the drive applied
to the Digital-to-analogue converter (DAC) and the output as measured at
the antenna are known it is possible to modify the drive so that the
output is as clean as possible.

The Pure Signal technology is enabled by connecting the PS IN with the
PS OUT using the provided SMA to SMA coaxial cable.

![](./resources/images/18f623e9b4d484981f3da0bde7dacb2cbee21dd1.png)
## Connecting the power supply

The Olliter SDR was designed to operate from a stable and constant power
supply which is capable of continuously delivering 13.8V at 5A for the
20W model.

An integrated protection circuit is added to the transceiver which can
help in protecting the radio from excessive voltage fluctuations by
cutting the power line and turning off the device.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         The integrated protection circuit should not be considered a
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   surge, lightning or electrostatic protection, it was designed to
  height="0.36527777777777776in"}                                                                                                protect the circuitry from excessive or low voltages which may
                                                                                                                                 negatively impact the transceiver performances.
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Connect the power supply to the Olliter SDR by using high-quality
Anderson PowerPole® connectors. Wire size should be chosen according to
the length of the connection, here are our suggestions:

-   Wires shorter than 2 meters (6.5ft) long will require 2mm^2^ (AWG14)
    wires

-   Wires between 2 and 4 meters (6.5ft to 13ft) will require 4mm^2^
    wires

-   Wires longer than 4 meters (13ft) are not recommended as they may
    pick up excessive noise from the surrounding environment or cause
    excessive voltage fluctuations

![](./resources/images/9c765baa23b7e234fb8756753310f4326b3ebb4f.png)
Make sure to connect all the needed wires before turning on the power
supply.

If the transceiver does not show the red (standby) light after applying
power, please refer to the Troubleshooting chapter.

## Connecting the antenna

Up to 4 antennas can be connected to the Olliter SDR, these can be
configured in software to allow receiving and transmitting on different
bands with different antennas.

To begin, connect an antenna using a male BNC connector to the ANT1
socket.

![](./resources/images/1f2934ee5ce799ba34a4df22e04ed915f853d283.png)
## Ethernet connection

To interface the transceiver with the local network, please refer to the
Connection of the SDR to the PC chapter of this manual.

## Connecting the microphone

Each device comes with a dedicated microphone wiring which should be
selected when ordering the transceiver, use the front 8-pin socket to
connect the microphone.

# Configuring the firewall

Network communication to the device is performed using UDP protocol, a
security system exception must be created for the software to work
reliably.

Open the Windows firewall settings.

![Immagine che contiene testo, schermata, software, Software
multimediale Descrizione generata
automaticamente](./resources/images/media/image22.png)
Select "Inbound connection rules" on the left menu.

![](./resources/images/media/image23.png)
Click on "New rule" on the right menu.

![Immagine che contiene testo, schermata, software, Icona del computer
Descrizione generata
automaticamente](./resources/images/media/image24.png)
Select \"Program" and click "next".

![Immagine che contiene testo, schermata, software, Icona del computer
Descrizione generata
automaticamente](./resources/images/media/image25.png)
Click on "Browse" and navigate to "C:\\Program
Files\\Olliter\\Ol-master.exe"

![Immagine che contiene testo, schermata, software, Icona del computer
Descrizione generata
automaticamente](./resources/images/media/image26.png)
![Immagine che contiene testo, schermata, software, Software
multimediale Descrizione generata
automaticamente](./resources/images/media/image27.png)
Click on "Next"

![Immagine che contiene testo, schermata, software, Icona del computer
Descrizione generata
automaticamente](./resources/images/media/image28.png)
Select "Allow connections" and click "Next".

![Immagine che contiene testo, elettronica, schermata, software
Descrizione generata
automaticamente](./resources/images/media/image29.png)
Now select the kind of network that you are using, by default it should
be "Private", if you are using a different kind of network, please
select the option that best fits your configuration.

![Immagine che contiene testo, schermata, software, Icona del computer
Descrizione generata
automaticamente](./resources/images/media/image30.png)
Insert any name you like and then click on "Complete".

![Immagine che contiene testo, schermata, software, schermo Descrizione
generata
automaticamente](./resources/images/media/image31.png)
# Connection of the SDR to the PC

Connection of the transceiver to the PC is performed using an
Ethernet/IP protocol, make sure to use high quality network equipment
and cables to achieve best results.

## Default Olliter SDR IP address

The transceiver comes with a preconfigured IP address set to
192.168.1.111, if this address is valid on your local network (meaning
your local network has an address family like 192.168.1.X and the subnet
mask is 255.255.255.0), you can just plug the device to the local
network and skip the IP address setup guide.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         Before applying any voltage to the SDR, connect the device to
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   your home switch/router using a high-quality CAT5 (or superior)
  height="0.36527777777777776in"}                                                                                                ethernet cable
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         The transceiver can only communicate at 1Gbps, if the
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   switch/router or the master PC does not support such speed, the
  height="0.36527777777777776in"}                                                                                                connection may be unavailable or unstable
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Sample Ethernet connection

The following schematic illustrates the recommended connection of the
SDR device to the PC.

> ![Immagine che contiene testo, computer, elettronica, Schermo del
> computer Descrizione generata
> automaticamente](./resources/images/a42f45266f8b697997a33d50c3cad1939f357c95.png){width="5.357465004374453in"
> height="2.8049146981627295in"}

## Changing the Olliter SDR IP address

Management of the IP address is performed using OL-Master, if the
default IP address (192.168.1.111) is not valid or available on your
local network, follow this procedure to change it to a valid one.

### Connect the device to the PC

Using a straight CAT5 Ethernet cable, connect the Olliter SDR to the PC
(make sure the PC has an Ethernet interface that supports 1Gbps
communication)

![Immagine che contiene elettronica, testo, computer, Schermo del
computer Descrizione generata
automaticamente](./resources/images/cf512e5c0ffda0f080d25444c6d1b24657b0b1f6.png)
### Manually set the IP address of the PC

On the Windows PC, open Control Panel and select "Network and internet".

![Pannello di
controllo](./resources/images/media/image34.tmp)
Select "Network and sharing"

![Rete e
Internet](./resources/images/media/image35.tmp)
Click on "Change adapter settings" on the left side.

![Centro connessioni di rete e
condivisione](./resources/images/media/image36.tmp)
Right click the Ethernet interface that was used to connect the SDR
device and open the Properties menu.

![Immagine che contiene testo, schermata, software, Icona del computer
Descrizione generata
automaticamente](./resources/images/media/image37.png)
Scroll down to select "Internet protocol version 4 (TCP/IPv4)" and then
click on "Properties".

![Immagine che contiene testo, elettronica, schermata, software
Descrizione generata
automaticamente](./resources/images/media/image38.png)
Click on the radio button to enable "Use the following IP address" and
then input 192.168.1.10 as IP address and 255.255.255.0 as subnet mask.
Leave default gateway and the DNS empty.

![Immagine che contiene testo, elettronica, schermata, schermo
Descrizione generata
automaticamente](./resources/images/media/image39.png)
Click "Ok" on all dialogs to save the settings and execute OL-Master

### Setting the device address using OL-Master

Once the device is plugged, and the Ethernet interface is configured,
turn on the transceiver and wait a couple of seconds for the device to
initialize.

After executing the software, an error message will appear, informing
the user that the connection to the device is not available, click OK to
proceed.

If the dialog does not appear, it means that OL-Master was able to
discover the device on the local network using UDP broadcast, this does
not impact the procedure.

![Immagine che contiene testo, schermata, schermo, Carattere Descrizione
generata
automaticamente](./resources/images/media/image40.png)
Once the software has started, click on the "FW Maintenance" menu on the
top bar.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image41.tmp)
A dialog will appear listing the devices that were discovered on the
local network, the Olliter SDR should show up, select it from the list.

![Firmware & IP
Address](./resources/images/media/image42.tmp)
In the central part of the dialog, type in the new IP address to be used
by the device, the IP address must be valid on your local network and
must not be used by any other device.

After inserting the IP address, click on Change IP to persist the
settings to the device, the SDR should now reboot.

![Firmware & IP
Address](./resources/images/media/image43.tmp)
### Restore the default IP settings of the PC

Once the IP address of the transceiver is properly configured to a valid
address, the master PC can be reconfigured to DHCP mode or the original
IP address that was previously configured.

On the Windows PC, open Control Panel and select "Network and internet".

![Pannello di
controllo](./resources/images/media/image34.tmp)
Select "Network and sharing"

![Rete e
Internet](./resources/images/media/image35.tmp)
Click on "Change adapter settings" on the left side.

![Centro connessioni di rete e
condivisione](./resources/images/media/image36.tmp)
-   

Right click the Ethernet interface that was used to connect the SDR
device and open the Properties menu.

![Immagine che contiene testo, schermata, software, Icona del computer
Descrizione generata
automaticamente](./resources/images/media/image37.png)
Scroll down to select "Internet protocol version 4 (TCP/IPv4)" and then
click on "Properties".

![Immagine che contiene testo, elettronica, schermata, software
Descrizione generata
automaticamente](./resources/images/media/image38.png)
Restore the previous IP address settings as needed.

![Immagine che contiene testo, elettronica, schermata, schermo
Descrizione generata
automaticamente](./resources/images/media/image44.png)
Now, please connect the Olliter SDR as shown in the Sample Ethernet
connection. chapter.

# Usage of OL-Master

## Configuring OL-Master

All the following settings are accessed using the Setup menu of the
OL-Master application, in OL-Master, click the Setup menu, then follow
the subsequent instructions.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image45.tmp)
Settings are persisted using the *Save* or the *Save and Close* buttons.

![Immagine che contiene testo, elettronica, schermata, schermo
Descrizione generata
automaticamente](./resources/images/media/image46.png)
### Configuring the Olliter SDR address

In *General* \> *HW Config* make sure the "*Use static IP Address*"
option is enabled, then insert the IP address of the Olliter SDR that
was configured.

This address is 192.168.1.111 by default, if it was manually changed
following the above procedure, please input the new IP address that was
configured.

Once the IP address has been configured and selected (using the radio
button on the right), click Save and close the dialog box.

![Immagine che contiene testo, elettronica, schermata, schermo
Descrizione generata
automaticamente](./resources/images/media/image47.png)
### Configuring the operator settings

In *General* \> *Options*, set the callsign and grid locator of the
station.

![Immagine che contiene testo, elettronica, schermata, schermo
Descrizione generata
automaticamente](./resources/images/media/image48.png)
### Configuring the audio interface

If the user wants to enable the audio to be routed to the master PC, the
following procedure is needed.

In *Audio* \> *Audio & Common VAC* configure the *Driver* to MME, select
the desired *Input* and *Output* devices, then select "*Enable PC
Speaker via common VAC*".

The onboard speakers can be deactivated using the "*Local speaker
disable*" option.

![Immagine che contiene testo, schermata, schermo, software Descrizione
generata
automaticamente](./resources/images/media/image49.png)
If a microphone is connected to the radio, the RX Only option can be
checked to exclude audio transmission from the PC

![](./resources/images/da0f40fd02c37219095ae9af50a9567f14234e42.png)
### Configuring the receiver bandwidth

The SDR is capable of receiving and displaying a wide area of the RF
spectrum, the receiver span can be configured in *General* \> *HW
Config* \> *Sample Rate*.

The spectrum span that is rendered is roughly the 80% of the sample rate
set in the settings menu, for example if 192000 samples per second are
selected, the displayed spectrum will be roughly 180KHz.

The recommended sample rate is 192000 samples per second.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         As the sample rate is increased, more system and network
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   resources will be required by the software, please adjust the
  height="0.36527777777777776in"}                                                                                                settings accordingly
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

![Immagine che contiene testo, elettronica, schermata, schermo
Descrizione generata
automaticamente](./resources/images/media/image52.png)
### Configuring the refresh rate

The refresh rate of the receivers windows can be adjusted in *Display*
\> *General*. The suggested value is between 10 and 20 frames per
second.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         Increasing the refresh rate can significantly impact the system
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   load, if the system starts lagging or the UI starts behaving,
  height="0.36527777777777776in"}                                                                                                reduce the "Main Display FPS" value
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

![Immagine che contiene testo, elettronica, schermo, schermata
Descrizione generata
automaticamente](./resources/images/media/image53.png)
## Starting the device

Once the device settings were configured by the user, the device can now
be started using the PWR button, the spectrum should animate, and audio
will start.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image54.tmp)
[\
]{.underline}

## Controlling the transceiver

This chapter will cover the main settings of the OL-Master software,
such as changing band, changing mode or interacting with the spectrum.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/4ea9dd2ed4ac68c4fed3fe430336de573f890ea6.png)
### Selecting a different band

The transceiver can operate on all amateur bands of HF plus the 50MHz
(6mt) band. The received band can be selected using the dedicated
buttons.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image56.tmp)
### Tuning a frequency

There are multiple ways to tune the received frequency, the main ones
are by panning the receiver spectrum or by selecting the frequency using
the dedicated numeric input.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image57.tmp){width="5.559701443569554in"
height="3.8447200349956256in"}![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image57.tmp)
### Setting the visualization mode

Different viewing modes can be selected for the receivers, each band
will save the view setting that is restored every time the band is
recalled.

![](./resources/images/media/image58.png)
### Interacting with the spectrum

The receiver spectrum can be interacted using the spectrum controls,
these allows zooming, panning and setting the tune step.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image59.tmp)
The spectrum can be rendered to display the average or the peak
mode[.]{.underline}

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image59.tmp)
### Setting the receiver mode

All main operative modes are supported by the transceiver, this can be
selected using the dedicated buttons.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image60.tmp)
Then, for each operating mode, the bandwidth can be adjusted as needed.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image61.tmp)
### Adding additional receivers

RX1 is located in the main window of the software, additional receivers
can be enabled using the RX2, RX3 and RX4 buttons in the main window.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         Using additional receivers may significantly impact the system
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   load, if the system starts to lag, reduce the number of
  height="0.36527777777777776in"}                                                                                                receivers, or reduce the sample rate.
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image62.tmp)
![Immagine che contiene schermata, testo, Software multimediale,
software Descrizione generata
automaticamente](./resources/images/a49589dfb85f23b5e752a1e7b76355ed175bc99b.png)
### Adjusting the receivers volume

The main and sub volumes, per each receiver can be configured using the
*Volume* controls group.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image64.tmp)
### DSP options

Multiple software-based filters can be added to any receiver mode, these
can significantly improve the reception of a given signal. Some filters
are tuned to improve the voice quality, others to remove clicking,
background noise or unwanted whistles. Filters can be enabled using the
dedicated buttons.

![ OL-Master v1.0.6 (6 Jun 2024) \-- RX1 -
CH1](./resources/images/media/image65.tmp)
## Firmware upgrade

Upgrade of the firmware is performed using the OL-Master application
with a dedicated menu.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         Although the Olliter SDR has a recovery mode that can be enabled
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   in case of major firmware failures, the firmware upgrade is a
  height="0.36527777777777776in"}                                                                                                delicate process that requires some attention. Please read this
                                                                                                                                 chapter carefully before starting the procedure.
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         Make sure to close all background apps and to have a reliable
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   power source for both the PC and the transceiver before
  height="0.36527777777777776in"}                                                                                                attempting a firmware upgrade.
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Extract the ZIP file containing the firmware anywhere on the local PC to
get the *.hex* file which contains the new firmware.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         Extract the file on the local hard drive, do not use USB sticks,
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   network drive or other unreliable locations that may create
  height="0.36527777777777776in"}                                                                                                latency or issues.
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Once the file is extracted you should see something like this:

![](./resources/images/2deb3313b882db5c6cb6f0fdd90a51e9d879e76f.png)
Make sure the transceiver is ON and reachable on the local network, then
open OL-Master and select the *FW Maintenance* menu. The SDR should be
detected automatically by the software.

![](./resources/images/1ee15ab771b6ea80b7b1ae20172ddb0194170c44.png)
Using the Select button, navigate to the .hex file that was just
extracted and select it.

![](./resources/images/659766a21245bc4e387668b3b92ac18462d10dc8.png)
Once the file is selected, click the Program button to start the upgrade
procedure.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         The upgrade procedure will take about a minute, please be
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   patient.
  height="0.36527777777777776in"}                                                                                                
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

![](./resources/images/42461e5c391b24857e1eba8fd208316b921cd597.png)
At first, the software will erase the content of the FPGA, this is a
monolithic task, so the software may look like it's frozen, please be
patient and just wait for the process to complete. Once the erase task
is completed, you should see the progress bar moving, and when it
reaches 100%, the transceiver should be restarted automatically.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ![warning - 2S.I. Software e Servizi per l\'Ingegneria                                                                         If the process hangs after some minutes, or if any error occurs,
  S.r.l.](./resources/images/0cde365bbde16b18cec1e5476298a322f1da9dae.png){width="0.4173611111111111in"   please contact our customer assistance to get further
  height="0.36527777777777776in"}                                                                                                assistance.
  ------------------------------------------------------------------------------------------------------------------------------ ----------------------------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Wait for the upgrade window to close automatically after a couple of
seconds, then the process is complete, and the transceiver can be used
as normal.

# General recommendations 

## Digital modes (FT8)

The following steps outline the proper configuration of the Olliter SDR
for operating in FT8 mode. Ensure that the settings are applied
carefully to avoid issues with audio processing and transmission.

### Using Virtual Audio Cable (VAC)

-   VAC RX1: Set the software to use VAC RX1 (or RX2, RX3, or RX4) for
    audio input, but do not use the \"Common VAC\" setting. This
    configuration ensures that the audio is correctly routed through the
    system without interference from other processes.

-   VAC Type: Use monodirectional VAC for both input and output. You may
    need to configure separate VACs for input and output if your version
    supports bidirectional audio (such as Muzychenko\'s VAC). If your
    system uses bidirectional VAC, it is possible to use a single VAC
    for both input and output.

### Audio Levels and Filters

-   Compressor and Leveler: In FT8 mode, disable both the Compressor and
    Leveler. These audio processors are not required in FT8 and may
    cause distortion or improper modulation of the digital signal.

-   VAC RX Level: Set the VAC RX level to approximately -27 dB. This
    ensures that the audio level is appropriate for digital signal
    processing, avoiding overload.

-   VAC TX Level: Set the VAC TX level to 0 dB. This level ensures that
    the transmitted signal is clear and within the normal operational
    range for FT8 transmissions.

### Transmit and Receive Filters

-   TX Audio Filter: When WSJT-X is set to Radio -\> Split: NONE, the TX
    audio filter of the Olliter SDR must be adjusted to match the RX
    filter and the bandwidth used by FT8. For example, if you are using
    FT8 between 200 Hz and 3500 Hz, the TX audio filter should also be
    set between 200 Hz and 3500 Hz. Additionally, the RF filter should
    be aligned to this range.

-   Split Mode (RIG or FAKE): If using WSJT-X with the \"Split\" mode
    set to either RIG or FAKE, there is no need to modify the TX audio
    filter beyond its normal range. In this case, set the TX filter to
    300 Hz to 2700 Hz, and FT8 will adjust the RF frequency to keep the
    audio signal centered within the bandwidth. The RF filter can be set
    freely, but note that it will limit the FT8 band visible on WSJT-X
    or similar software.

## SSB mode

When switching from FT8 or other digital modes to SSB, several
adjustments need to be made to ensure optimal audio performance. Follow
these instructions for setting up the Olliter SDR for SSB operations.

### Microphone Voltage Considerations

-   Yaesu Microphones: Typically require 5V for proper operation.

-   ICOM Microphones: Typically require 8V. Verify the correct voltage
    before connecting the microphone to prevent damage or malfunction.

Please refer to the Microphone input chapter to see how to change the
microphone voltage.

### Switching from FT8 to SSB

-   Deactivate VAC: After using FT8 or other digital modes, ensure that
    VAC RX1 (or RX2, RX3, RX4) is deactivated before switching to SSB.
    Failure to do so may prevent audio from being transmitted properly.

### Audio Processing Settings for SSB

-   Leveler: Reactivate the Leveler when operating in SSB mode. The
    recommended setting is 7 dB, which helps maintain consistent output
    levels. After adjusting, verify that the Automatic Level Control
    (ALC) is set to approximately 3 dB.

-   Compressor: For SSB, it is recommended to enable the Compressor at 8
    dB, or even 10 dB, especially when using the PureSignal feature.
    This improves the overall signal clarity and transmission quality.

### Transmitting Filter Settings

-   TX Audio Filter: In the Setup -\> Transmitting menu, adjust the TX
    audio filter according to your preferences. The default range for
    voice transmission is 300 Hz to 2700 Hz; this range provides a
    balance between intelligibility and bandwidth usage.

# Troubleshooting

This chapter contains some issues that may occur while operating the
transceiver, if the proposed solution does not work for you, please get
in touch with the customer care department.

## Olliter SDR Not Powering Up

Some linear power supplies with large filtering capacitors can cause the
Olliter SDR to power up improperly if it is connected before the power
supply is turned on. This occurs because the slow charging process of
the power supply\'s output filters triggers a low voltage alert in the
transceiver, activating the protection circuit and cutting off the
power.

**Solution**: Resetting the Protection Circuit

If the Olliter SDR does not show the green light when pressing the power
button after turning on the power supply, follow these steps:

-   Disconnect the Input Voltage

    -   Ensure the power supply remains on.

    -   Disconnect the input voltage from the Olliter SDR.

-   Wait for a Few Seconds:

    -   Allow a couple of seconds for the protection circuit to reset.

-   Reconnect the Power:

    -   Reconnect the input voltage to the Olliter SDR.

By following these steps, the protection circuit should reset, and the
Olliter SDR should power up correctly. If the issue persists, ensure all
connections are secure and the power supply is functioning correctly.

## OL-Master reporting an error at startup

If the OL-Master software throws an error at startup stating "Cannot
load DLL 'ChannelMaster', cannot find the specified module" means that
some dependencies are not satisfied.

**Solution**: Refer to the System requirements chapter and make sure all
software and hardware requirements are met.

## No voice from the front-panel microphone when transmitting

This issue can relate to multiple reasons, both software and hardware.

### VAC is enabled on the receiver

VAC will have priority over the microphone audio when transmitting, make
sure the VAC is disabled on the current receiver from the Setup menu to
enable the audio stream from the microphone.

**Solution**: disable VAC for the receiver that is being used

### Wrong microphone style

Each transceiver is shipped with a dedicated microphone wiring, a
different brand of microphone cannot be used without switching to a new
wiring kit. Contact the customer assistance service to receive
information on the wiring that was shipped with your transceiver or to
request a new microphone wiring kit.

**Solution**: verify the microphone wiring that was installed

-   Wrong microphone voltage

Different microphone brands have different settings, make sure the right
microphone supply voltage was selected in the Setup menu.

**Solution**: verify the microphone supply voltage

### Improper microphone gain setting

Microphone gain is set from the upper-left panel of the OL-Master
software when in SSB mode, adjust the slider to get a good quality of
the transmitted audio.

Additional settings can be found in the Setup menu, like preamplifier or
the adjustment range of the main slider.

**Solution**: verify the microphone gain.

## Additional windows (like EiBi or Cluster) are not showing up

Windows sometimes "hides" some UI elements outside the screen
boundaries, just restore the window position to show it up.

**Solution**: Restoring the new window position

Hover the mouse to the OL-Master icon in the Windows bar (usually the
bottom part of your screen), you should see two or more windows as in
the picture

![Immagine che contiene testo, schermata, software, Software
multimediale Descrizione generata
automaticamente](./resources/images/media/image66.png)
Right click on the window that has disappeared (the DX Spider Client in
this example) and select "Maximize". The window should now appear on
your main screen fully maximized, click on the title bar and drag it
anywhere to return to its normal size. The new location should be stored
in the database and recovered at the next reopening.

## User interface is not updating or feels slow

If the UI is laggy or unresponsive, it may be caused by a CPU overload,
the bottom bar of OL-Master shows the CPU utilization, if this is too
high, or even if the number is low but the interface feels "slow",
please consider closing other software running in background or use a
more powerful computer.

Another way to reduce the computing load of the software is to reduce
the sample rate from the OL-Master "Setup" menu, closing additional
receivers, turn off some advanced filtering (like NB2 or NR2) or
disabling external services like cluster or EiBi.

Please remember that on SDR devices, the biggest part of the job is
performed by the computer, so a powerful transceiver, requires an
adequately powerful PC.

**Solution**: Reduce the sample rate, close all background applications
or consider a PC hardware upgrade

## Audio from the speakers feels clicky or saturated

Audio levels is monitored by the AGC algorithm, if the AGC is set to any
manual setting and the volume is too high, the audio will be saturated
and sound bad.

**Solution**: lower the audio volume or enable AGC

## I connected the transceiver to a different PC and all settings were reset

Settings of the transceiver are not stored in the transceiver itself,
they are stored in an xml file which lives in the *%appdata%/OL-Master*
folder of the control PC. This file should be copied across the
different devices where OL-Master is installed

**Solution**: copy the database file to the new PC

## I get a weird error at startup telling my database cannot be loaded for some reason

The database probably got corrupted due to some hardware or software
issues, automatic backups are created by the software in the
%appdata%/OL-Master/Backups/Automatic folder, these files can be copied
back to *%appdata%/OL-Master* and renamed to *database.xml* to restore a
previous configuration

**Solution**: restore one of the automatic backups of the database

## You can't stop using the Olliter SDR transceiver

We're glad that you got to this point, if you can't stop using the
Olliter SDR, it means that our engineers have worked really hard to get
the most out of the best hardware which is currently available on the
market and you're enjoying the result. Please let's keep in touch with
our team using the Olliter website
[www.olliter.com](http://www.olliter.com) or our social media so you
will be notified at every new software release or be the first one to
test our new hardware.

3.  []{#_Toc1091918595 .anchor}Additional resources

Some additional material was developed by our engineers to help you
troubleshoot or configure some sections of the software, here are some
links that every user should check out:

## Olliter website

This is the official website where all news are published, here you can
find manuals, software and all the information that are created for our
customers.

Olliter website: <https://www.olliter.com/>

Downloads section: <https://www.olliter.com/download.html>

OL-SDR page: <https://www.olliter.com/sdr.html>

## Olliter YouTube channel

This is the main source of information on how to configure third-party
software (like WSJT-X, CW-Skimmer or DX-Lab).

Link to the Olliter YouTube channel:
<https://www.youtube.com/@OLLITER-EU>

Link to the OL-Master Playlists:
<https://www.youtube.com/@OLLITER-EU/playlists>

## Olliter on Facebook

Here you can find some news about our devices, plus some previews of the
devices that are being developed or tested.

Link to the Olliter Facebook page: <https://www.facebook.com/Olliter/>

## Olliter on Instagram

Wanna see some cool stuff? Some pictures from events, presentations or
our laboratories? Instagram is the place for you.

Link to the Olliter Instagram page:
<https://www.instagram.com/_olliter_/>
