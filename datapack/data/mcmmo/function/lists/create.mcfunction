$execute if data storage $(target) Count run return fail
$data merge storage $(target) { \
  Data: [], \
  Count: 0 \
}
return 1