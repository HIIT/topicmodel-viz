# Explore the impact of k in your topicmodel

Allows one to change the `k` parameter and see different words in ones topic model.
Reflects the common practice of working with topicmodels, that is exploring and choosing the best k based on _theorethical_  insights.

# Running

1. Fix path to topicmodel dataset
1. `R -e "shiny::runApp('.')"`

## TODO

**First version only**

- [ ] remove hard coded stuff
- [x] add reactivity to UI to make it auto update
- [ ] reconsider visualization styles

## Acknowledgments

Code developed through support by [Kone Foundation](http://www.koneensaatio.fi/en/), project _Digital humanities of public policy making_.

Licensed with MIT license.
