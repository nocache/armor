#Armor

A sample [Sinatra](http://www.sinatrarb.com/) application ready for deployment to [Heroku](http://heroku.com). Using Twitter's [Bootstrap](http://twitter.github.com/bootstrap/) project for style. Both projects are great for rapid prototyping.

**Get Started**

* Clone then cd to this repo.

**Add Bootstrap**

* `$ git submodule init`
* `$ git submodule update`

**Commit**

* `$ git add *` (Make sure all new files are added to the repo)
* `$ git commit -m 'first commit'`

**Push to Heroku**

* `$ heroku create [optional-app-name]` (You can rename your app with `heroku rename`)
* `$ git push heroku master`

[Heroku](http://devcenter.heroku.com/articles/git-submodules) currently dosen't support git submodules so the workaround is to track the submodule using the method below.

<pre class="CodeRay" lang="term"><span class="c">$</span><span class="fu"> cd myapp
</span><span class="c">$</span><span class="fu"> rm -rf `find . -mindepth 2 -name .git`
</span><span class="c">$</span><span class="fu"> git rm --cache `git submodule | cut -f2 -d' '`
</span><span class="c">$</span><span class="fu"> git rm .gitmodules
</span><span class="c">$</span><span class="fu"> git add .
</span><span class="c">$</span><span class="fu"> git config -l | grep '^submodule' | cut -d'=' -f1 | xargs -n1 git config --unset-all
</span><span class="c">$</span><span class="fu"> git commit -m "brought submodules into the main repo"
</span></pre>

Then just build.

[More info](http://devcenter.heroku.com/articles/rack) using Rack apps in Heroku.

*Inspired by Blake Mizerany's [Sinatra-Heroku-App](https://github.com/bmizerany/heroku-sinatra-app).*
