

Player2 = {}

function Player2:load()
   self.x = love.graphics.getWidth()-50
   self.y = love.graphics.getHeight() / 2
   self.width = 20
   self.height = 100
   self.speed = 500
end


function Player2:update(dt)
   self:move(dt)
   self:checkBoundaries()
end


function Player2:move(dt)
   if love.keyboard.isDown("up") then
      self.y = self.y - self.speed * dt
   elseif love.keyboard.isDown("down") then
      self.y = self.y + self.speed * dt
   end
end

function Player2:checkBoundaries()
   if self.y < 0 then
      self.y = 0
   elseif self.y + self.height > love.graphics.getHeight() then
      self.y = love.graphics.getHeight() - self.height
   end
end


function Player2:draw()
   love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
