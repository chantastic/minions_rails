namespace :minions_rails do
  def css_dir
    "app/assets/stylesheets/minions_rails/css"
  end

  def scss_dir
    "app/assets/stylesheets/minions_rails/scss"
  end

  task :dump do
    sh "rm -rf #{scss_dir}"
  end

  task :create do
    sh "mkdir #{scss_dir}"
  end

  task :duplicate do
    sh "cp #{css_dir}/* #{scss_dir}"
  end

  task :rename do
    sh "for file in #{scss_dir}/*; do " + 'mv "${file}" "${file/.css/.scss}"; done'
  end

  task :variablize_sub_xsmall do
    sh "for file in #{scss_dir}/*-!xs.scss; do sed -i '' 's/319px/\#\{\$xs -1\}px/' ${file}; done"
  end

  task :variablize_xsmall do
    sh "for file in #{scss_dir}/*-xs.scss; do sed -i '' 's/320px/\#\{\$xs\}px/' ${file}; done"
  end

  task :variablize_sub_small do
    sh "for file in #{scss_dir}/*-!sm.scss; do sed -i '' 's/543px/\#\{\$sm -1\}px/' ${file}; done"
  end

  task :variablize_small do
    sh "for file in #{scss_dir}/*-sm.scss; do sed -i '' 's/544px/\#\{\$sm\}px/' ${file}; done"
  end

  task :variablize_sub_medium do
    sh "for file in #{scss_dir}/*-!md.scss; do sed -i '' 's/767px/\#\{\$md -1\}px/' ${file}; done"
  end

  task :variablize_medium do
    sh "for file in #{scss_dir}/*-md.scss; do sed -i '' 's/768px/\#\{\$md\}px/' ${file}; done"
  end

  task :variablize_sub_large do
    sh "for file in #{scss_dir}/*-!lg.scss; do sed -i '' 's/991px/\#\{\$lg -1\}px/' ${file}; done"
  end

  task :variablize_large do
    sh "for file in #{scss_dir}/*-lg.scss; do sed -i '' 's/992px/\#\{\$lg\}px/' ${file}; done"
  end

  task :variablize_sub_xlarge do
    sh "for file in #{scss_dir}/*-!xl.scss; do sed -i '' 's/1199px/\#\{\$xl -1\}px/' ${file}; done"
  end

  task :variablize_xlarge do
    sh "for file in #{scss_dir}/*-xl.scss; do sed -i '' 's/1200px/\#\{\$xl\}px/' ${file}; done"
  end

  desc "Create creates a sass file for every css file in the /css directory."
  task sassify_css: [
    "dump",
    "create",
    "duplicate",
    "rename",
    "variablize_sub_xsmall",
    "variablize_xsmall",
    "variablize_sub_small",
    "variablize_small",
    "variablize_sub_medium",
    "variablize_medium",
    "variablize_sub_large",
    "variablize_large",
    "variablize_sub_xlarge",
    "variablize_xlarge"
  ]
end
