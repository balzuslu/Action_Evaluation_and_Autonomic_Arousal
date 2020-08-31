<!--
Feeling Bad About Being Wrong: Affective Evaluation of Performed Actions and its Trial-by-Trial Relation to Autonomic Arousal

Luisa Balzus, Julia Klawohn, and Norbert Kathmann
-->
---

**For our project page with analysis code and output for performed analyses please visit**
https://balzuslu.github.io/action_evaluation_and_autonomic_arousal

---



## Task

- Participants performed an affective priming task that comprised a speeded go/no-go task with an embedded word categorization task. Responses in the go/no-go task served as a primes, the subsequently presented affective words as targets. Response facilitation in the word categorization task when preceded by an action in the go/no-go task of the same assigned valence will be referred to as affective priming effect. We assessed participants' accuracy and response time (RT) in the go/no-go task and the word categorization task.<br><br>
- Go/no-go Task
	- A white arrow pointing upward or downward either turned
		- green and kept its initial orientation (2/3 of the trials; go trials)
		- turquoise and kept its orientation (1/6 of the trials; no-go trials), or
		- green but reversed its orientation (1/6 of the trials; no-go trials).<br><br>
	- Participants were instructed to respond to go trials, but not to no-go trials.<br><br>
	- Four response types in the go/no-go task were differentiated:
		- SH: slow hits (i.e., correct responses in go trials above the individual RT limit)
		- FH: fast hits (i.e., correct responses in go trials below the individual RT limit)
		- FA: false alarms (i.e., erroneous responses in no-go trials)
		- IR: inhibited responses (i.e., successful response inhibitions in no-go trials)<br><br>
- Word categorization task
	- After each go/no-go trial, an affective word was presented, which the participants were asked to categorize as either positive or negative.
	- We predicted that after false alarms in no-go trials, participants would respond faster and more accurately to negative words than to positive words. After fast hits in go trials, participants were expected to respond faster to positive words than to negative words (Aarts et al., 2012, 2013).<br><br>
- During the task, the skin conductance response (SCR) was recorded.
	- For statistical analyses, the integrated SCR (ISCR; Benedek & Kaernbach, 2010) was extracted within a time window from 1 to 4 s after the participant's response in the go/no-go task.
	- We predicted that SCR and affective priming effect (see above) might either be positively related on a trial-by-trial level, as they are both manifestations of the emotional significance of an action (Aarts et al., 2013; Hajcak et al., 2003), or that error-related arousal might interfere with action evaluation, as has been observed for trait anxiety (Aarts et al., 2012).<br><br>


## Design

- 4 x 2 design: go/no-go response type (SH, FH, FA, IR) and word valence (positive, negative) as within-participants factors<br><br>


## Data Description

- Data set: 'Single_Trial_Data.rda' 
- 15480 observations (30 participants, 516 trials per participant), 16 variables
- Analyses were conducted with R version 3.6.1 and R Studio version 1.2.5001<br><br>


| VARIABLE                                      	| DESCRIPTION                                                                                                                                           												| VALUES                                                                                                                                                                                        	|
|-----------------------------------------------	|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|
| participant_id                                    | Participant identifier                                                                                                                                												| 1 to 30                                                                                                                                                                                       	|
| trial                                         	| Trial number within the task                                                                                                                          												| 1 to 516 per participant                                                                                                                                                                      	|
| block                                         	| Experimental block                                                                                                                                    												| 1 to 9 per participant                                                                                                                                                                        	|
| gng_response_type                             	| Response type in the go/no-go task                                                                                                                    												| SH = slow hit <br> FH = fast hit <br> FA = false alarm <br> IR = inhibited response <br> miss = missing response in go trial <br> wrong_key = response made with a word categorization key    	|
| gng_rt                                        	| RT in the go/no-go task                                                                                                               											                	| RT in milliseconds <br> NAs for trials in which no response was made (IR, miss)                                                                                                               	|
| gng_rt_invalid                                	| Indication whether RT in the go/no-go task was < 100 ms or > 700 ms                                                                                   												| TRUE <br> FALSE <br> NAs for trials in which no response was made (IR, miss)                                                                                                                      |
| gng_rt_inverse                                	| Inverse-transformed RT in the go/no-go task                                                                                                           												| -1000/RT in milliseconds <br> NAs for trials in which no response was made (IR, miss)                                                                                                             |
| word                                          	| Affective word presented in the word categorization task                                                                                              												| 60 German words (30 positive, 30 negative) from the Berlin Affective Word List Reloaded (Vo et al., 2009)                                                                                     	|
| word_valence                                  	| Valence of the affective word                                                                                                                         												| pos = positive <br> neg = negative                                                                                                                                                            	|
| word_accuracy                                 	| Correctness of the word categorization                                                                                                               												 	| correct = correct categorization <br> incorrect = incorrect categorization <br> miss = missing response <br> wrong_key = response made with the go/no-go key                                  	|
| word_rt                                       	| RT in the word categorization task                                                                                                                    												| RT in milliseconds <br> NAs for trials in which no response was made (miss)                                                                                                             			|
| word_rt_outlier                               	| Indication whether RT in the word categorization task was > 3 median absolute deviations (MAD) above or below a participant's median RT per specific condition (gng_response_type x word_valence) 	| TRUE <br>  FALSE <br> NAs for trials in which no response was made (miss)                                                                                                                         |
| word_rt_inverse                               	| Inverse-transformed RT in the word categorization task                                                                                                	 											| -1000/RT in milliseconds <br> NAs for trials in which no response was made (miss)                                                                                                                 |
| iscr_gng_resp                                 	| Integrated SCR extracted within a time window from 1 to 4 s after the response in the go/no-go task                                                     											 	| ISCR in microsiemens                                                                                                                                                                          	|
| trial_followed_or_preceded_<br>by_any_incorr_resp | Indication whether trial was followed / preceded by any incorrect response in the go/no-go or the word categorization task                            												| TRUE <br> FALSE                                                                                                                                                                               	|


## References

Aarts, K., De Houwer, J., & Pourtois, G. (2012). Evidence for the automatic evaluation of self-generated actions. *Cognition, 124*(2), 117-127. https://doi.org/10.1016/j.cognition.2012.05.009 <br><br> 
Aarts, K., De Houwer, J., & Pourtois, G. (2013). Erroneous and correct actions have a different affective valence: Evidence from ERPs. *Emotion, 13*(5), 960-973. https://doi.org/10.1037/a0032808s <br><br>
Benedek, M., & Kaernbach, C. (2010). A continuous measure of phasic electrodermal activity. *Journal of Neuroscience Methods, 190*(1), 80-91. https://doi.org/10.1016/j.jneumeth.2010.04.028 <br><br>
Hajcak, G., McDonald, N., & Simons, R. F. (2003). To err is autonomic: Error-related brain potentials, ANS activity, and post-error compensatory behavior. *Psychophysiology, 40*(6), 895-903. https://doi.org/10.1111/1469-8986.00107 <br><br>
Vo, M. L., Conrad, M., Kuchinke, L., Urton, K., Hofmann, M. J., & Jacobs, A. M. (2009). The Berlin Affective Word List Reloaded (BAWL-R). *Behavior Research Methods, 41*(2), 534-538. https://doi.org/10.3758/BRM.41.2.534 	

