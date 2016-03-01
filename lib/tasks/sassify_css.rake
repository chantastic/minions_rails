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
    sh "for file in #{scss_dir}/*-!xs.scss; do sed -i '' 's/319px/\#\{\$xs - 1\}px/' ${file}; done"
  end

  task :variablize_xsmall do
    sh "for file in #{scss_dir}/*-xs.scss; do sed -i '' 's/320px/\#\{\$xs\}px/' ${file}; done"
  end

  task :variablize_sub_small do
    sh "for file in #{scss_dir}/*-!sm.scss; do sed -i '' 's/543px/\#\{\$sm - 1\}px/' ${file}; done"
  end

  task :variablize_small do
    sh "for file in #{scss_dir}/*-sm.scss; do sed -i '' 's/544px/\#\{\$sm\}px/' ${file}; done"
  end

  task :variablize_sub_medium do
    sh "for file in #{scss_dir}/*-!md.scss; do sed -i '' 's/767px/\#\{\$md - 1\}px/' ${file}; done"
  end

  task :variablize_medium do
    sh "for file in #{scss_dir}/*-md.scss; do sed -i '' 's/768px/\#\{\$md\}px/' ${file}; done"
  end

  task :variablize_sub_large do
    sh "for file in #{scss_dir}/*-!lg.scss; do sed -i '' 's/991px/\#\{\$lg - 1\}px/' ${file}; done"
  end

  task :variablize_large do
    sh "for file in #{scss_dir}/*-lg.scss; do sed -i '' 's/992px/\#\{\$lg\}px/' ${file}; done"
  end

  task :variablize_sub_xlarge do
    sh "for file in #{scss_dir}/*-!xl.scss; do sed -i '' 's/1199px/\#\{\$xl - 1\}px/' ${file}; done"
  end

  task :variablize_xlarge do
    sh "for file in #{scss_dir}/*-xl.scss; do sed -i '' 's/1200px/\#\{\$xl\}px/' ${file}; done"
  end

  task :variablize_white do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#ffffff/\$white/' ${file}; done"
  end

  task :variablize_navy do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#001f3f/\$navy/' ${file}; done"
  end

  task :variablize_blue do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#0074d9/\$blue/' ${file}; done"
  end

  task :variablize_aqua do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#7fdbff/\$aqua/' ${file}; done"
  end

  task :variablize_teal do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#39cccc/\$teal/' ${file}; done"
  end

  task :variablize_olive do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#3d9970/\$olive/' ${file}; done"
  end

  task :variablize_green do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#2ecc40/\$green/' ${file}; done"
  end

  task :variablize_lime do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#01ff70/\$lime/' ${file}; done"
  end

  task :variablize_yellow do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#ffdc00/\$yellow/' ${file}; done"
  end

  task :variablize_orange do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#ff851b/\$orange/' ${file}; done"
  end

  task :variablize_red do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#ff4136/\$red/' ${file}; done"
  end

  task :variablize_maroon do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#85144b/\$maroon/' ${file}; done"
  end

  task :variablize_fuchsia do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#f012be/\$fuchsia/' ${file}; done"
  end

  task :variablize_purple do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#b10dc9/\$purple/' ${file}; done"
  end

  task :variablize_gray do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#aaaaaa/\$gray/' ${file}; done"
  end

  task :variablize_silver do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#dddddd/\$silver/' ${file}; done"
  end

  task :variablize_black do
    sh "for file in #{scss_dir}/*color*.scss; do sed -i '' 's/\#111111/\$black/' ${file}; done"
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
    "variablize_xlarge",
    "variablize_white",
    "variablize_navy",
    "variablize_blue",
    "variablize_aqua",
    "variablize_teal",
    "variablize_olive",
    "variablize_green",
    "variablize_lime",
    "variablize_yellow",
    "variablize_orange",
    "variablize_red",
    "variablize_maroon",
    "variablize_fuchsia",
    "variablize_purple",
    "variablize_gray",
    "variablize_silver",
    "variablize_black",
  ]
end
