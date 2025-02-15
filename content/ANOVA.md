
anova(model.fit.1::lm, model.fit.2::lm, etc)

Analysis of variance between two modesl. 

The F statistic $p-$value tests 
$$H_0: \beta_{\text{big model}} \setminus \beta_{\text{small model}} = 0 $$

Basically testing if all of the **extra** parameters in the big model are worth it. If our $p-$value is large, we may say that the are not (accept the null)