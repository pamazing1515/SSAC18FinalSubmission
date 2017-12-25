# SSAC18FinalSubmission
Quantifying Defensive Sloppiness in the NBA- A project using applied linear regression to 2016-17 NBA play by play data in R/SAS
Quantifying Defensive Sloppiness in Basketball
I present the Basketball Defensive Sloppiness index, a newmethod to visualize and quantify Defensive Sloppinessin a game
time situation, to make data-driven player rotational decisions. There is lack of research, currently, that presents how teams
could utilize defensive statistics to evaluate a player’s defensive sloppiness, and eventuallymake teamdecisions that will
determine the outcome of basketball games.
Defensive Sloppiness is defined asthe lack of execution by a team, while the team does not have possession of the ball. Of all
the defensive factors in a basketballgame, there are three factors that are indicated by the ANOVA test that have significant
correlationsto whether a team won the game: blocks, steals and personal fouls.
The generated model assigned respective weights to each of the three factors which creates the BasketballDefensive
Sloppiness Index, using play by play data aggregated from the 2016-2017 NBA season (All three factors were checked with
Pearson correlation test formulticollinearity and residual normality). The generated model creates an index from 0 to 1, 1 being
the most defensively sloppy and 0 being the least defensively sloppy.
Game 5 of the 2016-2017 NBA Finals, is a close (+/- 5 point) game, where the Basketball Defensive Sloppiness Index can be
effectively used. In this game, Golden State was leading 98-95 after the end of the third quarter. To choose the optimal players
to play in the fourth quarter and maintain their lead, the Warriors’ coach must determine which of his players would be the
least defensively sloppy, and most accurate in their free throws. Therefore, Defensive Sloppiness Index is the control variable,
to reduce opportunities forthe Cavaliers to score and overcome and the Warriors’ lead. The Season Free Throw % for each
player will be the most effective dependent variable to visualize with Defensive Sloppiness Index in this scenario, because the
Cavaliers will try to slow down the pace of the game by fouling the Warriors, which would lead to free throw opportunities for
the Warriors (See Figure 1).
On the plot shown below, the players who are least defensive sloppy and most likely to score free throws when they are on
offense, are indicated in the upper right corner. This visualization of the Basketball Defensive Sloppiness Index helps the Golden
State coach choose which player to put in during this critical part of the game, to increase the Warriors’ probability to win.
While this example uses FT% (Free Throw) as the dependent variable, this variable can be interchangeable with any other
variable such as, FG%(Field Goal), PPG (Average Points Per Game), depending on the circumstances of the game that the coach
wants to decide on.
In conclusion, the Basketball Defensive Sloppiness can provide a much more sophisticated, yet interpretable lens into basketball
player-tracking data, to better manage risks in each basketball game, and eventually financially impact the team franchise.
