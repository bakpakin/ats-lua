package.preload['libatscc2lua'] = function()
    return require('../../libatscc2lua')
end

require "output.triangle_dats"

triangle_dynload()
