Object = require './object'

class Circle extends Object
  name: 'circle'
  vars:->
    @degree       = @default prop: 'degree',       def: 360
    @degreeOffset = @default prop: 'degreeOffset', def: 0
    super

  render:->
    @renderStart(); @rotation(); @radius()

    @ctx.arc(1, 1, 1, @degreeOffset*@deg, (@degree+@degreeOffset)*@deg, false)
    
    @ctx.restore(); @stroke()


module.exports = Circle