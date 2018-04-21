//
//  Words.swift
//  Arabic
//
//  Created by Zhang Bozheng on 21/6/16.
//  Copyright © 2016 Zhang Bozheng. All rights reserved.
//

import Foundation

class Words {
    
    var nounsArabic = [String]();
    var nounsEnglish = [String]();
    
    func initNounsArabic(){
        
        for(var c = 0; c < Settings.noOfNouns; c += 1){
            nounsArabic.append("");
        }
        
        nounsArabic[0] = "مِنطَقَة";
        nounsArabic[1] = "تَحْذِير"
        nounsArabic[2] = "تِجَارَة"
        nounsArabic[3] = "مُؤَسَّسَة"
        nounsArabic[4] = "مُرَاجَعَة";
        nounsArabic[5] = "دَلِيل"
        nounsArabic[6] = "وِكَالَة"
        nounsArabic[7] = "سَرَطَان"
        nounsArabic[8] = "قَهوَة"
        nounsArabic[9] = "حَيَوَانَات"
        nounsArabic[10] = "تَهْجِين";
        nounsArabic[11] = "نَحل"
        nounsArabic[12] = "أَمْرَاض"
        nounsArabic[13] = "مُقَاوَمَة"
        nounsArabic[14] = "فَضَاء";
        nounsArabic[15] = "طُرُق"
        nounsArabic[16] = "مَحَطَّة"
        nounsArabic[17] = "شَعْر"
        nounsArabic[18] = "مَعِيشَة"
        nounsArabic[19] = "حَيَاة"
        nounsArabic[20] = "أَخْبَار";
        nounsArabic[21] = "رِيَاضَة"
        nounsArabic[22] = "فُنُون"
        nounsArabic[23] = "شِعْر"
        nounsArabic[24] = "اِقتِصَاد";
        nounsArabic[25] = "صِحَّة"
        nounsArabic[26] = "تَمْرِين"
        nounsArabic[27] = "يَوْم"
        nounsArabic[28] = "أُسْبُوع"
        nounsArabic[29] = "مُجْتَمَع"
        nounsArabic[30] = "مَوَارِد";
        nounsArabic[31] = "مَوْرِد"
        nounsArabic[32] = "أُسْلُوب"
        nounsArabic[33] = "أَسَالِيب"
        nounsArabic[34] = "تَعَلُّم";
        nounsArabic[35] = "طَعَام"
        nounsArabic[36] = "أَطفَال"
        nounsArabic[37] = "طِفل"
        nounsArabic[38] = "اسْتِثْمَار"
        nounsArabic[39] = "نَفْط"
        
    }
    
    func initNounsEnglish(){
        
        for(var c = 0; c < Settings.noOfNouns; c += 1){
            nounsEnglish.append("");
        }
        
        nounsEnglish[0] = "Area/Region";
        nounsEnglish[1] = "Warning"
        nounsEnglish[2] = "Trade/Business"
        nounsEnglish[3] = "Establishment";
        nounsEnglish[4] = "Revision";
        nounsEnglish[5] = "Evidence"
        nounsEnglish[6] = "Agency"
        nounsEnglish[7] = "Cancer";
        nounsEnglish[8] = "Coffee";
        nounsEnglish[9] = "Animals"
        nounsEnglish[10] = "Breeding";
        nounsEnglish[11] = "Bee"
        nounsEnglish[12] = "Diseases"
        nounsEnglish[13] = "Resistance";
        nounsEnglish[14] = "Space";
        nounsEnglish[15] = "Ways/Methods"
        nounsEnglish[16] = "Station"
        nounsEnglish[17] = "Hair";
        nounsEnglish[18] = "Household";
        nounsEnglish[19] = "Life"
        nounsEnglish[20] = "News";
        nounsEnglish[21] = "Sport"
        nounsEnglish[22] = "Arts"
        nounsEnglish[23] = "Poetry";
        nounsEnglish[24] = "Economy";
        nounsEnglish[25] = "Health"
        nounsEnglish[26] = "Exercise/Training"
        nounsEnglish[27] = "Day";
        nounsEnglish[28] = "Week";
        nounsEnglish[29] = "Community"
        nounsEnglish[30] = "Resources";
        nounsEnglish[31] = "Resource"
        nounsEnglish[32] = "Style"
        nounsEnglish[33] = "Styles";
        nounsEnglish[34] = "Learning";
        nounsEnglish[35] = "Food"
        nounsEnglish[36] = "Children"
        nounsEnglish[37] = "Child";
        nounsEnglish[38] = "Investment";
        nounsEnglish[39] = "Petroleum"
        
    }
    
    var verbsArabic = [String]();
    var verbsEnglish = [String]();
    
