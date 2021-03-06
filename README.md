# Mine Arrangements of Promoter Motifs that Determines Gene Expression with **Decision Tree** Algorithm

The distribution characteristics of the promoter motifs correspond to one of two
types of expression (0 for no/1 for yes). It can be regarded as a
classification problem. In classification analysis, decision trees are one of
the most popular classification models for giving explicit classification rules.
A binomial-patterned decision tree is generated by cyclically classifying the
training data set consisting of the test variable (e.g., the distribution
characteristic of the promoter motifs) and the target variable (e.g., the
expression status of the corresponding gene, 0 or 1).

All possible candidate factors—e.g., the location of the first motif, the
difference in distance between subsequent motifs, the mean of the differences,
the standard deviation of the differences—that may affect the gene expression
status are employed as branch nodes, while gene expression results are used as
leaf nodes. Tree construction is processed by using the *Classification and
Regression Tree* algorithm. The resultant tree reflects the effect of different
candidate factors on gene expression. The closer to the root node of a branch
node, the higher the priority of the corresponding factor affecting gene
expression. For example, in the decision tree (see the **Figure)** the weight of
S1 is higher than S2 and S5, and S2 and S5 are higher than S3. Therefore,
observing the structure of the constructed tree, we can get the weight of
different candidate factors, and then draw conclusions.
![image](https://github.com/gaskinwang/Decision-Tree/blob/master/Decision%20tree/Schematic%20diagram.png)

It shoud be noted that the accuracy is only fitting accuracy. However, because
of the high accuracy, the results are also meaningful.

>   Run *classification_ooi.m* or *classification2_2vars.m* to construct trees
>   using **data.xlsx** as input
