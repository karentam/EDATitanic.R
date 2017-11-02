Exploratory Data Analysis ggplot Titanic Exercise

titanic is avaliable in your workspace

1 - Check the structure of titanic
str(titanic)

# 'data.frame':	714 obs. of  4 variables:
# $ Survived: int  0 1 1 1 0 0 0 1 1 1 ...
# $ Pclass  : int  3 1 3 1 3 1 3 3 2 3 ...
# $ Sex     : Factor w/ 2 levels "female","male": 2 1 1 1 2 2 2 1 1 1 ...
# $ Age     : num  22 38 26 35 35 54 2 27 14 4 ...

2 - Use ggplot() for the first instruction
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge")

Plot: https://github.com/karentam/EDATitanic.R/blob/master/Titanic%20plot%202.png?raw=true)

3 - Plot 2, add facet_grid() layer
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge") + facet_grid(. ~ Survived)

Plot: https://github.com/karentam/EDATitanic.R/blob/master/Titanic%20plot%203.png?raw=true)

4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

5 - Plot 3, but use the position object from instruction 4
ggplot(titanic, aes(x = Pclass, y = Age, col = Sex)) +
  geom_point(size = 3, alpha = 0.5, position = posn.jd) + facet_grid(. ~ Survived) 

Plot: https://github.com/karentam/EDATitanic.R/blob/master/Titanic%20plot%205.png?raw=true)

