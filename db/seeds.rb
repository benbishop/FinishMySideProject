# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

for i in 0..10
   UnfinishedProject.create(:title=> 'Project ' + i.to_s,
   :description=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae libero et nisl adipiscing laoreet. Nulla sagittis faucibus cursus. Vestibulum cursus ultrices leo id accumsan. Sed a augue magna. Ut euismod, leo eget porttitor elementum, urna felis iaculis quam, nec scelerisque enim velit sit amet quam. Nullam condimentum commodo auctor. Nunc vel magna nec orci vehicula consequat nec quis nunc. Duis congue hendrerit ante, eu dapibus est mattis non. In porttitor imperdiet pretium. Pellentesque iaculis tellus eu orci vestibulum id auctor diam viverra. Pellentesque pharetra, nibh ac volutpat adipiscing, nisl ipsum consequat eros, a semper nulla risus non ligula. Integer pulvinar arcu felis.',
   :repo_url=>'http://github.com/project_' + i.to_s,
   :image_url=>'http://placehold.it/260x180')
end