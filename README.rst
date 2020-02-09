==============================================
An introduction to Python virtual environments
==============================================

This repository contains the materials for a `CamPUG workshop on virtual
environments`_, for Tuesday 4th February 2020.

.. _`CamPUG workshop on virtual environments`: https://www.meetup.com/CamPUG/events/268043892

It includes both slides and (extended) notes (which can be read alongside the
slides, or independently).

The session is intended to be a workshop at the start, with everyone working
through how to create / activate / deativate virtual environments, followed by
talking about the other tools that are used around virtual environments, and
some of their history.

Both the slides and the notes are written using reStructuredText_.

The slides are converted to PDF slides using pandoc_ and beamer_, and the
notes are converted to HTML using `rst2html.py`_.

.. _CamPUG: https://www.meetup.com/CamPUG
.. _`2020-02-04`: https://www.meetup.com/CamPUG/events/268043892
.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
.. _pandoc: https://pandoc.org
.. _beamer: https://github.com/josephwright/beamer
.. _`rst2html.py`: https://docutils.sourceforge.io/docs/user/tools.html

Note that the github rendering of the reStructuredText is not great in some
places, and so I have also commited the HTML rendering of the notes.

Changes since the workshop
==========================
I've altered some things as a result of feedback from the workshop:

* Slides and notes:

  * Explicitly show the ``exit()`` command where I want people to leave the
    Python shell.
  * Mention use of ``where`` on Windows, to match the use of ``which`` on
    unix, for finding where a program lives (I didn't know about that).

* Notes only:

  * Briefly mention the Enthought Tool Suite's ``edm`` tool, since I mention
    ``conda``.
  * Briefly mention git bash on Windows - it *should* work.

--------

  |cc-attr-sharealike|

  This slideshow and its related files are released under a `Creative Commons
  Attribution-ShareAlike 4.0 International License`_.

.. |cc-attr-sharealike| image:: images/cc-attribution-sharealike-88x31.png
   :alt: CC-Attribution-ShareAlike image

.. _`Creative Commons Attribution-ShareAlike 4.0 International License`: http://creativecommons.org/licenses/by-sa/4.0/