    func initVerbsArabic(){
        
        for(var c = 0; c < Settings.noOfVerbs; c += 1){
            verbsArabic.append("");
        }
        
        verbsArabic[0] = "أَحَبَّ";
        verbsArabic[1] = "يُحِبُّ"
        verbsArabic[2] = "سَأَلَ"
        verbsArabic[3] = "يَسأَلُ"
        verbsArabic[4] = "أَخَذَ";
        verbsArabic[5] = "يَأخُذُ"
        verbsArabic[6] = "حَمَلَ"
        verbsArabic[7] = "يَحمِلُ"
        verbsArabic[8] = "اِستَخدَمَ"
        verbsArabic[9] = "يَستَخدِمُ"
        verbsArabic[10] = "فَعَلَ";
        verbsArabic[11] = "يَفْعَل"
        verbsArabic[12] = "عَمَدَ"
        verbsArabic[13] = "يَعْمِد"
        verbsArabic[14] = "قَالَ";
        verbsArabic[15] = "يَقُول"
        verbsArabic[16] = "ذَهَبَ"
        verbsArabic[17] = "يَذْهَب"
        verbsArabic[18] = "صَنَعَ"
        verbsArabic[19] = "يَصْنَع"
        verbsArabic[20] = "عَرَفَ، عَلِمَ";
        verbsArabic[21] = "يَعْرِف، يَعْلَم"
        verbsArabic[22] = "تَعَرَّفَ"
        verbsArabic[23] = "يَتَعَرَّف"
        verbsArabic[24] = "فَكَّرَ";
        verbsArabic[25] = "يُفَكِّر"
        verbsArabic[26] = "رَأَى"
        verbsArabic[27] = "يَرَى"
        verbsArabic[28] = "أَتَى"
        verbsArabic[29] = "يَأْتِي"
        verbsArabic[30] = "أَرَادَ";
        verbsArabic[31] = "يُرِيد"
        verbsArabic[32] = "بَحَثَ"
        verbsArabic[33] = "يَبْحَث"
        verbsArabic[34] = "أَعْطَى";
        verbsArabic[35] = "يُعْطِى"
        verbsArabic[36] = "عَمِلَ"
        verbsArabic[37] = "يَعْمَل"
        verbsArabic[38] = "اِتَّصَلَ"
        verbsArabic[39] = "يَتَّصِل"
        
    }
    
    func initVerbsEnglish(){
        
        for(var c = 0; c < Settings.noOfVerbs; c += 1){
            verbsEnglish.append("");
        }
        
        verbsEnglish[0] = "Loved";
        verbsEnglish[1] = "To love"
        verbsEnglish[2] = "Asked"
        verbsEnglish[3] = "To ask";
        verbsEnglish[4] = "Took";
        verbsEnglish[5] = "To take"
        verbsEnglish[6] = "Carried"
        verbsEnglish[7] = "To carry";
        verbsEnglish[8] = "Used";
        verbsEnglish[9] = "To use"
        verbsEnglish[10] = "Did";
        verbsEnglish[11] = "To do"
        verbsEnglish[12] = "Did delibrately"
        verbsEnglish[13] = "To do delibrately";
        verbsEnglish[14] = "Said/Told";
        verbsEnglish[15] = "To say/tell"
        verbsEnglish[16] = "Went"
        verbsEnglish[17] = "To go";
        verbsEnglish[18] = "Made(something)";
        verbsEnglish[19] = "To make(something)"
        verbsEnglish[20] = "Knew";
        verbsEnglish[21] = "To know"
        verbsEnglish[22] = "Got to know(someone)"
        verbsEnglish[23] = "To get to know(someone)";
        verbsEnglish[24] = "Thought";
        verbsEnglish[25] = "To think"
        verbsEnglish[26] = "Saw"
        verbsEnglish[27] = "To see";
        verbsEnglish[28] = "Came";
        verbsEnglish[29] = "To come"
        verbsEnglish[30] = "Wanted";
        verbsEnglish[31] = "To want"
        verbsEnglish[32] = "Searched"
        verbsEnglish[33] = "To search";
        verbsEnglish[34] = "Gave";
        verbsEnglish[35] = "To give"
        verbsEnglish[36] = "Worked"
        verbsEnglish[37] = "To work";
        verbsEnglish[38] = "Called/Contacted";
        verbsEnglish[39] = "To call/contact"
        
    }
    
    var adjsArabic = [String]();
    var adjsEnglish = [String]();
    
