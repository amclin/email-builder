email-builder
=============

Basic build system for processing HTML + SCSS into an email-ready file with inlined CSS


## Requirements
* XCode
* Ruby 1.9.x
* Compass
* Hpricot
* Premailer

###Install compass
http://compass-style.org/install/

`gem update --system`

`gem install compass`


### Install Premailer
`gem install hpricot`

`gem install premailer`



## How to Use
* Any CSS that should end up inline (almost everything) should be placed in src/css/scss/inline.scss or a child file that gets included when that file is built.

* Any CSS that should remain in the document head (media queries mostly) should be placed in src/css/scss/head.scss or a child file included when that file is built.

* Images should go into the assets folder

* From the command line at the root of your project, run "ant compile". The results will be dumped out into the build folder.

##Development vs. Production
By default, email builder generates dev-appropriate files (CSS has comments for debugging purposes). To output production-ready files with CSS comments removed and compressed, change line 7 of build.xml to this:
`<property name="env" value="prod" />`


### Inspiration from:
* [HTML5 Boilerplate's build system](https://github.com/h5bp/ant-build-script)
* [Email Boilerplate](https://github.com/seanpowell/Email-Boilerplate)
** [Jag White's improvements](https://github.com/jagwire16/Email-Boilerplate)
