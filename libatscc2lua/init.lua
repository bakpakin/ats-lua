local PATH = (...):match("(.+)%.[^%.]+$") or (...)

require(PATH .. '.CATS.basics_cats')
require(PATH .. '.CATS.bool_cats')
require(PATH .. '.CATS.float_cats')
require(PATH .. '.CATS.integer_cats')
require(PATH .. '.CATS.print_cats')