    func initAdjsArabic(){
        
        for(var c = 0; c < Settings.noOfAdjs; c += 1){
            adjsArabic.append("");
        }
        
        adjsArabic[0] = "مُتعِب";
        adjsArabic[1] = "مُرتَفِع"
        adjsArabic[2] = "مُنخَفِض"
        adjsArabic[3] = "كَثِير"
        adjsArabic[4] = "قَلِيل";
        adjsArabic[5] = "غَالِي"
        adjsArabic[6] = "رَخِيص"
        adjsArabic[7] = "رَشِيق"
        adjsArabic[8] = "رَقِيق"
        adjsArabic[9] = "فَرِيد"
        adjsArabic[10] = "مُخْتَلِف";
        adjsArabic[11] = "مُهِمّ"
        adjsArabic[12] = "مَوْجُود"
        adjsArabic[13] = "شَهِير، مَشْهُور"
        adjsArabic[14] = "سَهْل";
        adjsArabic[15] = "أَعقَد"
        adjsArabic[16] = "مُتَّحِد"
        adjsArabic[17] = "جَمِيل"
        adjsArabic[18] = "وَحِيد"
        adjsArabic[19] = "سَمِين"
        adjsArabic[20] = "نَحِيف";
        adjsArabic[21] = "قَرِيب"
        adjsArabic[22] = "بَعِيد"
        adjsArabic[23] = "سَعِيد"
        adjsArabic[24] = "خَائِف";
        adjsArabic[25] = "حَزِين"
        adjsArabic[26] = "عَاتِفِيّ"
        adjsArabic[27] = "مُتَوَتِّر"
        adjsArabic[28] = "مُتَضَايِق"
        adjsArabic[29] = "غَاضِب"
        adjsArabic[30] = "خَجُول";
        adjsArabic[31] = "مُمِلّ"
        adjsArabic[32] = "مُمتِع"
        adjsArabic[33] = "مُثِير"
        adjsArabic[34] = "مُضحِك";
        adjsArabic[35] = "حَكِيم"
        adjsArabic[36] = "طَوِيل"
        adjsArabic[37] = "قَصِير"
        adjsArabic[38] = "قَوِي"
        adjsArabic[39] = "ضَعِيف"
        
    }
    
    func initAdjsEnglish(){
        
        for(var c = 0; c < Settings.noOfAdjs; c += 1){
            adjsEnglish.append("");
        }
        
        adjsEnglish[0] = "Tired";
        adjsEnglish[1] = "High"
        adjsEnglish[2] = "Low"
        adjsEnglish[3] = "Many";
        adjsEnglish[4] = "Few";
        adjsEnglish[5] = "Expensive"
        adjsEnglish[6] = "Cheap"
        adjsEnglish[7] = "Graceful";
        adjsEnglish[8] = "Delicate";
        adjsEnglish[9] = "Unique"
        adjsEnglish[10] = "Different";
        adjsEnglish[11] = "Important"
        adjsEnglish[12] = "Existent"
        adjsEnglish[13] = "Famous";
        adjsEnglish[14] = "Easy";
        adjsEnglish[15] = "Difficult"
        adjsEnglish[16] = "United"
        adjsEnglish[17] = "Beautiful";
        adjsEnglish[18] = "Lonely";
        adjsEnglish[19] = "Fat"
        adjsEnglish[20] = "Slim";
        adjsEnglish[21] = "Near"
        adjsEnglish[22] = "Far"
        adjsEnglish[23] = "Happy";
        adjsEnglish[24] = "Afraid/Scared";
        adjsEnglish[25] = "Sad"
        adjsEnglish[26] = "Sentimental"
        adjsEnglish[27] = "Tense/Nervous";
        adjsEnglish[28] = "Annoyed";
        adjsEnglish[29] = "Angry"
        adjsEnglish[30] = "Shy";
        adjsEnglish[31] = "Boring"
        adjsEnglish[32] = "Interesting"
        adjsEnglish[33] = "Exciting";
        adjsEnglish[34] = "Funny";
        adjsEnglish[35] = "Wise"
        adjsEnglish[36] = "Tall/Long"
        adjsEnglish[37] = "Short";
        adjsEnglish[38] = "Powerful/Strong";
        adjsEnglish[39] = "Weak"
        
    }
    
    var advsArabic = [String]();
    var advsEnglish = [String]();
    
    func initAdvsArabic(){
        
        for(var c = 0; c < Settings.noOfAdvs; c += 1){
            advsArabic.append("");
        }
        
        advsArabic[0] = "شَرق";
        advsArabic[1] = "غَرب"
        advsArabic[2] = "شَمَال"
        advsArabic[3] = "جَنُوب"
        advsArabic[4] = "يَمِين";
        advsArabic[5] = "يَسَار"
        advsArabic[6] = "فَوقَ"
        advsArabic[7] = "تَحتَ"
        advsArabic[8] = "أَمَامَ"
        advsArabic[9] = "وَرَاء"
        
    }
    
    func initAdvsEnglish(){
        
        for(var c = 0; c < Settings.noOfAdvs; c += 1){
            advsEnglish.append("");
        }
        
        advsEnglish[0] = "East";
        advsEnglish[1] = "West"
        advsEnglish[2] = "North"
        advsEnglish[3] = "South";
        advsEnglish[4] = "Right";
        advsEnglish[5] = "Left"
        advsEnglish[6] = "Above"
        advsEnglish[7] = "Below";
        advsEnglish[8] = "In front";
        advsEnglish[9] = "Behind"
        
    }
    
}
