<cfscript>
    myArr=listToArray("The,Quick,Brown,Fox,Jumps,Over,The,Lazy,Dog")
    writeDump(var="#myArr#",output="browser",format="text",label="WriteDump example")
    
    cp = ["Charlie", "Parker"]
    dg = ["Dexter", "Gordon"]
    jazzmen = [["Coleman","Charlie"],["Hawkins", "Parker"]]
    players=[cp,dg,jazzmen]
    writeDump(players)
    
    writeDump(REFindNoCase("[0-9][A-Z][a-z]+", "ColdFusion 123Cold 789Fusion!",1,true,"all"));
</cfscript>
