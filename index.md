# kidb

a repository for complete circuits designed in KiCAD

KiCAD is great.  Well, mostly. It's got its problems, but it's open source and
you don't have to fit your circuits into some stupid bounding box or find work
arounds to get them to a different pcb manufacturer.  However, I find most of
my time developing circuits is spent finding some circuit diagram that will
work (usually on Google Images, sadly), and then testing that, transcribing it
into KiCAD, transcribing it into LTSpice, finding the right parts on Digikey or
Newark or whatnot, and iterating on that design until I figure out things that
the original circuit designer had in mind.

These problems felt really familiar to me: they were a lot like what happens
when trying to code new functionalities.  There's no reason for a thousand
different people every year to make the same mistake in designing and testing a
negative 5 volt regulated supply, just like there's no point in people making
the same mistakes implementing a heap sort.  Programmers use ``git`` to solve
this, why shouldn't hardware designers?  ``git`` would let hardware designers
use the issues feature, iterate on their circuits leaving messages for why they
changed, and even import others circuits into their own.

KiCAD is pretty conducive to ``git``, because it's open source and plain text,
but it still needs some help. I plan to make this repo a website for sharing
circuits.  If anybody sees this repo, what is below is an outline of how I plan
to implement this sharing service for circuits, and the features I will try to
get to outside of my day job.  Send me an issue/feature request if you want
anything else!

## Base Functionality

- A website with tagging system to browse circuits
  - Input voltage
  - Function
  - Through hole soldering or SMD or ...
  - Cost
- Cloning of circuits designed in KiCAD
  - A binary to upload circuits
    - split some files off to gh-pages branch and link that to the main repo
  - Libraries aren't consistent across KiCADs, so we need a binary to take all footprints and schematic symbols into one library before pushing
  - A binary to start a template of the folder structure needed
- "Smart" BOM
  - Some deep learning? to find parts needed on Digikey, Newark, etc.
- Simulation
  - LTSpice? or not because that's proprietary
- Code
  - Arduino .inos or something
- Circuit import INTO existing circuit
  - I don't even know if KiCAD can do this
