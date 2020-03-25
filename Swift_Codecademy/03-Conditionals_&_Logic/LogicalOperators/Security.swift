var correctPassword = false
var lessThanThreeTries = false
var accessThroughTouchID = true
var unlock: Bool

// Write your code below 🔒

if correctPassword && lessThanThreeTries || accessThroughTouchID
  {
    unlock = true
  }
else
{
  unlock = false
}

print(unlock)