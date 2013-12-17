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
By default, email builder generates dev-appropriate files (CSS has comments for debugging purposes). To output production-ready files with CSS comments removed and compressed, the `evn` property in build.xml from `dev` to "prod":
`<property name="env" value="prod" />`

##Using with other Version Control Systems
By default this script is configured to do [Gmail cache busting](http://anthonymclin.com/busting-gmail-image-caching-build-scripts) by appending the Git revision to image URLs. To make this work for other version control systems, set the `source.control` property at the top of build.xml. Default is `git`. Supported values are `git`,`hg`,`svn`.

### Inspiration from:
* [HTML5 Boilerplate's build system](https://github.com/h5bp/ant-build-script)
* [Email Boilerplate](https://github.com/seanpowell/Email-Boilerplate)
* [Jag White's improvements](https://github.com/jagwire16/Email-Boilerplate)
