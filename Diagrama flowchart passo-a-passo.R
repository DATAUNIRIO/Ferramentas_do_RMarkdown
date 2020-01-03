
library(DiagrammeR)

grViz("digraph flowchart {
  # node definitions with substituted label text
  node [fontname = Helvetica, shape = rectangle, fillcolor = yellow]        
  tab1 [label = 'Step 1: Propose a distribution for the response variable \n Choose a maximum entropy distribution given the constraints you understand']
  tab2 [label = 'Step 2: Parameterize the mean \n The mean of the response distribution will vary linearly across the range of predictor values']
  tab3 [label = 'Step 3: Set priors \n Simulate what the model knows before seeing the data.  Use domain knowledge as constraints.']
  tab4 [label = 'Step 4: Define the model \n Create the model using the observed data, the likelihood function, and the priors']
  tab5 [label = 'Step 5: Draw from the posterior \n Plot plausible lines using parameters visited by the Markov chains']
  tab6 [label = 'Step 6: Push the parameters back through the model \n Simulate real data from plausible combinations of mean and sigma']
  # edge definitions with the node IDs
  tab1 -> tab2 -> tab3 -> tab4 -> tab5 -> tab6;
  }
")