# SixArm.com » Ruby » <br> RDoc template generator like darkfish, hanna, alison, etc.

* Doc: <http://sixarm.com/sixarm_ruby_/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_>
* Repo: <http://github.com/sixarm/sixarm_ruby_>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

This is an RDoc template that we think is easier, cleaner, and better than the usual RDoc template. This works with RDoc 2.4 and on.

For docs go to <http://sixarm.com/sixarm_ruby_/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install 

Bundler:

    gem "", "="

Require:

    require ""


## Examples

To use the template, you use rdoc with the "inline-source" setting and this template:

    rdoc -o doc --template=sixarm_ruby_rdoc_template lib/*.rb

To use the template all the time, you can set the RDOCOPT environment variable:
 
    RDOCOPT="--template=sixarm_ruby_rdoc_template"

To make RubyGems use the template for gem rdocs, you can add this to your gemrc:

    rdoc: --template=sixarm_ruby_rdoc_template


## Changes

* 2012-03-14 1.1.4 Update docs, tests


## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2015 Joel Parker Henderson
