install.packages("gapminder")

# Load the gapminder package
library(gapminder)

# Load the dplyr package
library(dplyr)


# Look at the gapminder dataset
gapminder


#filter -> metodo do pacote dplyr onde filtro os valores
# %>% operador chamado pipe 
#utilizando pipe, ele será o primeiro argumento do metodo, caso queira o parametro podemos utilizar .

# Filter the gapminder dataset for the year 1957
filter(gapminder, year == 1957)
gapminder %>% filter(year == 1957)
gapminder %>% filter(., year == 1957)

gapminder %>% filter(country == 'China', year == 2002)

# Sort in ascending order of lifeExp
gapminder %>%
  arrange(lifeExp)

# Sort in descending order of lifeExp
gapminder %>%
  arrange(desc(lifeExp))

gapminder %>%
  filter(year == 1957) %>%
  arrange(desc(pop))

# Use mutate to change lifeExp to be in months
gapminder %>% 
  mutate(lifeExp = lifeExp * 12)


# Use mutate to create a new column called lifeExpMonths
gapminder %>% 
  mutate(lifeExpMonths = lifeExp * 12)

gapminder %>%
  filter(year == 2007) %>%
  mutate(lifeExpMonths = lifeExp * 12) %>%
  arrange(desc(lifeExpMonths))

