//Change glass panes to be 6 glass to 6 panes instead of 6 -> 16 so that they can have an emc value

recipes.removeByRecipeName("enderio:compatibility_glass_pane");

recipes.removeByRegex("minecraft:.*glass_pane");


recipes.addShaped("CTGlassPane", <minecraft:glass_pane> * 6, [[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>], [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>]]);

recipes.addShaped("CTGlassPaneWhite", <minecraft:stained_glass_pane> * 6, [[<ore:blockGlassWhite>, <ore:blockGlassWhite>, <ore:blockGlassWhite>], [<ore:blockGlassWhite>, <ore:blockGlassWhite>, <ore:blockGlassWhite>]]);
recipes.addShaped("CTGlassPaneOrange", <minecraft:stained_glass_pane:1> * 6, [[<ore:blockGlassOrange>, <ore:blockGlassOrange>, <ore:blockGlassOrange>], [<ore:blockGlassOrange>, <ore:blockGlassOrange>, <ore:blockGlassOrange>]]);
recipes.addShaped("CTGlassPaneMagenta", <minecraft:stained_glass_pane:2> * 6, [[<ore:blockGlassMagenta>, <ore:blockGlassMagenta>, <ore:blockGlassMagenta>], [<ore:blockGlassMagenta>, <ore:blockGlassMagenta>, <ore:blockGlassMagenta>]]);
recipes.addShaped("CTGlassPaneLightBlue", <minecraft:stained_glass_pane:3> * 6, [[<ore:blockGlassLightBlue>, <ore:blockGlassLightBlue>, <ore:blockGlassLightBlue>], [<ore:blockGlassLightBlue>, <ore:blockGlassLightBlue>, <ore:blockGlassLightBlue>]]);
recipes.addShaped("CTGlassPaneYellow", <minecraft:stained_glass_pane:4> * 6, [[<ore:blockGlassYellow>, <ore:blockGlassYellow>, <ore:blockGlassYellow>], [<ore:blockGlassYellow>, <ore:blockGlassYellow>, <ore:blockGlassYellow>]]);
recipes.addShaped("CTGlassPaneLime", <minecraft:stained_glass_pane:5> * 6, [[<ore:blockGlassLime>, <ore:blockGlassLime>, <ore:blockGlassLime>], [<ore:blockGlassLime>, <ore:blockGlassLime>, <ore:blockGlassLime>]]);
recipes.addShaped("CTGlassPanePink", <minecraft:stained_glass_pane:6> * 6, [[<ore:blockGlassPink>, <ore:blockGlassPink>, <ore:blockGlassPink>], [<ore:blockGlassPink>, <ore:blockGlassPink>, <ore:blockGlassPink>]]);
recipes.addShaped("CTGlassPaneGray", <minecraft:stained_glass_pane:7> * 6, [[<ore:blockGlassGray>, <ore:blockGlassGray>, <ore:blockGlassGray>], [<ore:blockGlassGray>, <ore:blockGlassGray>, <ore:blockGlassGray>]]);
recipes.addShaped("CTGlassPaneLightGray", <minecraft:stained_glass_pane:8> * 6, [[<ore:blockGlassLightGray>, <ore:blockGlassLightGray>, <ore:blockGlassLightGray>], [<ore:blockGlassLightGray>, <ore:blockGlassLightGray>, <ore:blockGlassLightGray>]]);
recipes.addShaped("CTGlassPaneCyan", <minecraft:stained_glass_pane:9> * 6, [[<ore:blockGlassCyan>, <ore:blockGlassCyan>, <ore:blockGlassCyan>], [<ore:blockGlassCyan>, <ore:blockGlassCyan>, <ore:blockGlassCyan>]]);
recipes.addShaped("CTGlassPanePurple", <minecraft:stained_glass_pane:10> * 6, [[<ore:blockGlassPurple>, <ore:blockGlassPurple>, <ore:blockGlassPurple>], [<ore:blockGlassPurple>, <ore:blockGlassPurple>, <ore:blockGlassPurple>]]);
recipes.addShaped("CTGlassPaneBlue", <minecraft:stained_glass_pane:11> * 6, [[<ore:blockGlassBlue>, <ore:blockGlassBlue>, <ore:blockGlassBlue>], [<ore:blockGlassBlue>, <ore:blockGlassBlue>, <ore:blockGlassBlue>]]);
recipes.addShaped("CTGlassPaneBrown", <minecraft:stained_glass_pane:12> * 6, [[<ore:blockGlassBrown>, <ore:blockGlassBrown>, <ore:blockGlassBrown>], [<ore:blockGlassBrown>, <ore:blockGlassBrown>, <ore:blockGlassBrown>]]);
recipes.addShaped("CTGlassPaneGreen", <minecraft:stained_glass_pane:13> * 6, [[<ore:blockGlassGreen>, <ore:blockGlassGreen>, <ore:blockGlassGreen>], [<ore:blockGlassGreen>, <ore:blockGlassGreen>, <ore:blockGlassGreen>]]);
recipes.addShaped("CTGlassPaneRed", <minecraft:stained_glass_pane:14> * 6, [[<ore:blockGlassRed>, <ore:blockGlassRed>, <ore:blockGlassRed>], [<ore:blockGlassRed>, <ore:blockGlassRed>, <ore:blockGlassRed>]]);
recipes.addShaped("CTGlassPaneBlack", <minecraft:stained_glass_pane:15> * 6, [[<ore:blockGlassBlack>, <ore:blockGlassBlack>, <ore:blockGlassBlack>], [<ore:blockGlassBlack>, <ore:blockGlassBlack>, <ore:blockGlassBlack>]]);